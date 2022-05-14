BGEOptions = {
    refreshRate = 0.1,
    debug = true,
    groundUnitsFilterPrefixes = {""},
    suppressRadius = 100,
    fallBackRange = 200,
    fallBackMaxCount = 10,
    takeCoverRange = 350,
    groupSet = nil,
    exploTable = {
        ["FAB_100"] = 15,
        ["FAB_250"] = 30,
        ["FAB_250M54TU"] = 30,
        ["FAB_500"] = 71,
        ["FAB_1500"] = 225,
        ["BetAB_500"] = 29,
        ["BetAB_500ShP"] = 35,
        ["KH-66_Grom"] = 35,
        ["M_117"] = 67,
        ["Mk_81"] = 20,
        ["Mk_82"] = 40,
        ["AN_M64"] = 40,
        ["Mk_83"] = 91,
        ["Mk_84"] = 194,
        ["MK_82AIR"] = 40,
        ["MK_82SNAKEYE"] = 40,
        ["GBU_10"] = 194,
        ["GBU_12"] = 40,
        ["GBU_16"] = 91,
        ["KAB_1500Kr"] = 225,
        ["KAB_500Kr"] = 71,
        ["KAB_500"] = 71,
        ["GBU_31"] = 194,
        ["GBU_31_V_3B"] = 194,
        ["GBU_31_V_2B"] = 194,
        ["GBU_31_V_4B"] = 194,
        ["GBU_32_V_2B"] = 202,
        ["GBU_38"] = 40,
        ["AGM_62"] = 130,
        ["GBU_24"] = 194,
        ["X_23"] = 37,
        ["X_23L"] = 37,
        ["X_28"] = 153,
        ["X_25ML"] = 30,
        ["X_25MP"] = 30,
        ["X_25MR"] = 45,
        ["X_58"] = 45,
        ["X_29L"] = 106,
        ["X_29T"] = 106,
        ["X_29TE"] = 106,
        ["AGM_84E"] = 160,
        ["AGM_88C"] = 30,
        ["AGM_114K"] = 10,
        ["AGM_122"] = 15,
        ["AGM_123"] = 91,
        ["AGM_130"] = 194,
        ["AGM_119"] = 176,
        ["AGM_154C"] = 100,
        ["S-24A"] = 30,
        -- ["S-24B"] = 123,
        ["S-25OF"] = 60,
        ["S-25OFM"] = 45,
        ["S-25O"] = 45,
        ["S_25L"] = 50,
        ["S-5M"] = 5,
        ["C_8"] = 10,
        ["C_8OFP2"] = 10,
        ["C_13"] = 10,
        ["C_24"] = 50,
        ["C_25"] = 60,
        ["HYDRA_70M15"] = 10,
        ["Zuni_127"] = 10,
        ["ARAKM70BHE"] = 10,
        ["BR_500"] = 15,
        ["Rb 05A"] = 75,
        ["HEBOMB"] = 40,
        ["HEBOMBD"] = 40,
        ["MK-81SE"] = 20,
        ["AN-M57"] = 20,
        ["AN-M64"] = 60,
        ["AN-M65"] = 97,
        ["AN-M66A2"] = 178,
        ["HYDRA_70_M151"] = 10,
        ["HYDRA_70_MK5"] = 10,
        ["Vikhr_M"] = 10,
        ["British_GP_250LB_Bomb_Mk1"] = 30, -- ("250 lb GP Mk.I")
        ["British_GP_250LB_Bomb_Mk4"] = 30, -- ("250 lb GP Mk.IV")
        ["British_GP_250LB_Bomb_Mk5"] = 30, -- ("250 lb GP Mk.V")
        ["British_GP_500LB_Bomb_Mk1"] = 71, -- ("500 lb GP Mk.I")
        ["British_GP_500LB_Bomb_Mk4"] = 71, -- ("500 lb GP Mk.IV")
        ["British_GP_500LB_Bomb_Mk4_Short"] = 71, -- ("500 lb GP Short tail")
        ["British_GP_500LB_Bomb_Mk5"] = 71, -- ("500 lb GP Mk.V")
        ["British_MC_250LB_Bomb_Mk1"] = 30, -- ("250 lb MC Mk.I")
        ["British_MC_250LB_Bomb_Mk2"] = 30, -- ("250 lb MC Mk.II")
        ["British_MC_500LB_Bomb_Mk1_Short"] = 71, -- ("500 lb MC Short tail")
        ["British_MC_500LB_Bomb_Mk2"] = 71, -- ("500 lb MC Mk.II")
        ["British_SAP_250LB_Bomb_Mk5"] = 30, -- ("250 lb S.A.P.")
        ["British_SAP_500LB_Bomb_Mk5"] = 71, -- ("500 lb S.A.P.")
        ["British_AP_25LBNo1_3INCHNo1"] = 4, -- ("RP-3 25lb AP Mk.I")
        ["British_HE_60LBSAPNo2_3INCHNo1"] = 10, -- ("RP-3 60lb SAP No2 Mk.I")
        ["British_HE_60LBFNo1_3INCHNo1"] = 10, -- ("RP-3 60lb F No1 Mk.I")
        ["WGr21"] = 4, -- ("Werfer-Granate 21 - 21 cm UnGd air-to-air rocket")
        ["3xM8_ROCKETS_IN_TUBES"] = 4, -- ("4.5 inch M8 UnGd Rocket")
        ["AN_M30A1"] = 15, -- ("AN-M30A1 - 100lb GP Bomb LD")
        ["AN_M57"] = 30, -- ("AN-M57 - 250lb GP Bomb LD")
        ["AN_M65"] = 130, -- ("AN-M65 - 1000lb GP Bomb LD")
        ["AN_M66"] = 800, -- ("AN-M66 - 2000lb GP Bomb LD")
        ["SC_50"] = 20, -- ("SC 50 - 50kg GP Bomb LD")
        ["ER_4_SC50"] = 20, -- ("4 x SC 50 - 50kg GP Bomb LD")
        ["SC_250_T1_L2"] = 30, -- ("SC 250 Type 1 L2 - 250kg GP Bomb LD")
        ["SC_501_SC250"] = 30, -- ("SC 250 Type 3 J - 250kg GP Bomb LD")
        ["Schloss500XIIC1_SC_250_T3_J"] = 30, -- ("SC 250 Type 3 J - 250kg GP Bomb LD")
        ["SC_501_SC500"] = 71, -- ("SC 500 J - 500kg GP Bomb LD")
        ["SC_500_L2"] = 71, -- ("SC 500 L2 - 500kg GP Bomb LD")
        ["SD_250_Stg"] = 30, -- ("SD 250 Stg - 250kg GP Bomb LD")
        ["SD_500_A"] = 71, -- ("SD 500 A - 500kg GP Bomb LD")
        ["AB_250_2_SD_2"] = 30, -- ("AB 250-2 - 144 x SD-2, 250kg CBU with HE submunitions")
        ["AB_250_2_SD_10A"] = 30, -- ("AB 250-2 - 17 x SD-10A, 250kg CBU with 10kg Frag/HE submunitions")
        ["AB_500_1_SD_10A"] = 71 -- ("AB 500-1 - 34 x SD-10A, 500kg CBU with 10kg Frag/HE submunitions")
    }
}
function functionDump(o)
    if type(o) == 'table' then
        local s = '{ '
        for k, v in pairs(o) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
            log(k)
        end
        return s .. '} '
    elseif type(o) == 'string' then
        return '"' .. o .. '"'
    elseif type(o) == 'function' then
        return '" function "'
    else
        return tostring(o)
    end
