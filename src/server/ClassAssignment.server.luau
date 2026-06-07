-- ClassAssignment.server.luau
-- Stand-in for the eventual class roll/selection system: assigns every
-- player a Class attribute on join so ability kits and cosmetics know
-- what to load. Change TESTING_CLASS to pick which class you spawn in as.

print("ClassAssignment server started!")

local Players = game:GetService("Players")

local TESTING_CLASS = "Ranger"

local function onPlayerAdded(player)
	player:SetAttribute("Class", TESTING_CLASS)
end

Players.PlayerAdded:Connect(onPlayerAdded)

for _, player in ipairs(Players:GetPlayers()) do
	onPlayerAdded(player)
end
