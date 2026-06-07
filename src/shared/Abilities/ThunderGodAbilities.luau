-- ThunderGodAbilities.luau
-- Thunder God class abilities

local ThunderGodAbilities = {

    Passive = {
        Name = "Storm Chaser",
        Description = "Each ability that hits an enemy grants stacking movement speed. Stacks fall off after a few seconds of not hitting.",
        SpeedPerStack = 0.06,    -- 6% speed per stack
        MaxStacks = 8,
        StackDuration = 3,       -- Seconds before stacks decay
    },

    Ability1 = {
        Name = "Lightning Bolt",
        Description = "Hurl a fast bolt of lightning that chains to nearby enemies on hit.",
        Damage = 45,
        ChainDamage = 25,
        ChainRange = 12,
        ChainCount = 2,
        Range = 40,
        Cooldown = 5,
    },

    Ability2 = {
        Name = "Thunder Clap",
        Description = "Slam the ground sending out a shockwave that stuns all enemies hit.",
        Damage = 30,
        Radius = 12,
        StunDuration = 1.2,
        Cooldown = 9,
    },

    Ability3 = {
        Name = "Storm Dash",
        Description = "Dash forward as a bolt of lightning, zapping all enemies you pass through.",
        Damage = 25,
        Range = 22,
        Cooldown = 11,
    },

    Ability4 = {
        Name = "Godspeed Strike",
        Description = "Consume all current movement speed stacks, the more stacks consumed the bigger the lightning explosion.",
        DamagePerStack = 20,
        Radius = 14,
        Cooldown = 16,
    },
}

return ThunderGodAbilities