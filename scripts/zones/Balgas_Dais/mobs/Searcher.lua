-----------------------------------
-- Area: Balga's Dais
--  Mob: Searcher
-- Mission 2-3 BCNM Fight
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobInitialize = function(mob)
    mob:setMobMod(tpz.mobMod.HP_STANDBACK, 50)
end

function onMobDeath(mob, player, isKiller)
end

return entity
