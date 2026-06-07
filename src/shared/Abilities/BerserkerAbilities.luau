-- BerserkerAbilities.luau
-- Berserker class abilities

local BerserkerAbilities = {

    Passive = {
        Name = "Death's Edge",
        Description = "While below 50% health, gain increased damage and lifesteal.",
        HealthThreshold = 0.50,
        BonusDamage = 0.25,      -- 25% increased damage
        LifeSteal = 0.15,        -- 15% lifesteal
    },

    Ability1 = {
        Name = "Brutal Cleave",
        Description = "A wide savage swing dealing heavy damage in a cone in front of you.",
        Damage = 45,
        Range = 8,
        ConeAngle = 90,
        Cooldown = 5,
    },

    Ability2 = {
        Name = "Blood Rush",
        Description = "A short aggressive dash forward, dealing bonus damage if it connects with an enemy.",
        Damage = 20,
        BonusDamage = 30,
        Range = 12,
        Cooldown = 7,
    },

    Ability3 = {
        Name = "Rampage",
        Description = "Enter a frenzy gaining massive movement speed, dashing through enemies repeatedly with lifesteal on every hit.",
        Damage = 15,
        LifeSteal = 0.30,
        SpeedBoost = 0.50,
        Duration = 4,
        Cooldown = 14,
    },
}

return BerserkerAbilities