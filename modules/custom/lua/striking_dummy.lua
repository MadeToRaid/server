-----------------------------------
-- Add a Striking Dummy to GM home and outside cities
-----------------------------------
require('modules/module_utils')
require('scripts/zones/GM_Home/Zone')
-----------------------------------
local m = Module:new('strikingdummy')

onStrikingDummySpawn = function(mob)
    mob:setMobFlags(65542)
    mob:setMobLevel(75)
    mob:setMod(xi.mod.DEF, 300)
    mob:setMod(xi.mod.EVA, 0)
    mob:setMod(xi.mod.MEVA, 0)
    mob:setMaxHP(100000)
    mob:setMaxMP(10000)
    mob:setHP(100000)
    mob:setMP(10000)
    mob:setUnkillable(true)
    mob:setMod(xi.mod.REGEN, 1000)
    mob:setMod(xi.mod.REFRESH, 100)
    mob:hideHP(true)
    mob:setMobMod(xi.mobMod.NO_MOVE, 1)
    mob:setAutoAttackEnabled(false)
end

onStrikingDummyEngage = function(mob)
    mob:setCallForHelpFlag(true)
end

onStrikingDummyFight = function(mob, target)
    if mob:checkDistance(target) > 10 then
        mob:disengage()
    end
end

m:addOverride('xi.zones.GM_Home.Zone.onInitialize', function(zone)
    super(zone)

    local strikingdummy = zone:insertDynamicEntity({
        objtype = xi.objType.MOB,
        name = 'Striking Dummy',
        look = 77,
        x = 10,
        y = 0,
        z = 10,
        rotation = 0,
        widescan = 1,
        onMobSpawn = onStrikingDummySpawn,
        onMobEngage = onStrikingDummyEngage,
        onMobFight = onStrikingDummyFight,
    })

    strikingdummy:setSpawn(10, 0, 10, 0)
    strikingdummy:spawn()
    utils.unused(strikingdummy)
end)

m:addOverride('xi.zones.West_Ronfaure.Zone.onInitialize', function(zone)
    super(zone)

    local strikingdummy = zone:insertDynamicEntity({
        objtype = xi.objType.MOB,
        name = 'Striking Dummy',
        look = 77,
        x = -153.604,
        y = -60.000,
        z = 277.508,
        rotation = 117,
        widescan = 1,
        onMobSpawn = onStrikingDummySpawn,
        onMobEngage = onStrikingDummyEngage,
        onMobFight = onStrikingDummyFight,
    })

    strikingdummy:setSpawn(-153.604, -60, 277.508, 117)
    strikingdummy:spawn()
    utils.unused(strikingdummy)
end)

m:addOverride('xi.zones.South_Gustaberg.Zone.onInitialize', function(zone)
    super(zone)

    local strikingdummy = zone:insertDynamicEntity({

        objtype = xi.objType.MOB,
        name = 'Striking Dummy',
        look = 77,
        x = 260.49,
        y = 0.784,
        z = -233.302,
        rotation = 192,
        widescan = 1,
        onMobSpawn = onStrikingDummySpawn,
        onMobEngage = onStrikingDummyEngage,
        onMobFight = onStrikingDummyFight,
    })

    strikingdummy:setSpawn(260.49, 0.784, -233.302, 192)
    strikingdummy:spawn()
    utils.unused(strikingdummy)
end)

m:addOverride('xi.zones.East_Sarutabaruta.Zone.onInitialize', function(zone)
    super(zone)

    local strikingdummy = zone:insertDynamicEntity({
        objtype = xi.objType.MOB,
        name = 'Striking Dummy',
        look = 77,
        x = -99.095,
        y = -4.945,
        z = -506.852,
        rotation = 37,
        widescan = 1,
        onMobSpawn = onStrikingDummySpawn,
        onMobEngage = onStrikingDummyEngage,
        onMobFight = onStrikingDummyFight,
    })

    strikingdummy:setSpawn(-99.095, -4.945, -506.852, 37)
    strikingdummy:spawn()
    utils.unused(strikingdummy)
end)

return m
