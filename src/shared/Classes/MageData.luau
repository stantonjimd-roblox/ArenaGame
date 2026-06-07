-- Mage.luau
-- A high damage spell caster with low health

local Mage = {
    Name = "Mage",
    Description = "A powerful spell caster with devastating magic.",
    Rarity = "Uncommon",

    -- Weapon
    Weapon = {
        Name = "Magic Staff",
        Type = "Ranged",
        Range = 30,
        AttackSpeed = 1.2,
    },

    -- Base stats
    Stats = {
        Health = 120,
        Speed = 14,
        Damage = 45,
        Armor = 5,
    },

    Attributes = {
        Common = {
            { Name = "Mana Flow",     Description = "Gain 8 damage",          Damage = 8 },
            { Name = "Barrier",       Description = "Gain 8 armor",           Armor = 8 },
        },
        Uncommon = {
            { Name = "Arcane Surge",  Description = "Gain 20 damage",         Damage = 20 },
            { Name = "Frost Shell",   Description = "Gain 20 armor",          Armor = 20 },
        },
        Rare = {
            { Name = "Overload",      Description = "Gain 40 damage",         Damage = 40 },
            { Name = "Spell Shield",  Description = "Gain 35 armor",          Armor = 35 },
        },
        Epic = {
            { Name = "Archmage",      Description = "Gain 60 damage and 20 armor", Damage = 60, Armor = 20 },
        },
        Legendary = {
            { Name = "Cosmic Power",  Description = "Gain 100 damage and 30 armor", Damage = 100, Armor = 30 },
        },
    }
}

return Mage