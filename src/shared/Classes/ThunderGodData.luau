-- ThunderGod.luau
-- A god of lightning who chains electricity between enemies

local ThunderGod = {
    Name = "Thunder God",
    Description = "A divine being of pure lightning who obliterates entire teams with chain electricity.",
    Rarity = "Epic",

    -- Weapon
    Weapon = {
        Name = "Lightning Spear",
        Type = "Ranged",
        Range = 40,
        AttackSpeed = 1.3,
    },

    -- Base stats
    Stats = {
        Health = 160,
        Speed = 17,
        Damage = 65,
        Armor = 15,
        ChainCount = 2,
        ChainDamage = 30,
    },

    Attributes = {
        Common = {
            { Name = "Static Charge",  Description = "Gain 12 damage",                          Damage = 12 },
            { Name = "Conductivity",   Description = "Gain 10 chain damage",                    ChainDamage = 10 },
        },
        Uncommon = {
            { Name = "Thunderstrike",  Description = "Gain 25 damage and 15 chain damage",      Damage = 25, ChainDamage = 15 },
            { Name = "Voltage",        Description = "Gain 1 chain count and 20 damage",        ChainCount = 1, Damage = 20 },
        },
        Rare = {
            { Name = "Storm Caller",   Description = "Gain 40 damage and 25 chain damage",      Damage = 40, ChainDamage = 25 },
            { Name = "Overcharge",     Description = "Gain 1 chain count and 30 chain damage",  ChainCount = 1, ChainDamage = 30 },
        },
        Epic = {
            { Name = "Divine Wrath",   Description = "Gain 70 damage, 2 chain count, and 40 chain damage", Damage = 70, ChainCount = 2, ChainDamage = 40 },
        },
        Legendary = {
            { Name = "Mjolnir's Fury", Description = "Gain 120 damage, 3 chain count, and 80 chain damage", Damage = 120, ChainCount = 3, ChainDamage = 80 },
        },
    }
}

return ThunderGod