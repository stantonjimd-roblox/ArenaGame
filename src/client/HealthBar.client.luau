-- HealthBar.client.luau
-- Displays local health bar on screen and floating health bars above all players

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- =====================
-- LOCAL HEALTH BAR (bottom of screen)
-- =====================

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "HealthBarGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Name = "HealthBarFrame"
frame.Size = UDim2.new(0, 300, 0, 30)
frame.Position = UDim2.new(0.5, -150, 1, -60)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 6)
corner.Parent = frame

local healthFill = Instance.new("Frame")
healthFill.Name = "HealthFill"
healthFill.Size = UDim2.new(1, 0, 1, 0)
healthFill.Position = UDim2.new(0, 0, 0, 0)
healthFill.BackgroundColor3 = Color3.fromRGB(80, 200, 80)
healthFill.BorderSizePixel = 0
healthFill.Parent = frame

local fillCorner = Instance.new("UICorner")
fillCorner.CornerRadius = UDim.new(0, 6)
fillCorner.Parent = healthFill

local healthText = Instance.new("TextLabel")
healthText.Name = "HealthText"
healthText.Size = UDim2.new(1, 0, 1, 0)
healthText.Position = UDim2.new(0, 0, 0, 0)
healthText.BackgroundTransparency = 1
healthText.TextColor3 = Color3.fromRGB(255, 255, 255)
healthText.TextStrokeTransparency = 0.5
healthText.Font = Enum.Font.GothamBold
healthText.TextSize = 14
healthText.Text = "1000 / 1000"
healthText.Parent = frame

-- =====================
-- FLOATING HEALTH BARS (above player heads)
-- =====================

local function createFloatingHealthBar(targetPlayer)
	local character = targetPlayer.Character or targetPlayer.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	local rootPart = character:WaitForChild("HumanoidRootPart")

	-- Create a BillboardGui above the player's head
	local billboard = Instance.new("BillboardGui")
	billboard.Name = "FloatingHealthBar"
	billboard.Size = UDim2.new(0, 120, 0, 24)
	billboard.StudsOffset = Vector3.new(0, 3.5, 0)
	billboard.AlwaysOnTop = false
	billboard.Parent = rootPart

	-- Background
	local bg = Instance.new("Frame")
	bg.Size = UDim2.new(1, 0, 1, 0)
	bg.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	bg.BorderSizePixel = 0
	bg.Parent = billboard

	local bgCorner = Instance.new("UICorner")
	bgCorner.CornerRadius = UDim.new(0, 4)
	bgCorner.Parent = bg

	-- Health fill
	local fill = Instance.new("Frame")
	fill.Name = "Fill"
	fill.Size = UDim2.new(1, 0, 1, 0)
	fill.BackgroundColor3 = Color3.fromRGB(80, 200, 80)
	fill.BorderSizePixel = 0
	fill.Parent = bg

	local fillCornerBill = Instance.new("UICorner")
	fillCornerBill.CornerRadius = UDim.new(0, 4)
	fillCornerBill.Parent = fill

	-- Player name and health text
	local nameText = Instance.new("TextLabel")
	nameText.Size = UDim2.new(1, 0, 1, 0)
	nameText.BackgroundTransparency = 1
	nameText.TextColor3 = Color3.fromRGB(255, 255, 255)
	nameText.TextStrokeTransparency = 0.5
	nameText.Font = Enum.Font.GothamBold
	nameText.TextSize = 11
	nameText.Text = targetPlayer.Name
	nameText.Parent = bg

	-- Determine bar color based on team
	-- For now enemies are red, teammates are green
	-- This will be updated when team system is added
	local isEnemy = targetPlayer ~= player
	local baseColor = isEnemy and Color3.fromRGB(200, 50, 50) or Color3.fromRGB(80, 200, 80)
	fill.BackgroundColor3 = baseColor

	-- Update loop
	RunService.Heartbeat:Connect(function()
		if not character or not character.Parent then return end
		if not humanoid or not humanoid.Parent then return end

		local current = math.floor(humanoid.Health)
		local max = math.floor(humanoid.MaxHealth)
		local percent = math.clamp(current / max, 0, 1)

		fill.Size = UDim2.new(percent, 0, 1, 0)
		nameText.Text = targetPlayer.Name .. "  " .. current .. "/" .. max
	end)

	-- Recreate bar if character respawns
	targetPlayer.CharacterAdded:Connect(function(newCharacter)
		billboard:Destroy()
		createFloatingHealthBar(targetPlayer)
	end)
end

-- Create floating bars for all current players except local player
for _, otherPlayer in ipairs(Players:GetPlayers()) do
	if otherPlayer ~= player then
		createFloatingHealthBar(otherPlayer)
	end
end

-- Create floating bar for new players joining
Players.PlayerAdded:Connect(function(newPlayer)
	if newPlayer ~= player then
		createFloatingHealthBar(newPlayer)
	end
end)

-- =====================
-- UPDATE LOCAL HEALTH BAR
-- =====================

RunService.Heartbeat:Connect(function()
	local character = player.Character
	if not character then return end

	local humanoid = character:FindFirstChild("Humanoid")
	if not humanoid then return end

	local current = math.floor(humanoid.Health)
	local max = math.floor(humanoid.MaxHealth)
	local percent = current / max

	healthFill.Size = UDim2.new(percent, 0, 1, 0)
	healthText.Text = current .. " / " .. max

	if percent > 0.6 then
		healthFill.BackgroundColor3 = Color3.fromRGB(80, 200, 80)
	elseif percent > 0.3 then
		healthFill.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
	else
		healthFill.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
	end
end)