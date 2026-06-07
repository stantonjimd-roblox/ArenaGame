-- RemoteSetup.server.luau
-- Creates all remote events before anything else runs

print("RemoteSetup started!")

local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Create Remotes folder
local remotes = Instance.new("Folder")
remotes.Name = "Remotes"
remotes.Parent = ReplicatedStorage

-- Basic Attack
local basicAttack = Instance.new("RemoteEvent")
basicAttack.Name = "BasicAttack"
basicAttack.Parent = remotes

-- Warrior Abilities
local whirlwind = Instance.new("RemoteEvent")
whirlwind.Name = "WarriorWhirlwind"
whirlwind.Parent = remotes

local shieldSlam = Instance.new("RemoteEvent")
shieldSlam.Name = "WarriorShieldSlam"
shieldSlam.Parent = remotes

local warLeap = Instance.new("RemoteEvent")
warLeap.Name = "WarriorWarLeap"
warLeap.Parent = remotes

-- Ranger Abilities
local volley = Instance.new("RemoteEvent")
volley.Name = "RangerVolley"
volley.Parent = remotes

local conceal = Instance.new("RemoteEvent")
conceal.Name = "RangerConceal"
conceal.Parent = remotes

local vault = Instance.new("RemoteEvent")
vault.Name = "RangerVault"
vault.Parent = remotes

print("All remotes created!")