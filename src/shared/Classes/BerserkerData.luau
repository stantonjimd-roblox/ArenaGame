-- Berserker.luau
-- A glass cannon melee fighter who hits incredibly hard

local Berserker = {
    Name = "Berserker",
    Description = "A reckless warrior who trades defense for overwhelming power.",
    Rarity = "Common",

    -- Weapon
    Weapon = {
        Name = "Giant Axe",
        Type = "Melee",
        Range = 7,
        AttackSpeed = 0.6,
    },

    -- Base stats
    Stats = {
        Health = 150,
        Speed = 16,
        Damage = 40,
        Armor = 5,
    },

    Attributes = {
        Common = {
            { Name = "Blood Thirst",   Description = "Gain 10 damage",                Damage = 10 },
            { Name = "Wild Swing",     Description = "Gain 8 damage and 5 speed",     Damage = 8, Speed = 5 },
        },
        Uncommon = {
            { Name = "Rampage",        Description = "Gain 25 damage",                Damage = 25 },
            { Name = "Frenzy",         Description = "Gain 20 damage and 10 speed",   Damage = 20, Speed = 10 },
        },
        Rare = {
            { Name = "Carnage",        Description = "Gain 45 damage",                Damage = 45 },
            { Name = "Unstoppable",    Description = "Gain 30 damage and 20 speed",   Damage = 30, Speed = 20 },
        },
        Epic = {
            { Name = "Death Machine",  Description = "Gain 70 damage and 25 speed",   Damage = 70, Speed = 25 },
        },
        Legendary = {
            { Name = "Apocalypse",     Description = "Gain 120 damage and 40 speed",  Damage = 120, Speed = 40 },
        },
    }
}

return Berserker