-- FrostLichAbilities.luau
-- Frost Lich class abilities

local FrostLichAbilities = {

    Passive = {
        Name = "Brittle",
        Description = "Enemies affected by your slows take increased damage from all sources.",
        BonusDamageReceived = 0.20,  -- 20% increased damage taken
    },

    Ability1 = {
        Name = "Ice Lance",
        Description = "Fire a piercing lance of ice that passes through enemies slowing all it hits.",
        Damage = 35,
        Range = 45,
        SlowAmount = 0.35,
        SlowDuration = 2,
        Cooldown = 5,
    },

    Ability2 = {
        Name = "Ice Scythe",
        Description = "Summon a scythe of ice that swings in a cone directly in front of you, freezing all enemies hit briefly.",
        Damage = 40,
        Range = 8,
        ConeAngle = 80,
        FreezeDuration = 1.2,
        Cooldown = 9,
    },

    Ability3 = {
        Name = "Frozen Moment",
        Description = "Target yourself to become immune for 1 second, or target an enemy to freeze them solid for 1 second.",
        ImmuneDuration = 1,
        FreezeDuration = 1,
        Range = 25,
        Cooldown = 16,
    },
}

return FrostLichAbilities