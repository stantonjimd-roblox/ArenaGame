-- RangedAugments.luau
-- Augments available to ranged classes
-- Applies to: Ranger, Death Bringer

local RangedAugments = {

    -- =====================
    -- OFFENSIVE
    -- =====================

    BonusProjectileSpeed = {
        Common =    { Name = "Swift Shots I",   Description = "Your projectiles travel 20% faster.", ProjectileSpeed = 0.20, Rarity = "Common" },
        Rare =      { Name = "Swift Shots II",  Description = "Your projectiles travel 35% faster.", ProjectileSpeed = 0.35, Rarity = "Rare" },
        Legendary = { Name = "Swift Shots III", Description = "Your projectiles travel 55% faster.", ProjectileSpeed = 0.55, Rarity = "Legendary" },
    },

    PiercingShots = {
        Common =    { Name = "Piercing I",   Description = "Your basic attacks pierce through enemies hitting all in a line.", Pierce = true, Rarity = "Common" },
        Rare =      { Name = "Piercing II",  Description = "Your basic attacks pierce through enemies and deal 15% bonus damage to each target hit.", Pierce = true, BonusDamage = 0.15, Rarity = "Rare" },
        Legendary = { Name = "Piercing III", Description = "Your basic attacks pierce through enemies and deal 25% bonus damage to each target hit.", Pierce = true, BonusDamage = 0.25, Rarity = "Legendary" },
    },

    BonusRange = {
        Common =    { Name = "Far Sight I",   Description = "Increase your basic attack and ability range by 8 studs.", RangeBonus = 8, Rarity = "Common" },
        Rare =      { Name = "Far Sight II",  Description = "Increase your basic attack and ability range by 14 studs.", RangeBonus = 14, Rarity = "Rare" },
        Legendary = { Name = "Far Sight III", Description = "Increase your basic attack and ability range by 22 studs.", RangeBonus = 22, Rarity = "Legendary" },
    },

    MultiShot = {
        Common =    { Name = "Double Tap I",   Description = "Every 5th basic attack fires an extra projectile.", ProcEveryN = 5, Rarity = "Common" },
        Rare =      { Name = "Double Tap II",  Description = "Every 4th basic attack fires an extra projectile.", ProcEveryN = 4, Rarity = "Rare" },
        Legendary = { Name = "Double Tap III", Description = "Every 3rd basic attack fires two extra projectiles.", ProcEveryN = 3, ExtraProjectiles = 2, Rarity = "Legendary" },
    },

    ExecuteShot = {
        Common =    { Name = "Kill Shot I",   Description = "Deal 25% bonus damage to enemies below 20% health.", BonusDamage = 0.25, Threshold = 0.20, Rarity = "Common" },
        Rare =      { Name = "Kill Shot II",  Description = "Deal 40% bonus damage to enemies below 20% health.", BonusDamage = 0.40, Threshold = 0.20, Rarity = "Rare" },
        Legendary = { Name = "Kill Shot III", Description = "Deal 60% bonus damage to enemies below 25% health.", BonusDamage = 0.60, Threshold = 0.25, Rarity = "Legendary" },
    },

    -- =====================
    -- DEFENSIVE
    -- =====================

    KiteSpeed = {
        Common =    { Name = "Kiting I",   Description = "Move 12% faster when moving away from an enemy.", BonusSpeed = 0.12, Rarity = "Common" },
        Rare =      { Name = "Kiting II",  Description = "Move 22% faster when moving away from an enemy.", BonusSpeed = 0.22, Rarity = "Rare" },
        Legendary = { Name = "Kiting III", Description = "Move 35% faster when moving away from an enemy.", BonusSpeed = 0.35, Rarity = "Legendary" },
    },

    DodgeCharges = {
        Common =    { Name = "Evasion I",   Description = "Your dodge ability gains 1 extra charge.", ExtraCharges = 1, Rarity = "Common" },
        Rare =      { Name = "Evasion II",  Description = "Your dodge ability gains 1 extra charge and recharges 20% faster.", ExtraCharges = 1, CDReduction = 0.20, Rarity = "Rare" },
        Legendary = { Name = "Evasion III", Description = "Your dodge ability gains 2 extra charges and recharges 30% faster.", ExtraCharges = 2, CDReduction = 0.30, Rarity = "Legendary" },
    },

    HealOnDodge = {
        Common =    { Name = "Evasive Mending I",   Description = "Heal for 20 health when you successfully dodge an attack.", HealOnDodge = 20, Rarity = "Common" },
        Rare =      { Name = "Evasive Mending II",  Description = "Heal for 40 health when you successfully dodge an attack.", HealOnDodge = 40, Rarity = "Rare" },
        Legendary = { Name = "Evasive Mending III", Description = "Heal for 70 health when you successfully dodge an attack.", HealOnDodge = 70, Rarity = "Legendary" },
    },

    -- =====================
    -- UTILITY
    -- =====================

    SlowOnHit = {
        Common =    { Name = "Crippling Shots I",   Description = "Basic attacks slow enemies by 12% for 2 seconds.", SlowAmount = 0.12, Duration = 2, Rarity = "Common" },
        Rare =      { Name = "Crippling Shots II",  Description = "Basic attacks slow enemies by 22% for 2 seconds.", SlowAmount = 0.22, Duration = 2, Rarity = "Rare" },
        Legendary = { Name = "Crippling Shots III", Description = "Basic attacks slow enemies by 35% for 3 seconds.", SlowAmount = 0.35, Duration = 3, Rarity = "Legendary" },
    },

    MarkAmplify = {
        Common =    { Name = "Target Acquired I",   Description = "Hitting the same enemy 2 times in a row increases your damage against them by 10%.", HitsRequired = 2, BonusDamage = 0.10, Rarity = "Common" },
        Rare =      { Name = "Target Acquired II",  Description = "Hitting the same enemy 2 times in a row increases your damage against them by 20%.", HitsRequired = 2, BonusDamage = 0.20, Rarity = "Rare" },
        Legendary = { Name = "Target Acquired III", Description = "Hitting the same enemy 2 times in a row increases your damage against them by 35%.", HitsRequired = 2, BonusDamage = 0.35, Rarity = "Legendary" },
    },

    PostDodgeDamage = {
        Common =    { Name = "Counter Shot I",   Description = "Your next basic attack after dodging deals 25% bonus damage.", PostDodgeBonus = 0.25, Rarity = "Common" },
        Rare =      { Name = "Counter Shot II",  Description = "Your next basic attack after dodging deals 45% bonus damage.", PostDodgeBonus = 0.45, Rarity = "Rare" },
        Legendary = { Name = "Counter Shot III", Description = "Your next basic attack after dodging deals 70% bonus damage.", PostDodgeBonus = 0.70, Rarity = "Legendary" },
    },
}

return RangedAugments