local options = {
    refreshRate = 0.1,
    debug = true,
    suppress = {
        groundUnitsFilterPrefixes = {""},
        suppressRadius = 100,
        fallBackRange = 200,
        fallBackMaxCount = 10,
        takeCoverRange = 350
    },
    splashDamage = {
        staticDamageBoost = 2000,
        waveExplosion = true,
        largerExplosions = true,
        damageModel = true,
        blastSearchRadius = 100,
        cascadeDamageThreshold = 0.1,
        unitDisabledHealth = 30,
        unitCantFireHealth = 50,
        infantryCantFireHealth = 75,
        explTable = {
            ["FAB_100"] = 45,
            ["FAB_250"] = 100,
            ["FAB_250M54TU"] = 100,
            ["FAB_500"] = 213,
            ["FAB_1500"] = 675,
            ["BetAB_500"] = 98,
            ["BetAB_500ShP"] = 107,
            ["KH-66_Grom"] = 108,
            ["M_117"] = 201,
            ["Mk_81"] = 60,
            ["Mk_82"] = 118,
            ["AN_M64"] = 121,
            ["Mk_83"] = 274,
            ["Mk_84"] = 582,
            ["MK_82AIR"] = 118,
            ["MK_82SNAKEYE"] = 118,
            ["GBU_10"] = 582,
            ["GBU_12"] = 118,
            ["GBU_16"] = 274,
            ["KAB_1500Kr"] = 675,
            ["KAB_500Kr"] = 213,
            ["KAB_500"] = 213,
            ["GBU_31"] = 582,
            ["GBU_31_V_3B"] = 582,
            ["GBU_31_V_2B"] = 582,
            ["GBU_31_V_4B"] = 582,
            ["GBU_32_V_2B"] = 202,
            ["GBU_38"] = 118,
            ["AGM_62"] = 400,
            ["GBU_24"] = 582,
            ["X_23"] = 111,
            ["X_23L"] = 111,
            ["X_28"] = 160,
            ["X_25ML"] = 89,
            ["X_25MP"] = 89,
            ["X_25MR"] = 140,
            ["X_58"] = 140,
            ["X_29L"] = 320,
            ["X_29T"] = 320,
            ["X_29TE"] = 320,
            ["AGM_84E"] = 488,
            ["AGM_88C"] = 89,
            ["AGM_122"] = 15,
            ["AGM_123"] = 274,
            ["AGM_130"] = 582,
            ["AGM_119"] = 176,
            ["AGM_154C"] = 305,
            ["S-24A"] = 24,
            -- ["S-24B"] = 123,
            ["S-25OF"] = 194,
            ["S-25OFM"] = 150,
            ["S-25O"] = 150,
            ["S_25L"] = 190,
            ["S-5M"] = 1,
            ["C_8"] = 4,
            ["C_8OFP2"] = 3,
            ["C_13"] = 21,
            ["C_24"] = 123,
            ["C_25"] = 151,
            ["HYDRA_70M15"] = 3,
            ["Zuni_127"] = 5,
            ["ARAKM70BHE"] = 4,
            ["BR_500"] = 118,
            ["Rb 05A"] = 217,
            ["HEBOMB"] = 40,
            ["HEBOMBD"] = 40,
            ["MK-81SE"] = 60,
            ["AN-M57"] = 56,
            ["AN-M64"] = 180,
            ["AN-M65"] = 295,
            ["AN-M66A2"] = 536,
            ["HYDRA_70_M151"] = 4,
            ["HYDRA_70_MK5"] = 4,
            ["Vikhr_M"] = 11,
            ["British_GP_250LB_Bomb_Mk1"] = 100, -- ("250 lb GP Mk.I")
            ["British_GP_250LB_Bomb_Mk4"] = 100, -- ("250 lb GP Mk.IV")
            ["British_GP_250LB_Bomb_Mk5"] = 100, -- ("250 lb GP Mk.V")
            ["British_GP_500LB_Bomb_Mk1"] = 213, -- ("500 lb GP Mk.I")
            ["British_GP_500LB_Bomb_Mk4"] = 213, -- ("500 lb GP Mk.IV")
            ["British_GP_500LB_Bomb_Mk4_Short"] = 213, -- ("500 lb GP Short tail")
            ["British_GP_500LB_Bomb_Mk5"] = 213, -- ("500 lb GP Mk.V")
            ["British_MC_250LB_Bomb_Mk1"] = 100, -- ("250 lb MC Mk.I")
            ["British_MC_250LB_Bomb_Mk2"] = 100, -- ("250 lb MC Mk.II")
            ["British_MC_500LB_Bomb_Mk1_Short"] = 213, -- ("500 lb MC Short tail")
            ["British_MC_500LB_Bomb_Mk2"] = 213, -- ("500 lb MC Mk.II")
            ["British_SAP_250LB_Bomb_Mk5"] = 100, -- ("250 lb S.A.P.")
            ["British_SAP_500LB_Bomb_Mk5"] = 213, -- ("500 lb S.A.P.")
            ["British_AP_25LBNo1_3INCHNo1"] = 4, -- ("RP-3 25lb AP Mk.I")
            ["British_HE_60LBSAPNo2_3INCHNo1"] = 4, -- ("RP-3 60lb SAP No2 Mk.I")
            ["British_HE_60LBFNo1_3INCHNo1"] = 4, -- ("RP-3 60lb F No1 Mk.I")
            ["WGr21"] = 4, -- ("Werfer-Granate 21 - 21 cm UnGd air-to-air rocket")
            ["3xM8_ROCKETS_IN_TUBES"] = 4, -- ("4.5 inch M8 UnGd Rocket")
            ["AN_M30A1"] = 45, -- ("AN-M30A1 - 100lb GP Bomb LD")
            ["AN_M57"] = 100, -- ("AN-M57 - 250lb GP Bomb LD")
            ["AN_M65"] = 400, -- ("AN-M65 - 1000lb GP Bomb LD")
            ["AN_M66"] = 800, -- ("AN-M66 - 2000lb GP Bomb LD")
            ["SC_50"] = 20, -- ("SC 50 - 50kg GP Bomb LD")
            ["ER_4_SC50"] = 20, -- ("4 x SC 50 - 50kg GP Bomb LD")
            ["SC_250_T1_L2"] = 100, -- ("SC 250 Type 1 L2 - 250kg GP Bomb LD")
            ["SC_501_SC250"] = 100, -- ("SC 250 Type 3 J - 250kg GP Bomb LD")
            ["Schloss500XIIC1_SC_250_T3_J"] = 100, -- ("SC 250 Type 3 J - 250kg GP Bomb LD")
            ["SC_501_SC500"] = 213, -- ("SC 500 J - 500kg GP Bomb LD")
            ["SC_500_L2"] = 213, -- ("SC 500 L2 - 500kg GP Bomb LD")
            ["SD_250_Stg"] = 100, -- ("SD 250 Stg - 250kg GP Bomb LD")
            ["SD_500_A"] = 213, -- ("SD 500 A - 500kg GP Bomb LD")
            ["AB_250_2_SD_2"] = 100, -- ("AB 250-2 - 144 x SD-2, 250kg CBU with HE submunitions")
            ["AB_250_2_SD_10A"] = 100, -- ("AB 250-2 - 17 x SD-10A, 250kg CBU with 10kg Frag/HE submunitions")
            ["AB_500_1_SD_10A"] = 213 -- ("AB 500-1 - 34 x SD-10A, 500kg CBU with 10kg Frag/HE submunitions")
        }
    }
}
local trackedWeapons = {}
local GroupSet = SET_GROUP:New():FilterCategoryGround():FilterPrefixes(options.suppress.groundUnitsFilterPrefixes)
    :FilterStart()

