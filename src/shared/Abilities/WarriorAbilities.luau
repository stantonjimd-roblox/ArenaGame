-- WarriorAbilities.luau
-- Warrior class abilities

local WarriorAbilities = {

    Passive = {
        Name = "Outnumbered",
        Description = "While both enemies are nearby, you take reduced damage.",
        DamageReduction = 0.20,  -- 20% reduced damage
        DetectionRange = 15,
    },

    Ability1 = {
        Name = "Whirlwind",
        Description = "Spin your sword dealing damage to all nearby enemies.",
        Damage = 30,
        Radius = 8,
        Cooldown = 6,
    },

    Ability2 = {
        Name = "Shield Slam",
        Description = "Lunge forward stunning the first enemy hit.",
        Damage = 20,
        Range = 10,
        StunDuration = 1.5,
        Cooldown = 8,
    },

    Ability3 = {
        Name = "War Leap",
        Description = "Leap to a target location dealing AOE damage on landing.",
        Damage = 25,
        Range = 20,
        Radius = 6,
        Cooldown = 10,
    },
}

return WarriorAbilities