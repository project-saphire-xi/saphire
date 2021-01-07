-----------------------------------
-- tpz.effect.FEALTY
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
   target:addMod(tpz.mod.MEVA, 200)
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
   target:delMod(tpz.mod.MEVA, 200)
end

return effecttbl