-- function onGroupTookCover(group)
--     MESSAGE:New(string.format("Group %s took cover", group:GetName()), 10):ToAll()
-- end

function dump(o)
    if type(o) == 'table' then
        local s = '{ '
        for k, v in pairs(o) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
        end
        return s .. '} '
    elseif type(o) == 'string' then
        return '"' .. o .. '"'
    else
        return tostring(o)
    end
end

local function tableHasKey(table, key)
    return table[key] ~= nil
end

function debug(msg)
    if options.debug then
        MESSAGE:New("[BGE] -> " .. dump(msg), 5):ToAll()
    end
end

function log(msg)
    BASE:I("[BGE] -> " .. dump(msg))
end

local function getDistance(point1, point2)
    local x1 = point1.x
    local y1 = point1.y
    local z1 = point1.z
    local x2 = point2.x
    local y2 = point2.y
    local z2 = point2.z
    local dX = math.abs(x1 - x2)
    local dZ = math.abs(z1 - z2)
    local distance = math.sqrt(dX * dX + dZ * dZ)
    return distance
end

local function vec3Mag(speedVec)
    local mag = speedVec.x * speedVec.x + speedVec.y * speedVec.y + speedVec.z * speedVec.z
    mag = math.sqrt(mag)
    return mag
end

local function lookahead(speedVec)
    local speed = vec3Mag(speedVec)
    local dist = speed * options.refreshRate * 1.5
    return dist
