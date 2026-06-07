-- TopDownCamera.luau
-- Locks the camera above the player looking straight down

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

print("TopDownCamera script started!")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- Settings
local CAMERA_HEIGHT = 50
local CAMERA_TILT = 70

-- Wait for character to fully load before starting
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

print("Character found:", character.Name)
print("RootPart found:", rootPart.Name)

-- Force camera mode immediately
camera.CameraType = Enum.CameraType.Scriptable
print("Camera type set to Scriptable")

RunService.RenderStepped:Connect(function()
	character = player.Character
	if not character then return end

	rootPart = character:FindFirstChild("HumanoidRootPart")
	if not rootPart then return end

	camera.CameraType = Enum.CameraType.Scriptable

	local playerPosition = rootPart.Position
	local cameraOffset = Vector3.new(0, CAMERA_HEIGHT, CAMERA_HEIGHT / math.tan(math.rad(CAMERA_TILT)))
	local targetPosition = playerPosition + cameraOffset

	camera.CFrame = CFrame.new(targetPosition, playerPosition)
end)