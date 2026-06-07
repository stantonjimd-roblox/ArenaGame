-- MeleeAugments.luau
-- Augments available to melee classes
-- Applies to: Warrior, Berserker, Paladin, Shadow, Dragon Knight, Void Walker

local MeleeAugments = {

    -- =====================
    -- OFFENSIVE
    -- =====================

    CleaveDamage = {
        Common =    { Name = "Cleaving Strikes I",   Description = "Your basic attacks hit all enemies within 3 studs of your target.", CleavedRange = 3, Rarity = "Common" },
        Rare =      { Name = "Cleaving Strikes II",  Description = "Your basic attacks hit all enemies within 5 studs of your target.", CleavedRange = 5, Rarity = "Rare" },
        Legendary = { Name = "Cleaving Strikes III", Description = "Your basic attacks hit all enemies within 8 studs of your target.", CleavedRange = 8, Rarity = "Legendary" },
    },

    DashDamage = {
        Common =    { Name = "Impact Force I",   Description = "Your movement ability deals 15 bonus damage.", DashBonus = 15, Rarity = "Common" },
        Rare =      { Name = "Impact Force II",  Description = "Your movement ability deals 30 bonus damage.", DashBonus = 30, Rarity = "Rare" },
        Legendary = { Name = "Impact Force III", Description = "Your movement ability deals 50 bonus damage.", DashBonus = 50, Rarity = "Legendary" },
    },

    ExecuteThreshold = {
        Common =    { Name = "Finisher I",   Description = "Deal 20% bonus damage to enemies below 25% health.", BonusDamage = 0.20, Threshold = 0.25, Rarity = "Common" },
        Rare =      { Name = "Finisher II",  Description = "Deal 35% bonus damage to enemies below 25% health.", BonusDamage = 0.35, Threshold = 0.25, Rarity = "Rare" },
        Legendary = { Name = "Finisher III", Description = "Deal 50% bonus damage to enemies below 30% health.", BonusDamage = 0.50, Threshold = 0.30, Rarity = "Legendary" },
    },

    BonusRange = {
        Common =    { Name = "Long Reach I",   Description = "Increase your basic attack range by 2 studs.", RangeBonus = 2, Rarity = "Common" },
        Rare =      { Name = "Long Reach II",  Description = "Increase your basic attack range by 3 studs.", RangeBonus = 3, Rarity = "Rare" },
        Legendary = { Name = "Long Reach III", Description = "Increase your basic attack range by 5 studs.", RangeBonus = 5, Rarity = "Legendary" },
    },

    OnDashReset = {
        Common =    { Name = "Relentless I",   Description = "Killing an enemy resets the cooldown of your movement ability.", ResetOnKill = "Ability3", Rarity = "Common" },
        Rare =      { Name = "Relentless II",  Description = "Killing an enemy resets the cooldown of your movement ability and heals you for 20.", ResetOnKill = "Ability3", HealOnReset = 20, Rarity = "Rare" },
        Legendary = { Name = "Relentless III", Description = "Killing an enemy resets the cooldown of your movement ability and heals you for 40.", ResetOnKill = "Ability3", HealOnReset = 40, Rarity = "Legendary" },
    },

    -- =====================
    -- DEFENSIVE
    -- =====================

    ArmorOnEngage = {
        Common =    { Name = "War Hardened I",   Description = "Gain 15 armor for 4 seconds when you dash or leap.", ArmorOnDash = 15, Duration = 4, Rarity = "Common" },
        Rare =      { Name = "War Hardened II",  Description = "Gain 28 armor for 4 seconds when you dash or leap.", ArmorOnDash = 28, Duration = 4, Rarity = "Rare" },
        Legendary = { Name = "War Hardened III", Description = "Gain 45 armor for 5 seconds when you dash or leap.", ArmorOnDash = 45, Duration = 5, Rarity = "Legendary" },
    },

    LifeStealOnAbility = {
        Common =    { Name = "Siphoning Strikes I",   Description = "Heal for 10% of damage dealt by your abilities.", LifeSteal = 0.10, Rarity = "Common" },
        Rare =      { Name = "Siphoning Strikes II",  Description = "Heal for 20% of damage dealt by your abilities.", LifeSteal = 0.20, Rarity = "Rare" },
        Legendary = { Name = "Siphoning Strikes III", Description = "Heal for 30% of damage dealt by your abilities.", LifeSteal = 0.30, Rarity = "Legendary" },
    },

    ThornsPassive = {
        Common =    { Name = "Thorns I",   Description = "Reflect 10% of melee damage taken back at the attacker.", ReflectPercent = 0.10, Rarity = "Common" },
        Rare =      { Name = "Thorns II",  Description = "Reflect 20% of melee damage taken back at the attacker.", ReflectPercent = 0.20, Rarity = "Rare" },
        Legendary = { Name = "Thorns III", Description = "Reflect 35% of melee damage taken back at the attacker.", ReflectPercent = 0.35, Rarity = "Legendary" },
    },

    -- =====================
    -- UTILITY
    -- =====================

    SlowOnHit = {
        Common =    { Name = "Hobbling Strikes I",   Description = "Basic attacks slow enemies by 15% for 1.5 seconds.", SlowAmount = 0.15, Duration = 1.5, Rarity = "Common" },
        Rare =      { Name = "Hobbling Strikes II",  Description = "Basic attacks slow enemies by 25% for 2 seconds.", SlowAmount = 0.25, Duration = 2, Rarity = "Rare" },
        Legendary = { Name = "Hobbling Strikes III", Description = "Basic attacks slow enemies by 40% for 2.5 seconds.", SlowAmount = 0.40, Duration = 2.5, Rarity = "Legendary" },
    },

    CCExtension = {
        Common =    { Name = "Iron Grip I",   Description = "Your crowd control abilities last 20% longer.", CCDuration = 0.20, Rarity = "Common" },
        Rare =      { Name = "Iron Grip II",  Description = "Your crowd control abilities last 35% longer.", CCDuration = 0.35, Rarity = "Rare" },
        Legendary = { Name = "Iron Grip III", Description = "Your crowd control abilities last 50% longer.", CCDuration = 0.50, Rarity = "Legendary" },
    },

    GapCloser = {
        Common =    { Name = "Hunter's Instinct I",   Description = "Move 15% faster when moving toward an enemy.", BonusSpeed = 0.15, Rarity = "Common" },
        Rare =      { Name = "Hunter's Instinct II",  Description = "Move 25% faster when moving toward an enemy.", BonusSpeed = 0.25, Rarity = "Rare" },
        Legendary = { Name = "Hunter's Instinct III", Description = "Move 40% faster when moving toward an enemy.", BonusSpeed = 0.40, Rarity = "Legendary" },
    },

    PostDashBurst = {
        Common =    { Name = "Momentum I",   Description = "Your next basic attack after using your movement ability deals 20% bonus damage.", PostDashBonus = 0.20, Rarity = "Common" },
        Rare =      { Name = "Momentum II",  Description = "Your next basic attack after using your movement ability deals 35% bonus damage.", PostDashBonus = 0.35, Rarity = "Rare" },
        Legendary = { Name = "Momentum III", Description = "Your next basic attack after using your movement ability deals 55% bonus damage.", PostDashBonus = 0.55, Rarity = "Legendary" },
    },
}

return MeleeAugments