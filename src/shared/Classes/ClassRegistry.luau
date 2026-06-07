-- ClassRegistry.luau
-- The single source of truth for all classes in the game
-- Links each class to its data, abilities, and augment pools

local ClassRegistry = {

    Warrior = {
        Data        = "shared.Classes.WarriorData",
        Abilities   = "shared.Abilities.WarriorAbilities",
        Type        = "Melee",
        Rarity      = "Common",
        AugmentPools = { "Universal", "Melee" },
    },

    Berserker = {
        Data        = "shared.Classes.BerserkerData",
        Abilities   = "shared.Abilities.BerserkerAbilities",
        Type        = "Melee",
        Rarity      = "Common",
        AugmentPools = { "Universal", "Melee" },
    },

    Ranger = {
        Data        = "shared.Classes.RangerData",
        Abilities   = "shared.Abilities.RangerAbilities",
        Type        = "Ranged",
        Rarity      = "Common",
        AugmentPools = { "Universal", "Ranged" },
    },

    Paladin = {
        Data        = "shared.Classes.PaladinData",
        Abilities   = "shared.Abilities.PaladinAbilities",
        Type        = "Melee",
        Rarity      = "Uncommon",
        AugmentPools = { "Universal", "Melee" },
    },

    Mage = {
        Data        = "shared.Classes.MageData",
        Abilities   = "shared.Abilities.MageAbilities",
        Type        = "Mage",
        Rarity      = "Uncommon",
        AugmentPools = { "Universal", "Mage" },
    },

    Shadow = {
        Data        = "shared.Classes.ShadowData",
        Abilities   = "shared.Abilities.ShadowAbilities",
        Type        = "Melee",
        Rarity      = "Uncommon",
        AugmentPools = { "Universal", "Melee" },
    },

    Pyromancer = {
        Data        = "shared.Classes.PyromancerData",
        Abilities   = "shared.Abilities.PyromancerAbilities",
        Type        = "Mage",
        Rarity      = "Rare",
        AugmentPools = { "Universal", "Mage" },
    },

    FrostLich = {
        Data        = "shared.Classes.FrostLichData",
        Abilities   = "shared.Abilities.FrostLichAbilities",
        Type        = "Mage",
        Rarity      = "Rare",
        AugmentPools = { "Universal", "Mage" },
    },

    ThunderGod = {
        Data        = "shared.Classes.ThunderGodData",
        Abilities   = "shared.Abilities.ThunderGodAbilities",
        Type        = "Mage",
        Rarity      = "Epic",
        AugmentPools = { "Universal", "Mage" },
    },

    VoidWalker = {
        Data        = "shared.Classes.VoidWalkerData",
        Abilities   = "shared.Abilities.VoidWalkerAbilities",
        Type        = "Melee",
        Rarity      = "Epic",
        AugmentPools = { "Universal", "Melee", "Mage" },
    },

    DragonKnight = {
        Data        = "shared.Classes.DragonKnightData",
        Abilities   = "shared.Abilities.DragonKnightAbilities",
        Type        = "Melee",
        Rarity      = "Legendary",
        AugmentPools = { "Universal", "Melee" },
    },

    DeathBringer = {
        Data        = "shared.Classes.DeathBringerData",
        Abilities   = "shared.Abilities.DeathBringerAbilities",
        Type        = "Ranged",
        Rarity      = "Legendary",
        AugmentPools = { "Universal", "Ranged" },
    },
}

return ClassRegistry