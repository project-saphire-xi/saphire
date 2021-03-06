-----------------------------------
-- Area: Valkurm Dunes
--  Mob: Damselfly
-- Note: Place holder Valkurm Emperor
-----------------------------------
local ID = require("scripts/zones/Valkurm_Dunes/IDs")
require("scripts/globals/regimes")
require("scripts/globals/mobs")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 9, 1, tpz.regime.type.FIELDS)
    tpz.regime.checkRegime(player, mob, 10, 2, tpz.regime.type.FIELDS)
end

entity.onMobDespawn = function(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.VALKURM_EMPEROR_PH, 5, 3600) -- 1 hour
end

return entity
