-----------------------------------
-- Area: Labyrinth of Onzozo
--  Mob: Boribaba
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 776, 2, tpz.regime.type.GROUNDS)
end

return entity
