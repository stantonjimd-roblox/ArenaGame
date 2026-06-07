-- WarriorAbilities.client.luau
-- Handles input for Warrior abilities

print("WarriorAbilities client started!")

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer

-- Only activate this kit if the player is actually playing Warrior
local CLASS_NAME = "Warrior"
local assignedClass = player:GetAttribute("Class")
if assignedClass == nil then
	player:GetAttributeChangedSignal("Class"):Wait()
	assignedClass = player:GetAttribute("Class")
end
if assignedClass ~= CLASS_NAME then
	return
end

local mouse = player:GetMouse()
local CastingState = require(script.Parent.Parent.CastingState)

local remotes = ReplicatedStorage:WaitForChild("Remotes")
local whirlwindRemote = remotes:WaitForChild("WarriorWhirlwind")
local shieldSlamRemote = remotes:WaitForChild("WarriorShieldSlam")
local warLeapRemote = remotes:WaitForChild("WarriorWarLeap")

-- Cooldown tracking
local cooldowns = {
	Whirlwind = false,
	ShieldSlam = false,
	WarLeap = false,
}

local function getMouseTarget()
	local target = mouse.Target
	if not target then return nil end

	local character = target:FindFirstAncestorOfClass("Model")
	if not character then return nil end

	for _, otherPlayer in ipairs(Players:GetPlayers()) do
		if otherPlayer == player then continue end
		if otherPlayer.Character == character then
			return otherPlayer
		end
	end

	return nil
end

local function useWhirlwind()
	if cooldowns.Whirlwind then return end
	cooldowns.Whirlwind = true
	CastingState.IsCasting = true

	print("Using Whirlwind!")
	whirlwindRemote:FireServer()

	task.delay(2, function()
		CastingState.IsCasting = false
	end)

	task.delay(6, function()
		cooldowns.Whirlwind = false
		print("Whirlwind ready!")
	end)
end

local function useShieldSlam()
	if cooldowns.ShieldSlam then return end

	local target = getMouseTarget()
	if not target then
		print("No target selected for Shield Slam!")
		return
	end

	cooldowns.ShieldSlam = true
	CastingState.IsCasting = true
	print("Using Shield Slam on " .. target.Name)
	shieldSlamRemote:FireServer(target)

	task.delay(0.2, function()
		CastingState.IsCasting = false
	end)

	task.delay(8, function()
		cooldowns.ShieldSlam = false
		print("Shield Slam ready!")
	end)
end

local function useWarLeap()
	if cooldowns.WarLeap then return end

	local character = player.Character
	if not character then return end
	local rootPart = character:FindFirstChild("HumanoidRootPart")
	if not rootPart then return end

	local targetPosition = mouse.Hit.Position
	local direction = (targetPosition - rootPart.Position)
	local distance = direction.Magnitude
	local MAX_LEAP_RANGE = 67

	if distance > MAX_LEAP_RANGE then
		targetPosition = rootPart.Position + direction.Unit * MAX_LEAP_RANGE
	end

	cooldowns.WarLeap = true
	CastingState.IsCasting = true
	print("Using War Leap!")
	warLeapRemote:FireServer(targetPosition)

	task.delay(0.5, function()
		CastingState.IsCasting = false
	end)

	task.delay(10, function()
		cooldowns.WarLeap = false
		print("War Leap ready!")
	end)
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end

	if input.KeyCode == Enum.KeyCode.One then
		useWhirlwind()
	elseif input.KeyCode == Enum.KeyCode.Two then
		useShieldSlam()
	elseif input.KeyCode == Enum.KeyCode.Three then
		useWarLeap()
	end
end)