-- ShadowAbilities.luau
-- Shadow class abilities

local ShadowAbilities = {

    Passive = {
        Name = "Dark Shroud",
        Description = "After not taking damage for 4 seconds you enter stealth, your next attack from stealth deals bonus damage.",
        StealthDelay = 4,
        BonusDamage = 0.75,      -- 75% bonus damage from stealth
    },

    Ability1 = {
        Name = "Fan of Blades",
        Description = "Hurl a single precise dagger at a target enemy dealing solid damage.",
        Damage = 40,
        Range = 35,
        Cooldown = 5,
    },

    Ability2 = {
        Name = "Marked Blade",
        Description = "Throw a knife that embeds into the first enemy or wall it hits, activate again to teleport directly to it.",
        Damage = 15,
        Range = 40,
        TeleportDelay = 3,       -- Window to teleport before knife disappears
        Cooldown = 10,
    },

    Ability3 = {
        Name = "Shadowstep",
        Description = "Instantly blink behind a target enemy.",
        Range = 30,
        Cooldown = 13,
    },
}

return ShadowAbilities