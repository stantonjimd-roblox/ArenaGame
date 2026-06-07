-- Ranger.luau
-- A steady ranged hunter who picks off enemies from a distance

local Ranger = {
    Name = "Ranger",
    Description = "A skilled hunter who dominates from long range.",
    Rarity = "Common",

    -- Weapon
    Weapon = {
        Name = "Longbow",
        Type = "Ranged",
        Range = 50,
        AttackSpeed = 1.0,
    },

    -- Base stats
    Stats = {
        Health = 140,
        Speed = 15,
        Damage = 30,
        Armor = 8,
    },

    Attributes = {
        Common = {
            { Name = "Eagle Eye",      Description = "Gain 10 damage",                 Damage = 10 },
            { Name = "Swift Feet",     Description = "Gain 8 speed",                   Speed = 8 },
        },
        Uncommon = {
            { Name = "Piercing Shot",  Description = "Gain 22 damage",                 Damage = 22 },
            { Name = "Hunters Mark",   Description = "Gain 15 damage and 8 speed",     Damage = 15, Speed = 8 },
        },
        Rare = {
            { Name = "Deadeye",        Description = "Gain 40 damage",                 Damage = 40 },
            { Name = "Phantom Steps",  Description = "Gain 20 damage and 15 speed",    Damage = 20, Speed = 15 },
        },
        Epic = {
            { Name = "Storm of Arrows", Description = "Gain 60 damage and 20 speed",   Damage = 60, Speed = 20 },
        },
        Legendary = {
            { Name = "Godshot",        Description = "Gain 100 damage and 35 speed",   Damage = 100, Speed = 35 },
        },
    }
}

return Ranger