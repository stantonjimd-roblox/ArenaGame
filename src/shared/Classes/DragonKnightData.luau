-- DragonKnight.luau
-- A legendary armored warrior who breathes fire and crushes enemies

local DragonKnight = {
    Name = "Dragon Knight",
    Description = "A legendary warrior bonded with a dragon, breathing fire and wearing scales as armor.",
    Rarity = "Legendary",

    -- Weapon
    Weapon = {
        Name = "Dragon Lance",
        Type = "Melee",
        Range = 8,
        AttackSpeed = 0.9,
    },

    -- Base stats
    Stats = {
        Health = 280,
        Speed = 14,
        Damage = 70,
        Armor = 40,
        FireBreathDamage = 35,
        FireBreathRange = 20,
    },

    Attributes = {
        Common = {
            { Name = "Dragon Scales",  Description = "Gain 15 armor",                               Armor = 15 },
            { Name = "Ember Breath",   Description = "Gain 10 fire breath damage",                  FireBreathDamage = 10 },
        },
        Uncommon = {
            { Name = "Dragon Blood",   Description = "Gain 30 health and 15 armor",                 Health = 30, Armor = 15 },
            { Name = "Scorched Earth", Description = "Gain 20 fire breath damage and 10 range",     FireBreathDamage = 20, FireBreathRange = 10 },
        },
        Rare = {
            { Name = "Ancient Scales", Description = "Gain 50 armor and 30 health",                 Armor = 50, Health = 30 },
            { Name = "Inferno Breath", Description = "Gain 40 fire breath damage and 20 range",     FireBreathDamage = 40, FireBreathRange = 20 },
        },
        Epic = {
            { Name = "Dragon Ascension", Description = "Gain 60 damage, 50 armor, and 50 fire breath damage", Damage = 60, Armor = 50, FireBreathDamage = 50 },
        },
        Legendary = {
            { Name = "Avatar of the Dragon", Description = "Gain 100 damage, 80 armor, and 100 fire breath damage", Damage = 100, Armor = 80, FireBreathDamage = 100 },
        },
    }
}

return DragonKnight