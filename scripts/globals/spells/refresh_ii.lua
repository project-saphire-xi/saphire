-----------------------------------
-- Spell: Refresh II
-- Gradually restores target party member's MP
-- Composure increases duration 3x
-----------------------------------
require("scripts/globals/magic")
require("scripts/globals/msg")
require("scripts/globals/status")
-----------------------------------
local spell_object = {}

spell_object.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spell_object.onSpellCast = function(caster, target, spell)
    local duration = calculateDuration(150, spell:getSkillType(), spell:getSpellGroup(), caster, target)
    duration = calculateDurationForLvl(duration, 82, target:getMainLvl())

    local mp = 6 + caster:getMod(tpz.mod.ENHANCES_REFRESH)

    if target:hasStatusEffect(tpz.effect.SUBLIMATION_ACTIVATED) or target:hasStatusEffect(tpz.effect.SUBLIMATION_COMPLETE) then
        spell:setMsg(tpz.msg.basic.MAGIC_NO_EFFECT)
        return 0
    end

    target:delStatusEffect(tpz.effect.REFRESH)
    target:addStatusEffect(tpz.effect.REFRESH, mp, 0, duration)

    return tpz.effect.REFRESH
end

return spell_object
