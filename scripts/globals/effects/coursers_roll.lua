-----------------------------------
-- tpz.effect.COURSERS_ROLL
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
    -- target:addMod(tpz.mod.SNAPSHOT, effect:getPower())
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    -- target:delMod(tpz.mod.SNAPSHOT, effect:getPower())
end

return effecttbl
