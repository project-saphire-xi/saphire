-----------------------------------
-- tpz.effect.PROTECT
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
   target:addMod(tpz.mod.DEF, effect:getPower())
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
   target:delMod(tpz.mod.DEF, effect:getPower())
end

return effecttbl
