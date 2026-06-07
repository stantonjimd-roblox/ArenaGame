-- EconomyConfig.luau
-- All shard economy settings for the Arena game

local EconomyConfig = {

    -- =====================
    -- CURRENCY
    -- =====================

    CURRENCY_NAME = "Shards",
    SHARDS_PER_PENNY = 10,       -- 10 shards = $0.01

    -- =====================
    -- EARNING
    -- =====================

    SHARDS_PER_MATCH = 30,
    SHARDS_PER_DAILY = 150,

    -- Bonus shards for performance
    SHARDS_PER_WIN = 20,
    SHARDS_PER_KILL = 2,
    SHARDS_PER_ROUND_WON = 5,

    -- =====================
    -- ROLLING
    -- =====================

    ROLL_COST = 1500,

    -- Roll odds (must add up to 100)
    ROLL_ODDS = {
        Common    = 50,
        Uncommon  = 30,
        Rare      = 10,
        Epic      = 5,
        Legendary = 1,
        -- Remaining 4% goes to Uncommon making it effectively 34%
        -- Adjust these to balance feel
    },

    -- =====================
    -- SLOTS
    -- =====================

    STARTING_SLOTS = 1,
    MAX_SLOTS = 6,

    -- Cost to unlock each additional slot
    SLOT_UNLOCK_COSTS = {
        [2] = 1000,
        [3] = 2000,
        [4] = 4000,
        [5] = 8000,
        [6] = 16000,
    },

    -- Starting classes every new account gets
    STARTING_CLASSES = { "Warrior", "Berserker" },
    -- One is randomly assigned to the starting slot

    -- =====================
    -- CLASS PICK UPGRADE
    -- =====================

    CLASS_PICK_UPGRADE_COST = 15000,
    -- One time purchase, permanent
    -- Allows player to choose which owned class to play each match

    -- =====================
    -- REAL MONEY PACKAGES
    -- =====================

    SHARD_PACKAGES = {
        { Name = "Starter",     Shards = 1500,  Price = 1.49 },
        { Name = "Popular",     Shards = 5000,  Price = 4.99 },
        { Name = "Value",       Shards = 12000, Price = 9.99 },
        { Name = "Super Value", Shards = 28000, Price = 19.99 },
        { Name = "Mega Value",  Shards = 65000, Price = 39.99 },
    },
}

return EconomyConfig