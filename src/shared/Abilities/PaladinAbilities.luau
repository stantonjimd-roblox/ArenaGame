-- PaladinAbilities.luau
-- Paladin class abilities

local PaladinAbilities = {

    Passive = {
        Name = "Holy Presence",
        Description = "Your teammate passively regenerates a small amount of health every few seconds while near you.",
        HealAmount = 8,
        HealInterval = 3,        -- Every 3 seconds
        Range = 20,
    },

    Ability1 = {
        Name = "Divine Strike",
        Description = "A powerful hammer slam dealing damage in a small AOE in front of you.",
        Damage = 35,
        Radius = 6,
        Range = 7,
        Cooldown = 5,
    },

    Ability2 = {
        Name = "Holy Nova",
        Description = "Release a burst of holy energy around you, damaging and briefly stunning all nearby enemies.",
        Damage = 20,
        Radius = 10,
        StunDuration = 1.2,
        Cooldown = 10,
    },

    Ability3 = {
        Name = "Guardian's Oath",
        Description = "Leap to your teammate, granting them a speed boost and redirecting all damage they would take onto yourself.",
        SpeedBoost = 0.40,
        Duration = 3,
        LeapRange = 40,
        Cooldown = 18,
    },
}

return PaladinAbilities