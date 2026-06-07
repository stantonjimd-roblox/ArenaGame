-- BasicAttack.client.luau
print("BasicAttack client started!")

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local mouse = player:GetMouse()
local CastingState = require(script.Parent.CastingState)

print("Waiting for Remotes folder...")
local remotes = ReplicatedStorage:WaitForChild("Remotes", 10)
if not remotes then
	print("ERROR: Remotes folder not found after 10 seconds!")
	return
end
print("Remotes folder found!")

local attackRemote = remotes:WaitForChild("BasicAttack", 10)
if not attackRemote then
	print("ERROR: BasicAttack remote not found after 10 seconds!")
	return
end
print("BasicAttack remote found!")

local ATTACK_COOLDOWN = 0.5
local lastAttack = 0
local mouseHeld = false

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		mouseHeld = true
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		mouseHeld = false
	end
end)

RunService.Heartbeat:Connect(function()
	if not mouseHeld then return end
	if CastingState.IsCasting == true then
		print("Blocking attack - currently casting!")
		return
	end
	local now = tick()
	if now - lastAttack < ATTACK_COOLDOWN then return end
	lastAttack = now

	local hitPosition = mouse.Hit.Position
	print("Attacking at position:", hitPosition)
	attackRemote:FireServer(hitPosition)
end)