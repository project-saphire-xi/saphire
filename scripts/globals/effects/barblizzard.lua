-----------------------------------
-- tpz.effect.BARBLIZZARD
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
    target:addMod(tpz.mod.ICERES, effect:getPower())
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.ICERES, effect:getPower())
end

return effecttbl
