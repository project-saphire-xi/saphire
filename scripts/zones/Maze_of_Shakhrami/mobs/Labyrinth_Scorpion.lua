-----------------------------------
-- Area: Maze of Shakhrami
--  Mob: Labyrinth Scorpion
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 700, 2, tpz.regime.type.GROUNDS)
end

return entity
