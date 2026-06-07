-- RangerAbilities.server.luau
-- Handles server side logic for Ranger abilities

print("RangerAbilities server started!")

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local CombatUtil = require(ReplicatedStorage.Shared.CombatUtil)

local remotes = ReplicatedStorage:WaitForChild("Remotes")
local volleyRemote = remotes:WaitForChild("RangerVolley")
local concealRemote = remotes:WaitForChild("RangerConceal")
local vaultRemote = remotes:WaitForChild("RangerVault")

-- Volley settings
local VOLLEY_DAMAGE = 20
local VOLLEY_ARROW_COUNT = 3
local VOLLEY_SPREAD_ANGLE = 30   -- Degrees, total width of the fan
local VOLLEY_RANGE = 40
local VOLLEY_HIT_WIDTH = 4       -- How close an enemy must be to an arrow's line to be hit

-- Conceal settings
local CONCEAL_ROLL_DISTANCE = 10
local CONCEAL_DURATION = 0.25
local CONCEAL_STEPS = 10

-- Vault settings
local VAULT_DAMAGE = 15
local VAULT_DASH_RANGE = 20
local VAULT_LAUNCH_DISTANCE = 25
local VAULT_DASH_DURATION = 0.15
local VAULT_LAUNCH_DURATION = 0.2
local VAULT_STEPS = 10

-- Returns true if `point` falls within `range` and `width` of a ray cast from `origin` toward `direction`
local function hitsLine(origin, direction, range, width, point)
	local toPoint = point - origin
	local forward = toPoint:Dot(direction)
	if forward < 0 or forward > range then return false end

	local closestPoint = origin + direction * forward
	local lateralDistance = (point - closestPoint).Magnitude
	return lateralDistance <= width
end

-- Volley: fire a fan of arrows toward the aim direction
volleyRemote.OnServerEvent:Connect(function(player, aimDirection)
	local character = player.Character
	if not character then return end

	local rootPart = character:FindFirstChild("HumanoidRootPart")
	if not rootPart then return end

	if typeof(aimDirection) ~= "Vector3" or aimDirection.Magnitude == 0 then return end
	aimDirection = aimDirection.Unit

	print(player.Name .. " used Volley!")

	local origin = rootPart.Position
	local halfSpread = math.rad(VOLLEY_SPREAD_ANGLE / 2)

	for i = 1, VOLLEY_ARROW_COUNT do
		local alpha = (VOLLEY_ARROW_COUNT == 1) and 0.5 or (i - 1) / (VOLLEY_ARROW_COUNT - 1)
		local angle = -halfSpread + (halfSpread * 2) * alpha
		local arrowDirection = CFrame.fromAxisAngle(Vector3.new(0, 1, 0), angle) * aimDirection

		for _, otherPlayer in ipairs(Players:GetPlayers()) do
			if otherPlayer == player then continue end

			local otherCharacter = otherPlayer.Character
			if not otherCharacter then continue end

			local otherRoot = otherCharacter:FindFirstChild("HumanoidRootPart")
			if not otherRoot then continue end

			if hitsLine(origin, arrowDirection, VOLLEY_RANGE, VOLLEY_HIT_WIDTH, otherRoot.Position) then
				if CombatUtil.DealDamage(otherCharacter, VOLLEY_DAMAGE) then
					print(player.Name .. " hit " .. otherPlayer.Name .. " with a Volley arrow for " .. VOLLEY_DAMAGE)
				end
			end
		end
	end
end)

-- Conceal: roll in a direction, briefly marking the player as dodging
concealRemote.OnServerEvent:Connect(function(player, rollDirection)
	local character = player.Character
	if not character then return end

	local rootPart = character:FindFirstChild("HumanoidRootPart")
	if not rootPart then return end

	if typeof(rollDirection) ~= "Vector3" or rollDirection.Magnitude == 0 then
		rollDirection = rootPart.CFrame.LookVector
	end
	rollDirection = Vector3.new(rollDirection.X, 0, rollDirection.Z).Unit

	print(player.Name .. " used Conceal!")

	-- CombatUtil.DealDamage checks this attribute and ignores hits while it's true
	character:SetAttribute("Dodging", true)
	task.delay(CONCEAL_DURATION, function()
		if character then
			character:SetAttribute("Dodging", false)
		end
	end)

	local startPosition = rootPart.Position
	local endPosition = startPosition + rollDirection * CONCEAL_ROLL_DISTANCE

	for i = 1, CONCEAL_STEPS do
		local alpha = i / CONCEAL_STEPS
		local newPosition = startPosition:Lerp(endPosition, alpha)
		rootPart.CFrame = CFrame.new(newPosition, newPosition + rootPart.CFrame.LookVector)
		task.wait(CONCEAL_DURATION / CONCEAL_STEPS)
	end
end)

-- Vault: dash to an enemy, kick them, then launch backward away from them
vaultRemote.OnServerEvent:Connect(function(player, targetPlayer)
	local character = player.Character
	if not character then return end

	local rootPart = character:FindFirstChild("HumanoidRootPart")
	if not rootPart then return end

	local targetCharacter = targetPlayer and targetPlayer.Character
	if not targetCharacter then return end

	local targetRoot = targetCharacter:FindFirstChild("HumanoidRootPart")
	if not targetRoot then return end

	local distance = (targetRoot.Position - rootPart.Position).Magnitude
	if distance > VAULT_DASH_RANGE then
		print(player.Name .. " Vault target out of range!")
		return
	end

	print(player.Name .. " used Vault on " .. targetPlayer.Name)

	-- Dash toward the target, stopping just short of them
	local towardTarget = (targetRoot.Position - rootPart.Position).Unit
	local dashPosition = targetRoot.Position - towardTarget * 4
	local dashStart = rootPart.Position

	for i = 1, VAULT_STEPS do
		local alpha = i / VAULT_STEPS
		local newPosition = dashStart:Lerp(dashPosition, alpha)
		rootPart.CFrame = CFrame.new(newPosition, targetRoot.Position)
		task.wait(VAULT_DASH_DURATION / VAULT_STEPS)
	end

	if CombatUtil.DealDamage(targetCharacter, VAULT_DAMAGE) then
		print(player.Name .. " kicked " .. targetPlayer.Name .. " for " .. VAULT_DAMAGE)
	end

	-- Launch backward, away from the target
	local awayFromTarget = (rootPart.Position - targetRoot.Position).Unit
	local launchStart = rootPart.Position
	local launchEnd = launchStart + awayFromTarget * VAULT_LAUNCH_DISTANCE

	for i = 1, VAULT_STEPS do
		local alpha = i / VAULT_STEPS
		local newPosition = launchStart:Lerp(launchEnd, alpha)
		rootPart.CFrame = CFrame.new(newPosition, newPosition + rootPart.CFrame.LookVector)
		task.wait(VAULT_LAUNCH_DURATION / VAULT_STEPS)
	end
end)