end

function explodeObject(table)
    local point = table[1]
    local distance = table[2]
    local power = table[3]
    trigger.action.explosion(point, power)
end

function getWeaponExplosive(name)
    if options.splashDamage.explTable[name] then
        return options.splashDamage.explTable[name]
    else
        return 0
    end
end

function modelUnitDamage(units)
    for i, unit in ipairs(units) do
        if unit:isExist() then -- if units are not already dead
            local health = (unit:getLife() / unit:getDesc().life) * 100
            if unit:hasAttribute("Infantry") == true and health > 0 and health <=
                options.splashDamage.infantryCantFireHealth then
                unit:getController():setOption(AI.Option.Ground.id.ROE, AI.Option.Ground.val.ROE.WEAPON_HOLD)
            end
            if unit:getDesc().category == Unit.Category.GROUND_UNIT == true and unit:hasAttribute("Infantry") == false and
                health > 0 then
                if health <= options.splashDamage.unitCantFireHealth then
                    unit:getController():setOption(AI.Option.Ground.id.ROE, AI.Option.Ground.val.ROE.WEAPON_HOLD)
                    debug(unit:getTypeName() .. " weapons disabled")
                end
                if health <= options.splashDamage.unitDisabledHealth and health > 0 then
                    ---disable unit's ability to move---
                    unit:getController():setTask({
                        id = 'Hold',
                        params = {}
                    })
                    unit:getController():setOnOff(false)
                    debug(unit:getTypeName() .. " disabled")
                end
            end

        else
            -- debug("unit no longer exists")
        end
    end
end

convertPointToDCSPoint = function(point)
    return {
        x = point.x,
        y = point.z,
        z = point.y
    }
end

hasLOS = function(impactPoint, targetPoint)
    local pointWithCorrectedHeight = {
        x = impactPoint.x,
        y = impactPoint.y,
        z = land.getHeight(impactPoint) + 1.8
    }
    local targetWithCorrectedHeight = {
        x = targetPoint.x,
        y = targetPoint.y,
        z = land.getHeight(targetPoint) + 1.8
    }
    if options.debug then
        debug("impactPoint " .. dump(pointWithCorrectedHeight))
        debug("targetPoint " .. dump(targetWithCorrectedHeight))
        ZONE_RADIUS:New("TP-" .. math.random(10000), targetWithCorrectedHeight, 1):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0},
            0, 1, true)
    end
    if not land.isVisible(convertPointToDCSPoint(pointWithCorrectedHeight),
        convertPointToDCSPoint(targetWithCorrectedHeight)) then
        debug("Aborted blast because found object has no LOS with the blast wave origin point")
        return false
    end
    return true
end

