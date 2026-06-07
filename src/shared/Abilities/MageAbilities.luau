-- MageAbilities.luau
-- Mage class abilities

local MageAbilities = {

    Passive = {
        Name = "Spell Mastery",
        Description = "Every 3rd spell cast automatically fires twice.",
        ProcAfterCasts = 3,
    },

    Ability1 = {
        Name = "Arcane Charge",
        Description = "Hold to charge an arcane bolt, the longer you hold the more damage and range it gains.",
        MinDamage = 30,
        MaxDamage = 120,
        MinRange = 20,
        MaxRange = 60,
        ChargeTime = 2,          -- Seconds to reach max charge
        Cooldown = 5,
    },

    Ability2 = {
        Name = "Arcane Nova",
        Description = "Release a burst of arcane energy around you briefly stunning all nearby enemies.",
        Damage = 25,
        Radius = 10,
        StunDuration = 1.5,
        Cooldown = 10,
    },

    Ability3 = {
        Name = "Blink",
        Description = "Instantly teleport a short distance in any direction.",
        Range = 20,
        Cooldown = 12,
    },
}

return MageAbilities