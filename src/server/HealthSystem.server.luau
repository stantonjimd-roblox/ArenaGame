-- HealthSystem.server.luau
-- Manages player health, damage, and death

print("HealthSystem started!")

local Players = game:GetService("Players")

local DEFAULT_HEALTH = 1000
local HEALTH_REGEN_RATE = 33        -- Health per second (set to 0 to disable completely)
local HEALTH_REGEN_DELAY = 5       -- Seconds after taking damage before regen starts

local function setupCharacter(character)
	local humanoid = character:WaitForChild("Humanoid")

	-- Set default health
	humanoid.MaxHealth = DEFAULT_HEALTH
	humanoid.Health = DEFAULT_HEALTH

	-- Disable Roblox's default health regen
	humanoid.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff

	-- Find and disable the default regen script Roblox adds
	local regenScript = character:FindFirstChild("Health")
	if regenScript then
		regenScript.Disabled = true
	end

	print(character.Name .. " health set to " .. DEFAULT_HEALTH)

	-- Custom regen system
	local lastDamageTime = 0

	-- Reset combat timer on taking damage
humanoid.HealthChanged:Connect(function(newHealth)
    if newHealth < humanoid.MaxHealth then
        lastDamageTime = tick()
    end
end)

-- Reset combat timer on dealing damage
humanoid.Touched:Connect(function(hit)
    local otherCharacter = hit:FindFirstAncestorOfClass("Model")
    if not otherCharacter then return end
    local otherHumanoid = otherCharacter:FindFirstChild("Humanoid")
    if otherHumanoid and otherCharacter ~= character then
        lastDamageTime = tick()
    end
end)

	-- Regen loop
	task.spawn(function()
		while humanoid and humanoid.Parent do
			task.wait(1)

			if HEALTH_REGEN_RATE <= 0 then continue end

			local timeSinceDamage = tick() - lastDamageTime
			if timeSinceDamage >= HEALTH_REGEN_DELAY then
				if humanoid.Health < humanoid.MaxHealth then
					humanoid.Health = math.min(humanoid.Health + HEALTH_REGEN_RATE, humanoid.MaxHealth)
				end
			end
		end
	end)

	-- Handle death
	humanoid.Died:Connect(function()
		print(character.Name .. " has died!")
	end)
end

local function onPlayerAdded(player)
	player.CharacterAdded:Connect(function(character)
		setupCharacter(character)
	end)

	if player.Character then
		setupCharacter(player.Character)
	end
end

Players.PlayerAdded:Connect(onPlayerAdded)

for _, player in ipairs(Players:GetPlayers()) do
	onPlayerAdded(player)
end