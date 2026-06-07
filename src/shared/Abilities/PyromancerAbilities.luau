-- PyromancerAbilities.luau
-- Pyromancer class abilities

local PyromancerAbilities = {

    Passive = {
        Name = "Ignition",
        Description = "Enemies hit by your abilities are set on fire, taking damage over time, stacking up to 3 times.",
        BurnDamage = 8,          -- Per stack per second
        BurnDuration = 4,
        MaxStacks = 3,
    },

    Ability1 = {
        Name = "Fireball",
        Description = "Hurl a fireball that explodes on impact dealing AOE damage and applying burn.",
        Damage = 50,
        Radius = 8,
        Range = 35,
        Cooldown = 5,
    },

    Ability2 = {
        Name = "Fire Wall",
        Description = "Summon a wall of fire at a target location, enemies who walk through it take damage and gain a burn stack.",
        Damage = 20,
        Width = 20,
        Duration = 5,
        Range = 30,
        Cooldown = 12,
    },

    Ability3 = {
        Name = "Meteor",
        Description = "Call down a meteor after a short delay at a target location dealing massive damage.",
        Damage = 120,
        Radius = 10,
        Delay = 1.5,
        Range = 45,
        Cooldown = 18,
    },
}

return PyromancerAbilities