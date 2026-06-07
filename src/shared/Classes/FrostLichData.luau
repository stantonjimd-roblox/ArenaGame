-- FrostLich.luau
-- A powerful ice mage who slows and shatters enemies

local FrostLich = {
    Name = "Frost Lich",
    Description = "An ancient undead sorcerer who freezes enemies solid and shatters them.",
    Rarity = "Rare",

    -- Weapon
    Weapon = {
        Name = "Ice Scepter",
        Type = "Ranged",
        Range = 35,
        AttackSpeed = 0.9,
    },

    -- Base stats
    Stats = {
        Health = 135,
        Speed = 12,
        Damage = 50,
        Armor = 10,
        SlowPower = 10,
        ShatterDamage = 20,
    },

    Attributes = {
        Common = {
            { Name = "Cold Touch",     Description = "Gain 8 damage and 5 slow power",          Damage = 8, SlowPower = 5 },
            { Name = "Frost Bite",     Description = "Gain 10 shatter damage",                  ShatterDamage = 10 },
        },
        Uncommon = {
            { Name = "Frozen Ground",  Description = "Gain 20 damage and 10 slow power",        Damage = 20, SlowPower = 10 },
            { Name = "Ice Shards",     Description = "Gain 25 shatter damage",                  ShatterDamage = 25 },
        },
        Rare = {
            { Name = "Blizzard",       Description = "Gain 35 damage and 20 slow power",        Damage = 35, SlowPower = 20 },
            { Name = "Deep Freeze",    Description = "Gain 30 damage and 35 shatter damage",    Damage = 30, ShatterDamage = 35 },
        },
        Epic = {
            { Name = "Glacial Tomb",   Description = "Gain 55 damage, 30 slow power, and 40 shatter damage", Damage = 55, SlowPower = 30, ShatterDamage = 40 },
        },
        Legendary = {
            { Name = "Eternal Winter", Description = "Gain 90 damage, 50 slow power, and 70 shatter damage", Damage = 90, SlowPower = 50, ShatterDamage = 70 },
        },
    }
}

return FrostLich