-- RarityConfig.luau
-- Defines rarity tiers and their colors/labels

local RarityConfig = {
    Common = {
        Name = "Common",
        Color = Color3.fromRGB(255, 255, 255),   -- White
        Weight = 50,
    },
    Uncommon = {
        Name = "Uncommon",
        Color = Color3.fromRGB(30, 255, 30),     -- Green
        Weight = 25,
    },
    Rare = {
        Name = "Rare",
        Color = Color3.fromRGB(30, 100, 255),    -- Blue
        Weight = 15,
    },
    Epic = {
        Name = "Epic",
        Color = Color3.fromRGB(163, 53, 238),    -- Purple
        Weight = 8,
    },
    Legendary = {
        Name = "Legendary",
        Color = Color3.fromRGB(255, 165, 0),     -- Orange
        Weight = 2,
    },
}

return RarityConfig