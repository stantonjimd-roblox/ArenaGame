-- DragonKnightAbilities.luau
-- Dragon Knight class abilities

local DragonKnightAbilities = {

    Passive = {
        Name = "Draconic Ascension",
        Description = "Landing enough hits in combat causes wings to sprout, granting movement speed, flight over walls, and reduced damage taken.",
        HitsRequired = 10,
        SpeedBoost = 0.30,
        DamageReduction = 0.15,
        ResetsEachRound = true,
    },

    Ability1 = {
        Name = "Dragon Slash",
        Description = "A powerful lance strike dealing heavy damage in a line.",
        Damage = 70,
        Range = 12,
        Width = 4,
        Cooldown = 5,
    },

    Ability2 = {
        Name = "Scorching Breath",
        Description = "Breathe a cone of fire that slows enemies, the burn damage is minor but the slow is punishing.",
        Damage = 15,
        SlowAmount = 0.45,
        SlowDuration = 2.5,
        BurnDamage = 5,
        ConeAngle = 60,
        Range = 15,
        Cooldown = 8,
    },

    Ability3 = {
        Name = "Dragon Charge",
        Description = "Charge forward, stopping the moment you collide with an enemy and stunning them briefly.",
        Damage = 40,
        Range = 25,
        StunDuration = 1.5,
        Cooldown = 11,
    },

    Ability4 = {
        Name = "Dragon Scale Shield",
        Description = "Briefly become immune to all damage, reflecting a portion back at attackers.",
        ImmuneDuration = 1.5,
        ReflectPercent = 0.40,
        Cooldown = 16,
    },

    Ability5 = {
        Name = "Call of the Dragon",
        Description = "Summon an ancient dragon that swoops down onto a target area dealing catastrophic AOE damage.",
        Damage = 200,
        Radius = 18,
        Delay = 1.2,
        Range = 50,
        Cooldown = 25,
    },
}

return DragonKnightAbilities