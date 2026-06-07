-- PlayerMovement.luau
-- Handles WASD movement for top down camera
-- Movement direction is relative to the world, not the camera

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer

-- Settings
local MOVE_SPEED = 16           -- Base movement speed
local ROTATION_SPEED = 0.15    -- How fast the character rotates to face movement direction

local function getMovementDirection()
	local direction = Vector3.new(0, 0, 0)

	-- WASD input
	if UserInputService:IsKeyDown(Enum.KeyCode.W) then
		direction = direction + Vector3.new(0, 0, -1)
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.S) then
		direction = direction + Vector3.new(0, 0, 1)
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.A) then
		direction = direction + Vector3.new(-1, 0, 0)
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.D) then
		direction = direction + Vector3.new(1, 0, 0)
	end

	-- Normalize so diagonal movement isnt faster
	if direction.Magnitude > 0 then
		direction = direction.Unit
	end

	return direction
end

RunService.Heartbeat:Connect(function(deltaTime)
	local character = player.Character
	if not character then return end

	local humanoid = character:FindFirstChild("Humanoid")
	local rootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoid or not rootPart then return end

	local direction = getMovementDirection()

	-- Move the character
	humanoid:Move(direction, false)

	-- Rotate character to face movement direction
	if direction.Magnitude > 0 then
		local targetCFrame = CFrame.lookAt(rootPart.Position, rootPart.Position + direction)
		rootPart.CFrame = rootPart.CFrame:Lerp(targetCFrame, ROTATION_SPEED)
	end
end)