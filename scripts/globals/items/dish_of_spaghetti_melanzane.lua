-----------------------------------
-- ID: 5213
-- Item: dish_of_spaghetti_melanzane
-- Food Effect: 30Min, All Races
-----------------------------------
-- Health % 25
-- Health Cap 100
-- Vitality 2
-- Store TP 6
-- Resist sleep 10
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local result = 0
    if target:hasStatusEffect(tpz.effect.FOOD) or target:hasStatusEffect(tpz.effect.FIELD_SUPPORT_FOOD) then
        result = tpz.msg.basic.IS_FULL
    end
    return result
end

item_object.onItemUse = function(target)
    target:addStatusEffect(tpz.effect.FOOD, 0, 0, 1800, 5213)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(tpz.mod.FOOD_HPP, 25)
    target:addMod(tpz.mod.FOOD_HP_CAP, 100)
    target:addMod(tpz.mod.VIT, 2)
    target:addMod(tpz.mod.STORETP, 6)
    target:addMod(tpz.mod.SLEEPRES, 10)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(tpz.mod.FOOD_HPP, 25)
    target:delMod(tpz.mod.FOOD_HP_CAP, 100)
    target:delMod(tpz.mod.VIT, 2)
    target:delMod(tpz.mod.STORETP, 6)
    target:delMod(tpz.mod.SLEEPRES, 10)
end

return item_object
