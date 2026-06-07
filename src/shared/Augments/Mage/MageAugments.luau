-- MageAugments.luau
-- Augments available to mage classes
-- Applies to: Mage, Pyromancer, Frost Lich, Thunder God

local MageAugments = {

    -- =====================
    -- OFFENSIVE
    -- =====================

    SpellAmplify = {
        Common =    { Name = "Spell Power I",   Description = "All ability damage increased by 10%.", SpellDamage = 0.10, Rarity = "Common" },
        Rare =      { Name = "Spell Power II",  Description = "All ability damage increased by 20%.", SpellDamage = 0.20, Rarity = "Rare" },
        Legendary = { Name = "Spell Power III", Description = "All ability damage increased by 32%.", SpellDamage = 0.32, Rarity = "Legendary" },
    },

    AOESize = {
        Common =    { Name = "Wide Cast I",   Description = "Increase the radius of all AOE abilities by 15%.", AOEBonus = 0.15, Rarity = "Common" },
        Rare =      { Name = "Wide Cast II",  Description = "Increase the radius of all AOE abilities by 25%.", AOEBonus = 0.25, Rarity = "Rare" },
        Legendary = { Name = "Wide Cast III", Description = "Increase the radius of all AOE abilities by 40%.", AOEBonus = 0.40, Rarity = "Legendary" },
    },

    DoubleCastChance = {
        Common =    { Name = "Echo Spell I",   Description = "Abilities have a 10% chance to cast a second time instantly.", DoubleCastChance = 0.10, Rarity = "Common" },
        Rare =      { Name = "Echo Spell II",  Description = "Abilities have a 18% chance to cast a second time instantly.", DoubleCastChance = 0.18, Rarity = "Rare" },
        Legendary = { Name = "Echo Spell III", Description = "Abilities have a 28% chance to cast a second time instantly.", DoubleCastChance = 0.28, Rarity = "Legendary" },
    },

    BonusSpellRange = {
        Common =    { Name = "Far Reach I",   Description = "Increase the range of all abilities by 10 studs.", RangeBonus = 10, Rarity = "Common" },
        Rare =      { Name = "Far Reach II",  Description = "Increase the range of all abilities by 18 studs.", RangeBonus = 18, Rarity = "Rare" },
        Legendary = { Name = "Far Reach III", Description = "Increase the range of all abilities by 28 studs.", RangeBonus = 28, Rarity = "Legendary" },
    },

    CCAmplify = {
        Common =    { Name = "Binding Spells I",   Description = "Your crowd control abilities last 20% longer.", CCDuration = 0.20, Rarity = "Common" },
        Rare =      { Name = "Binding Spells II",  Description = "Your crowd control abilities last 35% longer.", CCDuration = 0.35, Rarity = "Rare" },
        Legendary = { Name = "Binding Spells III", Description = "Your crowd control abilities last 55% longer.", CCDuration = 0.55, Rarity = "Legendary" },
    },

    BonusVsCC = {
        Common =    { Name = "Arcane Exploitation I",   Description = "Deal 15% bonus spell damage to slowed or stunned enemies.", BonusVsCC = 0.15, Rarity = "Common" },
        Rare =      { Name = "Arcane Exploitation II",  Description = "Deal 28% bonus spell damage to slowed or stunned enemies.", BonusVsCC = 0.28, Rarity = "Rare" },
        Legendary = { Name = "Arcane Exploitation III", Description = "Deal 45% bonus spell damage to slowed or stunned enemies.", BonusVsCC = 0.45, Rarity = "Legendary" },
    },

    -- =====================
    -- DEFENSIVE
    -- =====================

    ShieldOnCast = {
        Common =    { Name = "Mana Shield I",   Description = "Gain a 25 health shield after casting an ability.", ShieldOnCast = 25, Rarity = "Common" },
        Rare =      { Name = "Mana Shield II",  Description = "Gain a 50 health shield after casting an ability.", ShieldOnCast = 50, Rarity = "Rare" },
        Legendary = { Name = "Mana Shield III", Description = "Gain an 80 health shield after casting an ability.", ShieldOnCast = 80, Rarity = "Legendary" },
    },

    BlinkCooldown = {
        Common =    { Name = "Phase Step I",   Description = "Reduce the cooldown of your movement ability by 2 seconds.", CDReduction = 2, Ability = "Ability3", Rarity = "Common" },
        Rare =      { Name = "Phase Step II",  Description = "Reduce the cooldown of your movement ability by 3 seconds.", CDReduction = 3, Ability = "Ability3", Rarity = "Rare" },
        Legendary = { Name = "Phase Step III", Description = "Reduce the cooldown of your movement ability by 5 seconds.", CDReduction = 5, Ability = "Ability3", Rarity = "Legendary" },
    },

    HealOnSpellHit = {
        Common =    { Name = "Arcane Mending I",   Description = "Heal for 8% of ability damage dealt.", LifeSteal = 0.08, Rarity = "Common" },
        Rare =      { Name = "Arcane Mending II",  Description = "Heal for 15% of ability damage dealt.", LifeSteal = 0.15, Rarity = "Rare" },
        Legendary = { Name = "Arcane Mending III", Description = "Heal for 25% of ability damage dealt.", LifeSteal = 0.25, Rarity = "Legendary" },
    },

    SpellWard = {
        Common =    { Name = "Counterspell I",   Description = "Take 12% less damage from enemy abilities.", AbilityDamageReduction = 0.12, Rarity = "Common" },
        Rare =      { Name = "Counterspell II",  Description = "Take 22% less damage from enemy abilities.", AbilityDamageReduction = 0.22, Rarity = "Rare" },
        Legendary = { Name = "Counterspell III", Description = "Take 35% less damage from enemy abilities.", AbilityDamageReduction = 0.35, Rarity = "Legendary" },
    },

    -- =====================
    -- UTILITY
    -- =====================

    CooldownReductionGlobal = {
        Common =    { Name = "Arcane Haste I",   Description = "Reduce all ability cooldowns by 8%.", GlobalCDR = 0.08, Rarity = "Common" },
        Rare =      { Name = "Arcane Haste II",  Description = "Reduce all ability cooldowns by 15%.", GlobalCDR = 0.15, Rarity = "Rare" },
        Legendary = { Name = "Arcane Haste III", Description = "Reduce all ability cooldowns by 25%.", GlobalCDR = 0.25, Rarity = "Legendary" },
    },

    SpellVamp = {
        Common =    { Name = "Soul Siphon I",   Description = "Hitting an enemy with an ability restores 5 health per second for 3 seconds.", RegenOnHit = 5, Duration = 3, Rarity = "Common" },
        Rare =      { Name = "Soul Siphon II",  Description = "Hitting an enemy with an ability restores 10 health per second for 3 seconds.", RegenOnHit = 10, Duration = 3, Rarity = "Rare" },
        Legendary = { Name = "Soul Siphon III", Description = "Hitting an enemy with an ability restores 18 health per second for 4 seconds.", RegenOnHit = 18, Duration = 4, Rarity = "Legendary" },
    },

    OnKillReset = {
        Common =    { Name = "Arcane Execution I",   Description = "Killing an enemy reduces all cooldowns by 2 seconds.", CDROnKill = 2, Rarity = "Common" },
        Rare =      { Name = "Arcane Execution II",  Description = "Killing an enemy reduces all cooldowns by 4 seconds.", CDROnKill = 4, Rarity = "Rare" },
        Legendary = { Name = "Arcane Execution III", Description = "Killing an enemy resets your lowest cooldown ability completely.", ResetLowestCD = true, Rarity = "Legendary" },
    },

    SpeedOnCast = {
        Common =    { Name = "Spellweaver I",   Description = "Gain 12% movement speed for 2 seconds after casting an ability.", SpeedOnCast = 0.12, Duration = 2, Rarity = "Common" },
        Rare =      { Name = "Spellweaver II",  Description = "Gain 22% movement speed for 2 seconds after casting an ability.", SpeedOnCast = 0.22, Duration = 2, Rarity = "Rare" },
        Legendary = { Name = "Spellweaver III", Description = "Gain 35% movement speed for 3 seconds after casting an ability.", SpeedOnCast = 0.35, Duration = 3, Rarity = "Legendary" },
    },
}

return MageAugments