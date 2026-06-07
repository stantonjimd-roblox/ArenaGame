-- Pyromancer.luau
-- An AOE fire destruction mage who burns everything in sight

local Pyromancer = {
    Name = "Pyromancer",
    Description = "A master of fire who unleashes devastating flames on all who oppose them.",
    Rarity = "Rare",

    -- Weapon
    Weapon = {
        Name = "Fire Tome",
        Type = "Ranged",
        Range = 35,
        AttackSpeed = 1.1,
    },

    -- Base stats
    Stats = {
        Health = 130,
        Speed = 13,
        Damage = 55,
        Armor = 5,
        BurnDamage = 10,
    },

    Attributes = {
        Common = {
            { Name = "Kindle",         Description = "Gain 10 damage",                      Damage = 10 },
            { Name = "Smoldering",     Description = "Gain 5 burn damage",                  BurnDamage = 5 },
        },
        Uncommon = {
            { Name = "Flame Surge",    Description = "Gain 20 damage and 8 burn damage",    Damage = 20, BurnDamage = 8 },
            { Name = "Inferno",        Description = "Gain 25 damage",                      Damage = 25 },
        },
        Rare = {
            { Name = "Wildfire",       Description = "Gain 40 damage and 15 burn damage",   Damage = 40, BurnDamage = 15 },
            { Name = "Molten Core",    Description = "Gain 30 damage and 20 burn damage",   Damage = 30, BurnDamage = 20 },
        },
        Epic = {
            { Name = "Firestorm",      Description = "Gain 65 damage and 30 burn damage",   Damage = 65, BurnDamage = 30 },
        },
        Legendary = {
            { Name = "World Ender",    Description = "Gain 110 damage and 50 burn damage",  Damage = 110, BurnDamage = 50 },
        },
    }
}

return Pyromancer