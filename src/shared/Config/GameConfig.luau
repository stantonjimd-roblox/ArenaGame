-- GameConfig.luau
-- Central settings for the Arena game

local GameConfig = {
    -- Team settings
    TEAMS = 8,
    PLAYERS_PER_TEAM = 2,
    TOTAL_PLAYERS = 16,

    -- Round settings
    ROUND_COUNT = 7,
    ROUND_TIMER = 180,

    -- Class roll settings
    REROLL_COUNT = 3,

    -- Revive settings
    REVIVES_PER_TEAM_PER_ROUND = 2,   -- Each team gets 2 revives per round
    REVIVE_CHANNEL_TIME = 2.5,        -- Seconds standing near teammate to revive
    REVIVE_HEALTH_PERCENT = 0.40,     -- Revived player comes back at 40% health
    REVIVE_RANGE = 6,                 -- How close you need to be to revive
    FIRST_DEATH_ONLY = true,          -- Revive only available on first death per player per round

    -- Rarity weights (higher = more common)
    RARITY_WEIGHTS = {
        Common = 50,
        Uncommon = 25,
        Rare = 15,
        Epic = 8,
        Legendary = 2,
    }
}

return GameConfig