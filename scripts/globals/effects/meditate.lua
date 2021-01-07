-----------------------------------
-- tpz.effect.MEDITATE
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
    target:addMod(tpz.mod.REGAIN, effect:getPower() * 10)
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.REGAIN, effect:getPower() * 10)
end

return effecttbl
