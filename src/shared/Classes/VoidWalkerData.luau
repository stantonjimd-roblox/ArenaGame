-- VoidWalker.luau
-- A teleporting shadow melee fighter who tears through reality

local VoidWalker = {
    Name = "Void Walker",
    Description = "A terrifying being from the void who bends space and time to destroy enemies.",
    Rarity = "Epic",

    -- Weapon
    Weapon = {
        Name = "Void Blade",
        Type = "Melee",
        Range = 6,
        AttackSpeed = 1.5,
    },

    -- Base stats
    Stats = {
        Health = 170,
        Speed = 18,
        Damage = 60,
        Armor = 12,
        TeleportRange = 20,
        VoidDamage = 25,
    },

    Attributes = {
        Common = {
            { Name = "Phase Shift",    Description = "Gain 10 teleport range",                  TeleportRange = 10 },
            { Name = "Void Touch",     Description = "Gain 12 damage",                          Damage = 12 },
        },
        Uncommon = {
            { Name = "Blink Strike",   Description = "Gain 20 damage and 10 teleport range",    Damage = 20, TeleportRange = 10 },
            { Name = "Void Rend",      Description = "Gain 20 void damage",                     VoidDamage = 20 },
        },
        Rare = {
            { Name = "Reality Slash",  Description = "Gain 40 damage and 20 void damage",       Damage = 40, VoidDamage = 20 },
            { Name = "Dimensional",    Description = "Gain 25 teleport range and 25 damage",    TeleportRange = 25, Damage = 25 },
        },
        Epic = {
            { Name = "Void Rupture",   Description = "Gain 65 damage, 30 void damage, and 20 teleport range", Damage = 65, VoidDamage = 30, TeleportRange = 20 },
        },
        Legendary = {
            { Name = "Oblivion",       Description = "Gain 100 damage, 60 void damage, and 40 teleport range", Damage = 100, VoidDamage = 60, TeleportRange = 40 },
        },
    }
}

return VoidWalker