-- BasicAttack.server.luau
-- Receives attack requests from client and deals damage to nearby enemies

print("BasicAttack server started!")

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local CombatUtil = require(ReplicatedStorage.Shared.CombatUtil)

local remotes = ReplicatedStorage:WaitForChild("Remotes")
local attackRemote = remotes:WaitForChild("BasicAttack")

print("BasicAttack remote found on server!")

local ATTACK_DAMAGE =35
local ATTACK_RANGE = 10

attackRemote.OnServerEvent:Connect(function(player, hitPosition)
	local character = player.Character
	if not character then return end

	local rootPart = character:FindFirstChild("HumanoidRootPart")
	if not rootPart then return end

	for _, otherPlayer in ipairs(Players:GetPlayers()) do
		if otherPlayer == player then continue end

		local otherCharacter = otherPlayer.Character
		if not otherCharacter then continue end

		local otherRoot = otherCharacter:FindFirstChild("HumanoidRootPart")
		if not otherRoot then continue end

		local distance = (otherRoot.Position - rootPart.Position).Magnitude

		if distance <= ATTACK_RANGE then
			if CombatUtil.DealDamage(otherCharacter, ATTACK_DAMAGE) then
				print(player.Name .. " attacked " .. otherPlayer.Name .. " for " .. ATTACK_DAMAGE .. " damage!")
			else
				print(otherPlayer.Name .. " dodged the attack!")
			end
		end
	end
end)