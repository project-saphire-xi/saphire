-----------------------------------
-- tpz.effect.AVENGERS_ROLL
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
    target:addMod(tpz.mod.COUNTER, effect:getPower())
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.COUNTER, effect:getPower())
end

return effecttbl
