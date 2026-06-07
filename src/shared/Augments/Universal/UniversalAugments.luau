-- UniversalAugments.luau
-- Augments available to every class regardless of type

local UniversalAugments = {

    -- =====================
    -- COOLDOWN REDUCTION
    -- =====================

    CooldownAbility1 = {
        Common =    { Name = "Quick Cast I",   Description = "Reduce the cooldown of your 1 ability by 1 second.", Ability = "Ability1", CooldownReduction = 1, Rarity = "Common" },
        Rare =      { Name = "Quick Cast II",  Description = "Reduce the cooldown of your 1 ability by 2 seconds.", Ability = "Ability1", CooldownReduction = 2, Rarity = "Rare" },
        Legendary = { Name = "Quick Cast III", Description = "Reduce the cooldown of your 1 ability by 3 seconds.", Ability = "Ability1", CooldownReduction = 3, Rarity = "Legendary" },
    },

    CooldownAbility2 = {
        Common =    { Name = "Swift Cast I",   Description = "Reduce the cooldown of your 2 ability by 1 second.", Ability = "Ability2", CooldownReduction = 1, Rarity = "Common" },
        Rare =      { Name = "Swift Cast II",  Description = "Reduce the cooldown of your 2 ability by 2 seconds.", Ability = "Ability2", CooldownReduction = 2, Rarity = "Rare" },
        Legendary = { Name = "Swift Cast III", Description = "Reduce the cooldown of your 2 ability by 3 seconds.", Ability = "Ability2", CooldownReduction = 3, Rarity = "Legendary" },
    },

    CooldownAbility3 = {
        Common =    { Name = "Rapid Cast I",   Description = "Reduce the cooldown of your 3 ability by 1 second.", Ability = "Ability3", CooldownReduction = 1, Rarity = "Common" },
        Rare =      { Name = "Rapid Cast II",  Description = "Reduce the cooldown of your 3 ability by 2 seconds.", Ability = "Ability3", CooldownReduction = 2, Rarity = "Rare" },
        Legendary = { Name = "Rapid Cast III", Description = "Reduce the cooldown of your 3 ability by 3 seconds.", Ability = "Ability3", CooldownReduction = 3, Rarity = "Legendary" },
    },

    -- =====================
    -- FLAT STATS
    -- =====================

    BonusHealth = {
        Common =    { Name = "Vitality I",   Description = "Gain 25 max health.", Health = 25, Rarity = "Common" },
        Rare =      { Name = "Vitality II",  Description = "Gain 60 max health.", Health = 60, Rarity = "Rare" },
        Legendary = { Name = "Vitality III", Description = "Gain 100 max health.", Health = 100, Rarity = "Legendary" },
    },

    BonusDamage = {
        Common =    { Name = "Sharpness I",   Description = "Gain 10 damage.", Damage = 10, Rarity = "Common" },
        Rare =      { Name = "Sharpness II",  Description = "Gain 22 damage.", Damage = 22, Rarity = "Rare" },
        Legendary = { Name = "Sharpness III", Description = "Gain 40 damage.", Damage = 40, Rarity = "Legendary" },
    },

    BonusArmor = {
        Common =    { Name = "Plating I",   Description = "Gain 10 armor.", Armor = 10, Rarity = "Common" },
        Rare =      { Name = "Plating II",  Description = "Gain 22 armor.", Armor = 22, Rarity = "Rare" },
        Legendary = { Name = "Plating III", Description = "Gain 40 armor.", Armor = 40, Rarity = "Legendary" },
    },

    BonusSpeed = {
        Common =    { Name = "Fleet Foot I",   Description = "Gain 5% movement speed.", Speed = 0.05, Rarity = "Common" },
        Rare =      { Name = "Fleet Foot II",  Description = "Gain 10% movement speed.", Speed = 0.10, Rarity = "Rare" },
        Legendary = { Name = "Fleet Foot III", Description = "Gain 18% movement speed.", Speed = 0.18, Rarity = "Legendary" },
    },

    -- =====================
    -- COMBAT TRIGGERS
    -- =====================

    OnKillHeal = {
        Common =    { Name = "Blood Mending I",   Description = "Restore 20 health on kill.", HealOnKill = 20, Rarity = "Common" },
        Rare =      { Name = "Blood Mending II",  Description = "Restore 45 health on kill.", HealOnKill = 45, Rarity = "Rare" },
        Legendary = { Name = "Blood Mending III", Description = "Restore 80 health on kill.", HealOnKill = 80, Rarity = "Legendary" },
    },

    OnKillDamage = {
        Common =    { Name = "Killing Spree I",   Description = "Gain 8 damage for the rest of the round on kill. Stacks.", DamageOnKill = 8, Rarity = "Common" },
        Rare =      { Name = "Killing Spree II",  Description = "Gain 18 damage for the rest of the round on kill. Stacks.", DamageOnKill = 18, Rarity = "Rare" },
        Legendary = { Name = "Killing Spree III", Description = "Gain 30 damage for the rest of the round on kill. Stacks.", DamageOnKill = 30, Rarity = "Legendary" },
    },

    OnKillSpeed = {
        Common =    { Name = "Predator's Rush I",   Description = "Gain 20% movement speed for 3 seconds after a kill.", SpeedOnKill = 0.20, Duration = 3, Rarity = "Common" },
        Rare =      { Name = "Predator's Rush II",  Description = "Gain 35% movement speed for 4 seconds after a kill.", SpeedOnKill = 0.35, Duration = 4, Rarity = "Rare" },
        Legendary = { Name = "Predator's Rush III", Description = "Gain 50% movement speed for 5 seconds after a kill.", SpeedOnKill = 0.50, Duration = 5, Rarity = "Legendary" },
    },

    OnHitTaken = {
        Common =    { Name = "Iron Will I",   Description = "Gain 8 armor for 3 seconds after taking damage.", ArmorOnHit = 8, Duration = 3, Rarity = "Common" },
        Rare =      { Name = "Iron Will II",  Description = "Gain 18 armor for 3 seconds after taking damage.", ArmorOnHit = 18, Duration = 3, Rarity = "Rare" },
        Legendary = { Name = "Iron Will III", Description = "Gain 30 armor for 4 seconds after taking damage.", ArmorOnHit = 30, Duration = 4, Rarity = "Legendary" },
    },

    OnHitTakenDamage = {
        Common =    { Name = "Retaliation I",   Description = "After taking damage, your next basic attack deals 20 bonus damage.", BonusNextAttack = 20, Rarity = "Common" },
        Rare =      { Name = "Retaliation II",  Description = "After taking damage, your next basic attack deals 45 bonus damage.", BonusNextAttack = 45, Rarity = "Rare" },
        Legendary = { Name = "Retaliation III", Description = "After taking damage, your next basic attack deals 80 bonus damage.", BonusNextAttack = 80, Rarity = "Legendary" },
    },

    OnLowHealth = {
        Common =    { Name = "Final Stand I",   Description = "When dropping below 30% health gain 20% movement speed for 4 seconds. Once per round.", SpeedBoost = 0.20, Threshold = 0.30, Duration = 4, Rarity = "Common" },
        Rare =      { Name = "Final Stand II",  Description = "When dropping below 30% health gain 35% movement speed for 4 seconds. Once per round.", SpeedBoost = 0.35, Threshold = 0.30, Duration = 4, Rarity = "Rare" },
        Legendary = { Name = "Final Stand III", Description = "When dropping below 30% health gain 50% movement speed for 6 seconds. Once per round.", SpeedBoost = 0.50, Threshold = 0.30, Duration = 6, Rarity = "Legendary" },
    },

    -- =====================
    -- OFFENSIVE
    -- =====================

    EveryNthAttack = {
        Common =    { Name = "Rhythm Strike I",   Description = "Every 4th basic attack deals double damage.", ProcEveryN = 4, DamageMultiplier = 2.0, Rarity = "Common" },
        Rare =      { Name = "Rhythm Strike II",  Description = "Every 3rd basic attack deals double damage.", ProcEveryN = 3, DamageMultiplier = 2.0, Rarity = "Rare" },
        Legendary = { Name = "Rhythm Strike III", Description = "Every 3rd basic attack deals triple damage.", ProcEveryN = 3, DamageMultiplier = 3.0, Rarity = "Legendary" },
    },

    CriticalChance = {
        Common =    { Name = "Lucky Hit I",   Description = "Basic attacks have a 10% chance to deal 50% bonus damage.", CritChance = 0.10, CritMultiplier = 1.50, Rarity = "Common" },
        Rare =      { Name = "Lucky Hit II",  Description = "Basic attacks have a 20% chance to deal 50% bonus damage.", CritChance = 0.20, CritMultiplier = 1.50, Rarity = "Rare" },
        Legendary = { Name = "Lucky Hit III", Description = "Basic attacks have a 25% chance to deal double damage.", CritChance = 0.25, CritMultiplier = 2.0, Rarity = "Legendary" },
    },

    BonusVsCC = {
        Common =    { Name = "Oppressor I",   Description = "Deal 15% bonus damage to slowed or stunned enemies.", BonusVsCC = 0.15, Rarity = "Common" },
        Rare =      { Name = "Oppressor II",  Description = "Deal 25% bonus damage to slowed or stunned enemies.", BonusVsCC = 0.25, Rarity = "Rare" },
        Legendary = { Name = "Oppressor III", Description = "Deal 40% bonus damage to slowed or stunned enemies.", BonusVsCC = 0.40, Rarity = "Legendary" },
    },

    BackstabBonus = {
        Common =    { Name = "Flanker I",   Description = "Deal 15% bonus damage when hitting enemies from behind.", BackstabBonus = 0.15, Rarity = "Common" },
        Rare =      { Name = "Flanker II",  Description = "Deal 25% bonus damage when hitting enemies from behind.", BackstabBonus = 0.25, Rarity = "Rare" },
        Legendary = { Name = "Flanker III", Description = "Deal 40% bonus damage when hitting enemies from behind.", BackstabBonus = 0.40, Rarity = "Legendary" },
    },

    FirstStrike = {
        Common =    { Name = "Ambush I",   Description = "Your first attack in combat deals 30 bonus damage.", FirstAttackBonus = 30, Rarity = "Common" },
        Rare =      { Name = "Ambush II",  Description = "Your first attack in combat deals 70 bonus damage.", FirstAttackBonus = 70, Rarity = "Rare" },
        Legendary = { Name = "Ambush III", Description = "Your first attack in combat deals 120 bonus damage.", FirstAttackBonus = 120, Rarity = "Legendary" },
    },

    -- =====================
    -- DEFENSIVE
    -- =====================

    RoundStartShield = {
        Common =    { Name = "Battle Ready I",   Description = "Gain a 40 health shield at the start of each round.", ShieldAmount = 40, Rarity = "Common" },
        Rare =      { Name = "Battle Ready II",  Description = "Gain a 80 health shield at the start of each round.", ShieldAmount = 80, Rarity = "Rare" },
        Legendary = { Name = "Battle Ready III", Description = "Gain a 140 health shield at the start of each round.", ShieldAmount = 140, Rarity = "Legendary" },
    },

    LowHealthShield = {
        Common =    { Name = "Last Barrier I",   Description = "Gain a 50 health shield when dropping below 40% health. Once per round.", ShieldAmount = 50, Threshold = 0.40, Rarity = "Common" },
        Rare =      { Name = "Last Barrier II",  Description = "Gain a 100 health shield when dropping below 40% health. Once per round.", ShieldAmount = 100, Threshold = 0.40, Rarity = "Rare" },
        Legendary = { Name = "Last Barrier III", Description = "Gain a 175 health shield when dropping below 40% health. Once per round.", ShieldAmount = 175, Threshold = 0.40, Rarity = "Legendary" },
    },

    ReduceAbilityDamage = {
        Common =    { Name = "Spell Ward I",   Description = "Take 10% less damage from abilities.", AbilityDamageReduction = 0.10, Rarity = "Common" },
        Rare =      { Name = "Spell Ward II",  Description = "Take 18% less damage from abilities.", AbilityDamageReduction = 0.18, Rarity = "Rare" },
        Legendary = { Name = "Spell Ward III", Description = "Take 28% less damage from abilities.", AbilityDamageReduction = 0.28, Rarity = "Legendary" },
    },

    ReduceBasicDamage = {
        Common =    { Name = "Toughened I",   Description = "Take 10% less damage from basic attacks.", BasicDamageReduction = 0.10, Rarity = "Common" },
        Rare =      { Name = "Toughened II",  Description = "Take 18% less damage from basic attacks.", BasicDamageReduction = 0.18, Rarity = "Rare" },
        Legendary = { Name = "Toughened III", Description = "Take 28% less damage from basic attacks.", BasicDamageReduction = 0.28, Rarity = "Legendary" },
    },

    LifeStealBasic = {
        Common =    { Name = "Vampiric I",   Description = "Heal for 8% of damage dealt by basic attacks.", LifeSteal = 0.08, Rarity = "Common" },
        Rare =      { Name = "Vampiric II",  Description = "Heal for 15% of damage dealt by basic attacks.", LifeSteal = 0.15, Rarity = "Rare" },
        Legendary = { Name = "Vampiric III", Description = "Heal for 25% of damage dealt by basic attacks.", LifeSteal = 0.25, Rarity = "Legendary" },
    },

    -- =====================
    -- UTILITY
    -- =====================

    RegenOnMove = {
        Common =    { Name = "Wanderer's Mending I",   Description = "Regenerate 2 health per second while moving.", HealthPerSecond = 2, Rarity = "Common" },
        Rare =      { Name = "Wanderer's Mending II",  Description = "Regenerate 5 health per second while moving.", HealthPerSecond = 5, Rarity = "Rare" },
        Legendary = { Name = "Wanderer's Mending III", Description = "Regenerate 10 health per second while moving.", HealthPerSecond = 10, Rarity = "Legendary" },
    },

    SpeedOnHit = {
        Common =    { Name = "Swift Strikes I",   Description = "Gain 5% movement speed for 2 seconds on hit. Stacks up to 3 times.", SpeedBoost = 0.05, Duration = 2, MaxStacks = 3, Rarity = "Common" },
        Rare =      { Name = "Swift Strikes II",  Description = "Gain 8% movement speed for 2 seconds on hit. Stacks up to 3 times.", SpeedBoost = 0.08, Duration = 2, MaxStacks = 3, Rarity = "Rare" },
        Legendary = { Name = "Swift Strikes III", Description = "Gain 12% movement speed for 3 seconds on hit. Stacks up to 5 times.", SpeedBoost = 0.12, Duration = 3, MaxStacks = 5, Rarity = "Legendary" },
    },

    AttackSpeedOnCast = {
        Common =    { Name = "Spell Rhythm I",   Description = "Gain 8% attack speed for 3 seconds after casting an ability.", AttackSpeed = 0.08, Duration = 3, Rarity = "Common" },
        Rare =      { Name = "Spell Rhythm II",  Description = "Gain 15% attack speed for 3 seconds after casting an ability.", AttackSpeed = 0.15, Duration = 3, Rarity = "Rare" },
        Legendary = { Name = "Spell Rhythm III", Description = "Gain 25% attack speed for 4 seconds after casting an ability.", AttackSpeed = 0.25, Duration = 4, Rarity = "Legendary" },
    },

    CooldownOnKill = {
        Common =    { Name = "Executioner's Rhythm I",   Description = "Reduce all cooldowns by 1 second on kill.", CDROnKill = 1, Rarity = "Common" },
        Rare =      { Name = "Executioner's Rhythm II",  Description = "Reduce all cooldowns by 2 seconds on kill.", CDROnKill = 2, Rarity = "Rare" },
        Legendary = { Name = "Executioner's Rhythm III", Description = "Reduce all cooldowns by 4 seconds on kill.", CDROnKill = 4, Rarity = "Legendary" },
    },

    RoundStartSpeed = {
        Common =    { Name = "Adrenaline I",   Description = "Gain 30% movement speed at the start of each round, decaying over 5 seconds.", SpeedBoost = 0.30, DecayTime = 5, Rarity = "Common" },
        Rare =      { Name = "Adrenaline II",  Description = "Gain 50% movement speed at the start of each round, decaying over 6 seconds.", SpeedBoost = 0.50, DecayTime = 6, Rarity = "Rare" },
        Legendary = { Name = "Adrenaline III", Description = "Gain 80% movement speed at the start of each round, decaying over 8 seconds.", SpeedBoost = 0.80, DecayTime = 8, Rarity = "Legendary" },
    },

    ReduceCCDuration = {
        Common =    { Name = "Tenacity I",   Description = "Reduce the duration of crowd control effects on you by 20%.", CCReduction = 0.20, Rarity = "Common" },
        Rare =      { Name = "Tenacity II",  Description = "Reduce the duration of crowd control effects on you by 35%.", CCReduction = 0.35, Rarity = "Rare" },
        Legendary = { Name = "Tenacity III", Description = "Reduce the duration of crowd control effects on you by 50%.", CCReduction = 0.50, Rarity = "Legendary" },
    },

    OpeningBurst = {
        Common =    { Name = "Opening Gambit I",   Description = "Abilities cost no cooldown for the first 4 seconds of each round.", FreeCastDuration = 4, Rarity = "Common" },
        Rare =      { Name = "Opening Gambit II",  Description = "Abilities cost no cooldown for the first 6 seconds of each round.", FreeCastDuration = 6, Rarity = "Rare" },
        Legendary = { Name = "Opening Gambit III", Description = "Abilities cost no cooldown for the first 8 seconds of each round.", FreeCastDuration = 8, Rarity = "Legendary" },
    },
}

return UniversalAugments