function blastWave(_point, _radius, weapon, power)
    local zone = ZONE_RADIUS:New("BW-" .. math.random(10000), _point, _radius)
    -- for Debug purposes
    if options.debug then
        zone:DrawZone(-1, {0.93, 0.5, 0.93}, 1, {0, 0, 0}, 0, 1, true)
    end
    --

    local foundUnits = {}
    local volS = {
        id = world.VolumeType.SPHERE,
        params = {
            point = zone:GetCoordinate():GetVec3(),
            radius = _radius
        }
    }

    local ifFound = function(foundObject, val)
        debug("Blast Wave -> Found " .. foundObject:getTypeName())
        if foundObject:getDesc().category == Unit.Category.GROUND_UNIT and foundObject:getCategory() ==
            Object.Category.UNIT then
            foundUnits[#foundUnits + 1] = foundObject
        end
        if options.splashDamage.waveExplosion then
            local obj = foundObject
            local tmpObjLocation = obj:GetPoint()
            local obj_location = {
                x = tmpObjLocation.x,
                y = tmpObjLocation.z,
                z = tmpObjLocation.y
            }
            if not hasLOS(_point, obj_location) then
                return
            end
            local distance = getDistance(_point, obj_location)
            local timing = distance / 500
            if obj:isExist() then
                if tableHasKey(obj:getDesc(), "box") then
                    local length = (obj:getDesc().box.max.x + math.abs(obj:getDesc().box.min.x))
                    local height = (obj:getDesc().box.max.y + math.abs(obj:getDesc().box.min.y))
                    local depth = (obj:getDesc().box.max.z + math.abs(obj:getDesc().box.min.z))
                    local _length = length
                    local _depth = depth
                    if depth > length then
                        _length = depth
                        _depth = length
                    end
                    local surface_distance = distance - _depth / 2
                    local scaled_power_factor = 0.006 * power + 1 -- this could be reduced into the calc on the next line
                    local intensity = (power * scaled_power_factor) / (4 * 3.14 * surface_distance * surface_distance)
                    local surface_area = _length * height -- Ideally we should roughly calculate the surface area facing the blast point, but we'll just find the largest side of the object for now
                    local damage_for_surface = intensity * surface_area
                    debug("Blast Wave -> " .. obj:getTypeName() .. " sa:" .. surface_area .. " distance:" ..
                              surface_distance .. " dfs:" .. damage_for_surface)
                    if damage_for_surface > options.splashDamage.cascadeDamageThreshold then
                        local explosion_size = damage_for_surface
                        if obj:getDesc().category == Unit.Category.STRUCTURE then
                            explosion_size = intensity * options.splashDamage.staticDamageBoost -- apply an extra damage boost for static objects. should we factor in surface_area?
                            -- debug("static obj :"..obj:getTypeName())
                        end
                        if explosion_size > power then
                            explosion_size = power
                        end -- secondary explosions should not be larger than the explosion that created it
                        local id = timer.scheduleFunction(explodeObject, {obj_location, distance, explosion_size},
                            timer.getTime() + timing) -- create the explosion on the object location
                    end

                else
                    debug("Blast Wave -> " .. obj:getTypeName() .. " object does not have box property")
                end
            else
                debug("Blast Wave -> " .. obj:getTypeName() .. " object no longer exists")
            end
        else
            debug("Blast Wave -> option is disabled")
        end

        return true
    end

    world.searchObjects(Object.Category.UNIT, volS, ifFound)
    world.searchObjects(Object.Category.STATIC, volS, ifFound)
    world.searchObjects(Object.Category.SCENERY, volS, ifFound)
    world.searchObjects(Object.Category.CARGO, volS, ifFound)
    -- world.searchObjects(Object.Category.BASE, volS, ifFound)

    if options.splashDamage.damageModel then
        local id = timer.scheduleFunction(modelUnitDamage, foundUnits, timer.getTime() + 1.5) -- allow some time for the game to adjust health levels before running our function
    end
end

function takeCover(group, heading, fallbackZone)
    local hideout = searchHideout(group, fallbackZone, heading)
    if not hideout then
        fallback(group, heading)
        return
    end
    local coverZone = ZONE_RADIUS:New("COVER-" .. math.random(10000), hideout:GetVec2(),
        options.suppress.fallBackRange - 25)

    -- for Debug purposes
    if options.debug then
        coverZone:DrawZone(-1, {0, 0, 1}, 1, {0, 0, 0}, 0, 1, true)
    end
    --
    group:RouteGroundTo(hideout, group:GetSpeedMax(), nil, 0, function(group)
        if group:IsInZone(coverZone) then
            group:OptionROEOpenFire()
            group.IsFallingBack = false
            group.fallbackCount = 0
            if onGroupTookCover then
                onGroupTookCover(group)
            end
        end
    end, {group})
end

function fallback(group, heading)
    if not group.fallBackCount then
        group.fallBackCount = 0
    elseif group.fallBackCount >= options.suppress.fallBackMaxCount then
        group:OptionROEOpenFire()
        group.IsFallingBack = false
        group.fallBackCount = 0
        if onGroupTookCover then
            onGroupTookCover(group)
        end
        return
    end
    group.fallBackCount = group.fallBackCount + 1
    local fallBackCoord = group:GetCoordinate():Translate(options.suppress.fallBackRange, heading)
    local fallbackZone = ZONE_RADIUS:New("FB-" .. math.random(10000), fallBackCoord:GetVec2(),
        options.suppress.fallBackRange - 25)

    -- for Debug purposes
    if options.debug then
        fallbackZone:DrawZone(-1, {0, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
    end
    --
    group:RouteGroundTo(fallBackCoord, group:GetSpeedMax(), nil, 0, function(group)
        if group:IsInZone(fallbackZone) then
            takeCover(group, heading, fallbackZone)
        end
    end, {group})
end

function searchHideout(group, fallbackZone, heading)
    -- We search objects in a zone with radius ~300 m around the group.
    local Zone = ZONE_RADIUS:New("FB-" .. math.random(10000), fallbackZone:GetCoordinate()
        :Translate(options.suppress.takeCoverRange, heading):GetVec2(), options.suppress.takeCoverRange - 25)

    if options.debug then
        Zone:DrawZone(-1, {0, 1, 0}, 1, {0, 0, 0}, 0, 1, true)
    end

    local gpos = group:GetCoordinate()

    -- Scan for Scenery objects to run/drive to.
    Zone:Scan(Object.Category.SCENERY)

    -- Array with all possible hideouts, i.e. scenery objects in the vicinity of the group.
    local hideouts = {}

    for SceneryTypeName, SceneryData in pairs(Zone:GetScannedScenery()) do
        for SceneryName, SceneryObject in pairs(SceneryData) do

            local SceneryObject = SceneryObject -- Wrapper.Scenery#SCENERY
            local objectSize = SceneryObject:GetObjectSize()
            local sceneryTypeName = SceneryObject:GetTypeName()

            -- Debug

            if options.debug then
                local MarkerID = SceneryObject:GetCoordinate():MarkToAll(
                    string.format("%s scenery object %s size %s", group:GetName(), sceneryTypeName, objectSize))
            end
            --

            local KEYWORDS = {"BUILDING", "INDUSTRIAL", "WAREHOUSE", "HUNGAR", "TANK", "BIG"}
            local foundKeyWord = false
            for _, keyword in pairs(KEYWORDS) do
                if string.find("TYPICAL_BLOCK_BUILDING_02", keyword) then
                    foundKeyWord = true
                end
            end
            if not foundKeyWord and (not objectSize or objectSize < 5) then
                break
            end

            -- Position of the scenery object.
            local spos = SceneryObject:GetCoordinate()

            -- Distance from group to hideout.
            local distance = spos:Get2DDistance(gpos)

            -- Add to table.
            table.insert(hideouts, {
                object = SceneryObject,
                distance = distance
            })
        end
    end

    -- Get random hideout place.
    local Hideout = nil
    if #hideouts > 0 then

        -- Sort results table wrt number of hits.
        local _sort = function(a, b)
            return a.distance < b.distance
        end
        table.sort(hideouts, _sort)

        -- Pick closest location.
        Hideout = hideouts[1].object:GetCoordinate():Translate(50, heading)

    else
        return
    end

    return Hideout

end

function suppress(group, heading)
    if group:GetUnit(1):HasAttribute("Infantry") then
        group:OptionROEHoldFire()
    end
    fallback(group, heading)
end

local function suppressInRadius(impactPoint, suppressRadius, dir)
    local zone = ZONE_RADIUS:New("IP-" .. math.random(10000), impactPoint, suppressRadius)

    GroupSet:ForEachGroup(function(group)
        if group:IsInZone(zone) then
            local rand = math.random(-60, 60)
            local heading = group:GetCoordinate():GetAngleDegrees(dir) + rand
            if heading > 359 then
                heading = heading - 360
            elseif heading < 0 then
                heading = heading + 360
            end
            if not group.IsFallingBack then
                group.IsFallingBack = true
                suppress(group, heading)
            end
        end
    end)
end

local function trackWeapons()
    for wpn_id_, wpnData in pairs(trackedWeapons) do
        if wpnData.wpn:isExist() then
            local position = wpnData.wpn:getPosition()
            wpnData.pos = {
                x = position.p.x,
                y = position.p.z
            }
            wpnData.dir = position.x
            wpnData.speed = wpnData.wpn:getVelocity()
        else
            local ip = land.getIP(wpnData.pos, wpnData.dir, lookahead(wpnData.speed))
            local impactPoint
            if not ip then
                impactPoint = wpnData.pos
            else
                impactPoint = ip
            end
            impactPoint.z = land.getHeight(impactPoint)
            -- for Debug purposes
            if options.debug then
                ZONE_RADIUS:New("IP-" .. math.random(10000), impactPoint, 1):DrawZone(-1, {0, 0, 0}, 1, {0, 0, 0}, 1, 1,
                    true)
            end
            --
            local wpnExplosive = getWeaponExplosive(wpnData.name)
            debug(string.format("%s: %s wpnExplosive > 0 = %s", wpnData.name, wpnExplosive, tostring(wpnExplosive > 0)))
            if wpnExplosive > 0 then
                if options.splashDamage.largerExplosions then
                    trigger.action.explosion(impactPoint, wpnExplosive)
                    if options.debug then
                        trigger.action.smoke(impactPoint, 0)
                    end
                end
                blastWave(impactPoint, wpnExplosive * 2, wpnData.wpn, wpnExplosive)
            end
            suppressInRadius(impactPoint, options.suppress.suppressRadius, wpnData.dir)
            trackedWeapons[wpn_id_] = nil
        end
    end
end

local function onWeaponEvent(event)
    log(dump(event.weapon))
    debug(dump(event.weapon))
    if event.id == world.event.S_EVENT_SHOT then
        if event.weapon then
            if not options.splashDamage.explTable[event.weapon:getTypeName()] then
                log(event.weapon:getTypeName() .. " missing from BGE's Splash Damage script")
                debug(event.weapon:getTypeName() .. " missing from BGE's Splash Damage script")
            end
            trackedWeapons[event.weapon.id_] = {
                wpn = event.weapon,
                init = event.initiator:getName(),
                pos = event.weapon:getPoint(),
                dir = event.weapon:getPosition().x,
                name = event.weapon:getTypeName(),
                speed = event.weapon:getVelocity(),
                cat = event.weapon:getCategory()
            }
        end
    end
end

GroupSet:HandleEvent(EVENTS.Shot)
GroupSet:HandleEvent(EVENTS.ShootingStart)
GroupSet:HandleEvent(EVENTS.ShootingEnd)

function GroupSet:OnEventShot(Event)
    onWeaponEvent(Event)
end
function GroupSet:OnEventShootingStart(Event)
    onWeaponEvent(Event)
end
function GroupSet:S_EVENT_SHOOTING_END(Event)
    onWeaponEvent(Event)
end

timer.scheduleFunction(function()
    trackWeapons()
    return timer.getTime() + options.refreshRate
end, {}, timer.getTime() + options.refreshRate)

MESSAGE:New("Better Ground Engagements loaded", 10):ToAll()
