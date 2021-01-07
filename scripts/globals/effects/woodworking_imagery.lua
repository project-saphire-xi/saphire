-----------------------------------
-- tpz.effect.WOODWORKING_IMAGERY
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
    target:addMod(tpz.mod.WOOD, effect:getPower())
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.WOOD, effect:getPower())
end

return effecttbl
