-- WarriorAbilities.server.luau
-- Handles server side logic for Warrior abilities

print("WarriorAbilities server started!")

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local remotes = ReplicatedStorage:WaitForChild("Remotes")
local whirlwindRemote = remotes:WaitForChild("WarriorWhirlwind")
local shieldSlamRemote = remotes:WaitForChild("WarriorShieldSlam")
local warLeapRemote = remotes:WaitForChild("WarriorWarLeap")

-- Whirlwind settings
local WHIRLWIND_DAMAGE = 50
local WHIRLWIND_RADIUS = 20
local WHIRLWIND_DURATION = 2
local WHIRLWIND_TICK_RATE = 0.3

-- Shield Slam settings
local SHIELD_SLAM_DAMAGE = 40
local SHIELD_SLAM_STUN_DURATION = 1.5
local SHIELD_SLAM_RANGE = 45

-- War Leap settings
local WAR_LEAP_DAMAGE = 60
local WAR_LEAP_RADIUS = 15
local WAR_LEAP_DURATION = 0.5
local WAR_LEAP_STEPS = 20
local WAR_LEAP_PEAK_HEIGHT = 25   -- Visible arc height

-- Whirlwind
whirlwindRemote.OnServerEvent:Connect(function(player)
	local character = player.Character
	if not character then return end

	local rootPart = character:FindFirstChild("HumanoidRootPart")
	if not rootPart then return end

	print(player.Name .. " used Whirlwind!")

	local elapsed = 0
	while elapsed < WHIRLWIND_DURATION do
		task.wait(WHIRLWIND_TICK_RATE)
		elapsed = elapsed + WHIRLWIND_TICK_RATE

		if not rootPart or not rootPart.Parent then break end

		for _, otherPlayer in ipairs(Players:GetPlayers()) do
			if otherPlayer == player then continue end

			local otherCharacter = otherPlayer.Character
			if not otherCharacter then continue end

			local otherRoot = otherCharacter:FindFirstChild("HumanoidRootPart")
			if not otherRoot then continue end

			local distance = (otherRoot.Position - rootPart.Position).Magnitude

			if distance <= WHIRLWIND_RADIUS then
				local humanoid = otherCharacter:FindFirstChild("Humanoid")
				if humanoid then
					humanoid:TakeDamage(WHIRLWIND_DAMAGE)
					print(player.Name .. " hit " .. otherPlayer.Name .. " with Whirlwind for " .. WHIRLWIND_DAMAGE)
				end
			end
		end
	end
end)

-- Shield Slam
shieldSlamRemote.OnServerEvent:Connect(function(player, targetPlayer)
	local character = player.Character
	if not character then return end

	local rootPart = character:FindFirstChild("HumanoidRootPart")
	if not rootPart then return end

	local targetCharacter = targetPlayer and targetPlayer.Character
	if not targetCharacter then return end

	local targetRoot = targetCharacter:FindFirstChild("HumanoidRootPart")
	if not targetRoot then return end

	local distance = (targetRoot.Position - rootPart.Position).Magnitude
	if distance > SHIELD_SLAM_RANGE then
		print(player.Name .. " Shield Slam target out of range!")
		return
	end

	print(player.Name .. " used Shield Slam on " .. targetPlayer.Name)

	local direction = (targetRoot.Position - rootPart.Position).Unit
	local lungePosition = targetRoot.Position - direction * 3
	local LUNGE_DURATION = 0.2
	local LUNGE_STEPS = 10
	local startPosition = rootPart.Position

	for i = 1, LUNGE_STEPS do
		local alpha = i / LUNGE_STEPS
		local newPosition = startPosition:Lerp(lungePosition, alpha)
		rootPart.CFrame = CFrame.new(newPosition, targetRoot.Position)
		task.wait(LUNGE_DURATION / LUNGE_STEPS)
	end

	local humanoid = targetCharacter:FindFirstChild("Humanoid")
	if humanoid then
		humanoid:TakeDamage(SHIELD_SLAM_DAMAGE)
	end

	local targetHumanoid = targetCharacter:FindFirstChild("Humanoid")
	if targetHumanoid then
		targetHumanoid.WalkSpeed = 0
		targetHumanoid.JumpPower = 0
		print(targetPlayer.Name .. " is stunned for " .. SHIELD_SLAM_STUN_DURATION .. " seconds!")

		task.delay(SHIELD_SLAM_STUN_DURATION, function()
			if targetHumanoid and targetHumanoid.Parent then
				targetHumanoid.WalkSpeed = 16
				targetHumanoid.JumpPower = 50
				print(targetPlayer.Name .. " stun ended!")
			end
		end)
	end
end)

-- War Leap
warLeapRemote.OnServerEvent:Connect(function(player, targetPosition)
	local character = player.Character
	if not character then return end

	local rootPart = character:FindFirstChild("HumanoidRootPart")
	if not rootPart then return end

	print(player.Name .. " used War Leap!")

	local startPosition = rootPart.Position

	for i = 1, WAR_LEAP_STEPS do
		local alpha = i / WAR_LEAP_STEPS

		local flatPosition = Vector3.new(
			startPosition.X + (targetPosition.X - startPosition.X) * alpha,
			startPosition.Y,
			startPosition.Z + (targetPosition.Z - startPosition.Z) * alpha
		)

		local arcHeight = math.sin(alpha * math.pi) * WAR_LEAP_PEAK_HEIGHT

		rootPart.CFrame = CFrame.new(
			flatPosition.X,
			flatPosition.Y + arcHeight,
			flatPosition.Z
		)

		task.wait(WAR_LEAP_DURATION / WAR_LEAP_STEPS)
	end

	rootPart.CFrame = CFrame.new(targetPosition.X, startPosition.Y, targetPosition.Z)

	for _, otherPlayer in ipairs(Players:GetPlayers()) do
		if otherPlayer == player then continue end

		local otherCharacter = otherPlayer.Character
		if not otherCharacter then continue end

		local otherRoot = otherCharacter:FindFirstChild("HumanoidRootPart")
		if not otherRoot then continue end

		local distance = (otherRoot.Position - rootPart.Position).Magnitude

		if distance <= WAR_LEAP_RADIUS then
			local humanoid = otherCharacter:FindFirstChild("Humanoid")
			if humanoid then
				humanoid:TakeDamage(WAR_LEAP_DAMAGE)
				print(player.Name .. " hit " .. otherPlayer.Name .. " with War Leap for " .. WAR_LEAP_DAMAGE)
			end
		end
	end
end)