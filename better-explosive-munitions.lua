ZONE:New("5"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
ZONE:New("10"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
ZONE:New("15"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
ZONE:New("20"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
ZONE:New("25"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
ZONE:New("30"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
ZONE:New("35"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
ZONE:New("40"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
ZONE:New("45"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
ZONE:New("50"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
ZONE:New("60"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
ZONE:New("70"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
ZONE:New("80"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
ZONE:New("90"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)
ZONE:New("100"):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0}, 0, 1, true)

local wpnExplosiveRadius = 4
local wpnBlastRadius = wpnExplosiveRadius * 2
local unitPosition = UNIT:FindByName("Ground-2-1"):GetPosition()
local impactPoint = {
    x = unitPosition.p.x,
    y = unitPosition.p.z
}
local options = {
    debug = true
}
impactPoint.z = land.getHeight(impactPoint)

ZONE_RADIUS:New("IP-" .. math.random(10000), impactPoint, 0.1):DrawZone(-1, {0, 0, 0}, 1, {0, 0, 0}, 1, 1, true)

-- trigger.action.explosion(convertPointToDCSPoint(impactPoint), 2.25)
-- blastWave(impactPoint, wpnBlastRadius, nil, wpnExplosive)
function convertPointToDCSPoint(point)
    return {
        x = point.x,
        y = point.z,
        z = point.y
    }
end

function getPosition(unit)
    local unitPosition = unit:GetPosition()
    return {
        x = unitPosition.p.x,
        y = unitPosition.p.z,
        z = land.getHeight({
            x = unitPosition.p.x,
            y = unitPosition.p.z
        })
    }
end

function getDistance(point1, point2)
    return POINT_VEC2:New(point1.x, point1.y):DistanceFromPointVec2(POINT_VEC2:New(point2.x, point2.y))
end

function hasLOS(impactPoint, targetPoint)
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
        ZONE_RADIUS:New("TP-" .. math.random(10000), targetWithCorrectedHeight, 1):DrawZone(-1, {1, 0, 0}, 1, {0, 0, 0},
            0, 1, true)
    end
    if not land.isVisible(convertPointToDCSPoint(pointWithCorrectedHeight),
        convertPointToDCSPoint(targetWithCorrectedHeight)) then
        debug("Aborted blast because found object has no LOS with the blast wave origin point")
        return false
    end
    -- check if there's stuff in the way with bounding boxes
    return true
end

function calculateBlastDamage(unit, distanceFromImpact, radius)
    local explosivePower
    if distanceFromImpact > 1 then
        explosivePower = 0.25 * math.log(radius) * (1 / distanceFromImpact)
    else
        explosivePower = 0
    end
    return explosivePower
end

function getObjectsInZone(types, zone, exclusionZone)
    zone:Scan(types)
    local units = SET_UNIT:New()
    local unitsAndStatics = zone:GetScannedSetUnit()
    unitsAndStatics:ForEachUnit(function(unit)
        if unit:IsInZone(zone) then
            if not exclusionZone or not unit:IsInZone(exclusionZone) then
                units:AddUnit(unit)
            end
        end
    end)
    local scenery = zone:GetScannedScenery()
    return {
        units = units,
        scenery = scenery
    }
end

function applyExplosion(impactPoint, weaponExplosiveRadius)
    trigger.action.explosion(convertPointToDCSPoint(impactPoint), weaponExplosiveRadius / 4) -- weaponExplosiveRadius / 2)
end

function applyBlast(objects, impactPoint, weaponBlastRadius)
    -- Bounding boxes must be calculated before the LOS is checked and we iterate through
    objects.units:ForEachUnit(function(unit)
        local unitPosition = getPosition(unit)
        if not hasLOS(impactPoint, unitPosition) then
            return
        end
        local explosivePower = calculateBlastDamage(unit, getDistance(impactPoint, unitPosition), weaponBlastRadius)
        debug("Applying blast to unit " .. unit:GetName() .. " with explosive power " .. explosivePower ..
                  " at position " .. dump(convertPointToDCSPoint(unitPosition)) .. " from impact point " ..
                  dump(impactPoint))
        trigger.action.explosion(convertPointToDCSPoint(unitPosition), explosivePower)
    end)
end

function onWeaponHit(impactPoint, weaponExplosiveRadius)
    local explosiveZone = ZONE_RADIUS:New("EXP-" .. math.random(100000), impactPoint, weaponExplosiveRadius)
    local blastZone = ZONE_RADIUS:New("BLAST-" .. math.random(100000), impactPoint, weaponExplosiveRadius * 2)

    if options.debug then
        explosiveZone:DrawZone(-1, {0, 1, 0}, 1, {0, 0.5, 0}, 0.5, 1, true)
        blastZone:DrawZone(-1, {0, 1, 0}, 1, {0, 0.5, 0}, 0.25, 1, true)
    end

    local objectsInBlastZone = getObjectsInZone({Object.Category.UNIT}, blastZone, explosiveZone) -- {Object.Category.UNIT, Object.Category.STATIC, Object.Category.SCENERY}

    applyExplosion(impactPoint, weaponExplosiveRadius)
    applyBlast(objectsInBlastZone, impactPoint, weaponExplosiveRadius * 2)
end

MENU_COALITION_COMMAND:New(coalition.side.BLUE, "BOOM", nil, function()
    onWeaponHit(impactPoint, wpnExplosiveRadius)
end)
