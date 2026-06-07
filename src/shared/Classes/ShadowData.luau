-- Shadow.luau
-- A fast invisible assassin who strikes from the darkness

local Shadow = {
    Name = "Shadow",
    Description = "A deadly assassin who moves unseen and strikes without warning.",
    Rarity = "Uncommon",

    -- Weapon
    Weapon = {
        Name = "Twin Daggers",
        Type = "Melee",
        Range = 5,
        AttackSpeed = 1.8,
    },

    -- Base stats
    Stats = {
        Health = 110,
        Speed = 20,
        Damage = 35,
        Armor = 5,
        StealthLevel = 1,
    },

    Attributes = {
        Common = {
            { Name = "Shadowstep",     Description = "Gain 8 speed",                    Speed = 8 },
            { Name = "Poisoned Blade", Description = "Gain 10 damage",                  Damage = 10 },
        },
        Uncommon = {
            { Name = "Vanish",         Description = "Gain 15 speed and 10 damage",     Speed = 15, Damage = 10 },
            { Name = "Shadow Strike",  Description = "Gain 25 damage",                  Damage = 25 },
        },
        Rare = {
            { Name = "Death Mark",     Description = "Gain 40 damage and 15 speed",     Damage = 40, Speed = 15 },
            { Name = "Phantom Form",   Description = "Gain 20 speed and stealth level", Speed = 20, StealthLevel = 1 },
        },
        Epic = {
            { Name = "Night Stalker",  Description = "Gain 60 damage and 25 speed",     Damage = 60, Speed = 25 },
        },
        Legendary = {
            { Name = "One With Darkness", Description = "Gain 90 damage, 40 speed, and stealth level", Damage = 90, Speed = 40, StealthLevel = 2 },
        },
    }
}

return Shadow