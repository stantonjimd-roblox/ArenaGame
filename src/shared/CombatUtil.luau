-- CombatUtil.luau
-- Shared helpers for dealing damage that respect dodge/avoidance state

local CombatUtil = {}

-- Deals damage to a character's humanoid unless they are currently dodging
-- (e.g. mid Conceal roll). Returns true if the damage landed, false if it
-- was dodged or the character/humanoid couldn't be found.
function CombatUtil.DealDamage(targetCharacter, amount)
	if not targetCharacter then return false end

	if targetCharacter:GetAttribute("Dodging") then
		return false
	end

	local humanoid = targetCharacter:FindFirstChild("Humanoid")
	if not humanoid then return false end

	humanoid:TakeDamage(amount)
	return true
end

return CombatUtil
