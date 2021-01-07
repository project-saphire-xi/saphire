-----------------------------------
-- tpz.effect.LETHARGIC_DAZE_1
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
    target:addMod(tpz.mod.EVA, -8)
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.EVA, -8)
end

return effecttbl
