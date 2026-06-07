-- DeathBringerAbilities.luau
-- Death Bringer class abilities

local DeathBringerAbilities = {

    Passive = {
        Name = "Death's Harvest",
        Description = "Every kill permanently adds a summon to your army for the rest of the match. They die in one hit but deal persistent chip damage.",
        MinionHealth = 1,
        MinionDamage = 8,
        MinionSpeed = 12,
        MaxMinions = 10,
    },

    Ability1 = {
        Name = "Soul Scythe",
        Description = "Swing your scythe twice in a wide arc dealing heavy damage with each swing.",
        Damage = 45,             -- Per swing
        SwingCount = 2,
        Radius = 9,
        ConeAngle = 120,
        Cooldown = 5,
    },

    Ability2 = {
        Name = "Death Coil",
        Description = "Launch a coil of dark energy that damages and briefly roots the first enemy hit.",
        Damage = 35,
        RootDuration = 1.5,
        Range = 35,
        Cooldown = 9,
    },

    Ability3 = {
        Name = "Wraith Dash",
        Description = "Transform into a wraith and dash through enemies dealing damage and applying lifesteal on each enemy passed through.",
        Damage = 30,
        LifeSteal = 0.40,
        Range = 22,
        Cooldown = 12,
    },

    Ability4 = {
        Name = "Soul Consume",
        Description = "Sacrifice one of your minions to instantly restore a chunk of your health.",
        HealAmount = 60,
        Cooldown = 3,            -- Short cooldown since it costs a minion
    },

    Ability5 = {
        Name = "Raise Dead",
        Description = "Raise a fallen enemy as an undead servant. They are fragile but relentless.",
        MinionHealth = 1,
        MinionDamage = 12,
        Range = 20,
        Cooldown = 20,
    },
}

return DeathBringerAbilities