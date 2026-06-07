-- RangerAbilities.luau
-- Ranger class abilities

local RangerAbilities = {

    Passive = {
        Name = "Predator",
        Description = "Hitting the same enemy 3 times in a row marks them, your next shot deals bonus damage against marked targets.",
        HitsRequired = 3,
        BonusDamage = 0.50,      -- 50% bonus damage on marked target
        MarkDuration = 5,        -- Mark lasts 5 seconds
    },

    Ability1 = {
        Name = "Volley",
        Description = "Fire a burst of 3 arrows in a spread pattern.",
        Damage = 20,             -- Per arrow
        ArrowCount = 3,
        SpreadAngle = 30,
        Range = 40,
        Cooldown = 5,
    },

    Ability2 = {
        Name = "Conceal",
        Description = "Briefly roll sideways dodging the next incoming ability or attack.",
        DodgeDuration = 0.6,
        RollDistance = 10,
        Cooldown = 9,
    },

    Ability3 = {
        Name = "Vault",
        Description = "Dash toward a target enemy, kick off them dealing small damage, and launch yourself backwards away from them.",
        Damage = 15,
        DashRange = 20,
        LaunchDistance = 25,
        Cooldown = 12,
    },
}

return RangerAbilities