-- WeaponAttachment.server.luau
-- Attaches cosmetic weapons to characters based on their class

print("WeaponAttachment server started!")

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function disablePhysics(model)
	for _, part in ipairs(model:GetDescendants()) do
		if part:IsA("BasePart") then
			part.Anchored = false
			part.CanCollide = false
			part.Massless = true
		end
	end
end

local function attachWarriorWeapons(character)
	local rightArm = character:FindFirstChild("Right Arm") or character:FindFirstChild("RightHand") or character:FindFirstChild("RightLowerArm")
	local leftArm = character:FindFirstChild("Left Arm") or character:FindFirstChild("LeftHand") or character:FindFirstChild("LeftLowerArm")

	if not rightArm or not leftArm then
		print("WARNING: Could not find arms on " .. character.Name)
		return
	end

	-- =====================
	-- SWORD
	-- =====================
	local swordTemplate = ReplicatedStorage:FindFirstChild("WarriorSword")
	if swordTemplate then
		local sword = swordTemplate:Clone()
		sword.Parent = character

		local handle = sword:FindFirstChild("Part")
		local blade = sword:FindFirstChildWhichIsA("MeshPart")

		if handle and blade then
			disablePhysics(sword)

			-- Weld blade to handle
			local bladeWeld = Instance.new("WeldConstraint")
			bladeWeld.Part0 = handle
			bladeWeld.Part1 = blade
			bladeWeld.Parent = handle

			-- Weld handle to right arm
			local weld = Instance.new("Motor6D")
			weld.Name = "SwordWeld"
			weld.Part0 = rightArm
			weld.Part1 = handle
			weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(90))
			weld.Parent = rightArm
		end

		print("Sword attached to " .. character.Name)
	else
		print("WARNING: WarriorSword not found in ReplicatedStorage!")
	end

	-- =====================
	-- SHIELD
	-- =====================
	local shieldTemplate = ReplicatedStorage:FindFirstChild("WarriorShield")
	if shieldTemplate then
		local shield = shieldTemplate:Clone()
		shield.Parent = character

		local primaryPart = shield:FindFirstChild("Shield Front") or shield.PrimaryPart or shield:FindFirstChildWhichIsA("MeshPart")

		if primaryPart then
			disablePhysics(shield)

			-- Weld all other shield parts to Shield Front
			for _, part in ipairs(shield:GetDescendants()) do
				if part:IsA("BasePart") and part ~= primaryPart then
					local partWeld = Instance.new("WeldConstraint")
					partWeld.Part0 = primaryPart
					partWeld.Part1 = part
					partWeld.Parent = primaryPart
				end
			end

			-- Weld shield to left arm
			local weld = Instance.new("Motor6D")
			weld.Name = "ShieldWeld"
			weld.Part0 = leftArm
			weld.Part1 = primaryPart
			weld.C0 = CFrame.new(0.5, 0, 0) * CFrame.Angles(0, math.rad(180), 0)
			weld.Parent = leftArm
		end

		print("Shield attached to " .. character.Name)
	else
		print("WARNING: WarriorShield not found in ReplicatedStorage!")
	end
end

local function onPlayerAdded(player)
	player.CharacterAdded:Connect(function(character)
		task.wait(0.1)
		attachWarriorWeapons(character)
	end)

	if player.Character then
		task.wait(0.1)
		attachWarriorWeapons(player.Character)
	end
end

Players.PlayerAdded:Connect(onPlayerAdded)

for _, player in ipairs(Players:GetPlayers()) do
	onPlayerAdded(player)
end