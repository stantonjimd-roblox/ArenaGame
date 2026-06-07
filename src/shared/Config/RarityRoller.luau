-- RarityRoller.luau
-- Handles rolling a random rarity based on weights

local RarityConfig = require(script.Parent.RarityConfig)

local RarityRoller = {}

-- Builds a weighted list and picks a random rarity
function RarityRoller.Roll()
    local pool = {}

    -- Fill the pool based on weights
    for rarityName, data in pairs(RarityConfig) do
        for i = 1, data.Weight do
            table.insert(pool, rarityName)
        end
    end

    -- Pick a random entry from the pool
    local roll = math.random(1, #pool)
    return pool[roll]
end

return RarityRoller