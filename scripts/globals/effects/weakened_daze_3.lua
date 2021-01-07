-----------------------------------
-- tpz.effect.WEAKENED_DAZE_3
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
    target:addMod(tpz.mod.MEVA, -20)
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.MEVA, -20)
end

return effecttbl
