-- RangerAbilities.client.luau
-- Handles input for Ranger abilities

print("RangerAbilities client started!")

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer

-- Only activate this kit if the player is actually playing Ranger
local CLASS_NAME = "Ranger"
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
local volleyRemote = remotes:WaitForChild("RangerVolley")
local concealRemote = remotes:WaitForChild("RangerConceal")
local vaultRemote = remotes:WaitForChild("RangerVault")

-- Cooldown tracking
local cooldowns = {
	Volley = false,
	Conceal = false,
	Vault = false,
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

local function useVolley()
	if cooldowns.Volley then return end

	local character = player.Character
	if not character then return end
	local rootPart = character:FindFirstChild("HumanoidRootPart")
	if not rootPart then return end

	local toMouse = mouse.Hit.Position - rootPart.Position
	local aimDirection = Vector3.new(toMouse.X, 0, toMouse.Z)
	if aimDirection.Magnitude == 0 then return end

	cooldowns.Volley = true
	CastingState.IsCasting = true
	print("Using Volley!")
	volleyRemote:FireServer(aimDirection.Unit)

	task.delay(0.3, function()
		CastingState.IsCasting = false
	end)

	task.delay(5, function()
		cooldowns.Volley = false
		print("Volley ready!")
	end)
end

local function useConceal()
	if cooldowns.Conceal then return end

	local character = player.Character
	if not character then return end
	local rootPart = character:FindFirstChild("HumanoidRootPart")
	if not rootPart then return end

	-- Roll in the direction the player is currently moving, or backward if standing still
	local velocity = rootPart.AssemblyLinearVelocity
	local rollDirection = Vector3.new(velocity.X, 0, velocity.Z)
	if rollDirection.Magnitude < 0.1 then
		rollDirection = -rootPart.CFrame.LookVector
	end

	cooldowns.Conceal = true
	CastingState.IsCasting = true
	print("Using Conceal!")
	concealRemote:FireServer(rollDirection.Unit)

	task.delay(0.25, function()
		CastingState.IsCasting = false
	end)

	task.delay(9, function()
		cooldowns.Conceal = false
		print("Conceal ready!")
	end)
end

local function useVault()
	if cooldowns.Vault then return end

	local target = getMouseTarget()
	if not target then
		print("No target selected for Vault!")
		return
	end

	cooldowns.Vault = true
	CastingState.IsCasting = true
	print("Using Vault on " .. target.Name)
	vaultRemote:FireServer(target)

	task.delay(0.35, function()
		CastingState.IsCasting = false
	end)

	task.delay(12, function()
		cooldowns.Vault = false
		print("Vault ready!")
	end)
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end

	if input.KeyCode == Enum.KeyCode.One then
		useVolley()
	elseif input.KeyCode == Enum.KeyCode.Two then
		useConceal()
	elseif input.KeyCode == Enum.KeyCode.Three then
		useVault()
	end
end)
