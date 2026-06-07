-- Paladin.luau
-- A holy tank who can absorb punishment and heal allies

local Paladin = {
    Name = "Paladin",
    Description = "A holy warrior who protects allies and smites enemies.",
    Rarity = "Uncommon",

    -- Weapon
    Weapon = {
        Name = "Holy Warhammer",
        Type = "Melee",
        Range = 6,
        AttackSpeed = 0.7,
    },

    -- Base stats
    Stats = {
        Health = 220,
        Speed = 12,
        Damage = 20,
        Armor = 30,
        HealPower = 15,
    },

    Attributes = {
        Common = {
            { Name = "Holy Light",     Description = "Gain 10 heal power",              HealPower = 10 },
            { Name = "Sacred Armor",   Description = "Gain 12 armor",                   Armor = 12 },
        },
        Uncommon = {
            { Name = "Divine Shield",  Description = "Gain 25 armor",                   Armor = 25 },
            { Name = "Blessed Hands",  Description = "Gain 20 heal power",              HealPower = 20 },
        },
        Rare = {
            { Name = "Consecration",   Description = "Gain 30 armor and 20 heal power", Armor = 30, HealPower = 20 },
            { Name = "Holy Wrath",     Description = "Gain 35 damage",                  Damage = 35 },
        },
        Epic = {
            { Name = "Avatar of Light", Description = "Gain 50 armor and 40 heal power", Armor = 50, HealPower = 40 },
        },
        Legendary = {
            { Name = "Divine Judgment", Description = "Gain 80 armor, 60 heal power, and 50 damage", Armor = 80, HealPower = 60, Damage = 50 },
        },
    }
}

return Paladin