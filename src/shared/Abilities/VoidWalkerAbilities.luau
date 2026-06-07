-- VoidWalkerAbilities.luau
-- Void Walker class abilities

local VoidWalkerAbilities = {

    Passive = {
        Name = "Void Shift",
        Description = "Every 4th basic attack phases you through the next incoming ability.",
        ProcAfterHits = 4,
        ImmuneDuration = 0.5,
    },

    Ability1 = {
        Name = "Void Slash",
        Description = "A quick slash that deals damage and briefly phases you out of reality, becoming untargetable for a split second.",
        Damage = 50,
        UntargetableDuration = 0.4,
        Range = 6,
        Cooldown = 5,
    },

    Ability2 = {
        Name = "Void Rift",
        Description = "Place a portal beneath your feet, cast again to place a second portal. Everything inside either portal instantly swaps locations.",
        PortalRadius = 5,
        PortalDuration = 6,
        Cooldown = 14,
    },

    Ability3 = {
        Name = "Shadow Clone",
        Description = "Spawn a clone of yourself that mimics your movements, confusing enemies into attacking the wrong target.",
        CloneHealth = 1,
        CloneDuration = 5,
        Cooldown = 13,
    },

    Ability4 = {
        Name = "Void Blindness",
        Description = "Blind a target enemy completely, causing them to take increased damage from all sources while blinded.",
        BlindDuration = 2,
        BonusDamageReceived = 0.30,
        Range = 25,
        Cooldown = 16,
    },
}

return VoidWalkerAbilities