-----------------------------------
-- tpz.effect.MONKS_ROLL
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
    target:addMod(tpz.mod.SUBTLE_BLOW, effect:getPower())
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.SUBTLE_BLOW, effect:getPower())
end

return effecttbl
