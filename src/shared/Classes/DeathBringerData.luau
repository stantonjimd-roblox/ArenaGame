-- DeathBringer.luau
-- A legendary necromancer who summons undead and steals life

local DeathBringer = {
    Name = "Death Bringer",
    Description = "A harbinger of death who raises the fallen as servants and drains the life from enemies.",
    Rarity = "Legendary",

    -- Weapon
    Weapon = {
        Name = "Soul Scythe",
        Type = "Melee",
        Range = 9,
        AttackSpeed = 0.8,
    },

    -- Base stats
    Stats = {
        Health = 200,
        Speed = 13,
        Damage = 65,
        Armor = 20,
        LifeSteal = 15,
        SummonCount = 1,
        SummonHealth = 100,
    },

    Attributes = {
        Common = {
            { Name = "Soul Drain",     Description = "Gain 8 life steal",                           LifeSteal = 8 },
            { Name = "Risen Dead",     Description = "Gain 50 summon health",                       SummonHealth = 50 },
        },
        Uncommon = {
            { Name = "Death Coil",     Description = "Gain 20 damage and 10 life steal",            Damage = 20, LifeSteal = 10 },
            { Name = "Undead Army",    Description = "Gain 1 summon count and 50 summon health",    SummonCount = 1, SummonHealth = 50 },
        },
        Rare = {
            { Name = "Soul Harvest",   Description = "Gain 35 damage and 25 life steal",            Damage = 35, LifeSteal = 25 },
            { Name = "Legion of Dead", Description = "Gain 2 summon count and 100 summon health",   SummonCount = 2, SummonHealth = 100 },
        },
        Epic = {
            { Name = "Death Nova",     Description = "Gain 60 damage, 35 life steal, and 1 summon count", Damage = 60, LifeSteal = 35, SummonCount = 1 },
        },
        Legendary = {
            { Name = "Apocalypse Rising", Description = "Gain 100 damage, 60 life steal, 3 summon count, and 200 summon health", Damage = 100, LifeSteal = 60, SummonCount = 3, SummonHealth = 200 },
        },
    }
}

return DeathBringer