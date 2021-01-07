-----------------------------------
-- tpz.effect.LETHARGIC_DAZE_3
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
    target:addMod(tpz.mod.EVA, -16)
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.EVA, -16)
end

return effecttbl
