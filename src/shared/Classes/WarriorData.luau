-- Warrior.luau
-- A tanky melee fighter class

local Warrior = {
    Name = "Warrior",
    Description = "A powerful melee fighter with high health.",
    Rarity = "Common",

    -- Weapon
    Weapon = {
        Name = "Broadsword",
        Type = "Melee",
        Range = 6,
        AttackSpeed = 0.8,
    },

    -- Base stats
    Stats = {
        Health = 200,
        Speed = 14,
        Damage = 25,
        Armor = 20,
    },

    -- Attributes you can gain each round, organized by rarity
    Attributes = {
        Common = {
            { Name = "Toughness",    Description = "Gain 10 armor",         Armor = 10 },
            { Name = "Brute Force",  Description = "Gain 5 damage",         Damage = 5 },
        },
        Uncommon = {
            { Name = "War Cry",      Description = "Gain 15 damage",        Damage = 15 },
            { Name = "Iron Skin",    Description = "Gain 25 armor",         Armor = 25 },
        },
        Rare = {
            { Name = "Berserker",    Description = "Gain 30 damage",        Damage = 30 },
            { Name = "Fortress",     Description = "Gain 50 armor",         Armor = 50 },
        },
        Epic = {
            { Name = "Warlord",      Description = "Gain 50 damage and 30 armor", Damage = 50, Armor = 30 },
        },
        Legendary = {
            { Name = "Undying Rage", Description = "Gain 75 damage and 75 armor", Damage = 75, Armor = 75 },
        },
    }
}

return Warrior