end

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
    elseif type(o) == 'function' then
        return '" function "'
    else
        return tostring(o)
    end
end

function log(msg)
    if BGEOptions.debug then
        MESSAGE:New("[BGE] -> " .. dump(msg), 5):ToAll()
    end
    BASE:I("[BGE] -> " .. dump(msg))
end

local function vec3Mag(speedVec)
    local mag = speedVec.x * speedVec.x + speedVec.y * speedVec.y + speedVec.z * speedVec.z
    mag = math.sqrt(mag)
    return mag
end

local function lookahead(speedVec)
    local speed = vec3Mag(speedVec)
    local dist = speed * BGEOptions.refreshRate * 1.5
    return dist
end

BGEOptions.groupSet = SET_GROUP:New():FilterCategoryGround():FilterPrefixes(BGEOptions.groundUnitsFilterPrefixes)
    :FilterStart()
local trackedWeapons = {}

BGEOptions.groupSet:HandleEvent(EVENTS.Shot)
BGEOptions.groupSet:HandleEvent(EVENTS.ShootingStart)
BGEOptions.groupSet:HandleEvent(EVENTS.ShootingEnd)

function BGEOptions.groupSet:OnEventShot(Event)
    onWeaponEvent(Event)
end
function BGEOptions.groupSet:OnEventShootingStart(Event)
    onWeaponEvent(Event)
end
function BGEOptions.groupSet:S_EVENT_SHOOTING_END(Event)
    onWeaponEvent(Event)
end

function onWeaponEvent(event)
    if event.id == world.event.S_EVENT_SHOT then
        if event.weapon then
            if not BGEOptions.exploTable[event.weapon:getTypeName()] then
                log(event.weapon:getTypeName() .. " missing from BGE's Splash Damage script")
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
    if event.id == world.event.S_EVENT_SHOOTING_START then
        -- M 230 => lethality at 3meters !
        -- log(functionDump(event))
        -- log("start ".. dump(event.weapon_name))
        -- log("start ".. dump(event.target))
    end
    if event.id == world.event.S_EVENT_SHOOTING_START then
        -- M 230 => lethality at 3meters !
        -- log("stop ".. functionDump(event))
        -- log("stop ".. dump(event.weapon_name))
        -- log("stop ".. dump(event.target))
    end
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
            if BGEOptions.debug then
                ZONE_RADIUS:New("IP-" .. math.random(10000), impactPoint, 1):DrawZone(-1, {0, 0, 0}, 1, {0, 0, 0}, 1, 1,
                    true)
            end
            --
            onWeaponHit(impactPoint, BGEOptions.exploTable[wpnData.name])
            -- suppressInRadius(impactPoint, BGEOptions.suppress.suppressRadius, wpnData.dir)
            trackedWeapons[wpn_id_] = nil
        end
    end
end

timer.scheduleFunction(function()
    trackWeapons()
    return timer.getTime() + BGEOptions.refreshRate
end, {}, timer.getTime() + BGEOptions.refreshRate)
