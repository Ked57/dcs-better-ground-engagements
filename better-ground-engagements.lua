-- On detect -> pause everything else and (DONE)
--     Only engage if the enemy is in a certain range.
--     Only engage atgms if below 50kph
--     Engage anything with machine guns
--     If detected assess targets -> if better -> retreat -> else set line abreast formation and engage
--     Retreat zones set -> opposed to target (+- 90°, create 6 zones) -> if hiding possible go to hiding
--     Suppress 
--         -> infantry during reatrer and on hit
--         -> artillery during retreat and on hit
--         -> the rest on hit
local armyGroups = {}
local groupCount = 1

local initArmyGroup = function(count, group)
    if not count then
        count = 0
    end
    local groupName = group:GetName()
    local armyGroup = ARMYGROUP:New(group)
    armyGroup:SetDetection(true)
    armyGroup:SetEngageDetectedOff()
    armyGroup:SwitchROE(ENUMS.ROE.WeaponFree)
    function armyGroup:onafterDetectedGroup(From, Event, To, Group)
        if Group:GetSize() > 0 and armyGroup:IsCruising() then
            log(group:GetName() .. ": Detected units, group:GetThreatLevel() > Group:GetThreatLevel(): " ..
                    tostring(group:GetThreatLevel()) .. " > " .. tostring(Group:GetThreatLevel()))
            armyGroup:FullStop()
            if group:GetThreatLevel() < Group:GetThreatLevel() then
                -- If air target -> just engage
                -- if the other group sees it -> Set ROE Free fire -> else go hide !
                armyGroup:SwitchROE(ENUMS.ROE.ReturnFire)
                log("Group has higher threat level, retreating")
            else
                log("Group has lower threat level, engaging")
                armyGroup:EngageTarget(Group, "Line abreast")
            end
        end
    end
    SCHEDULER:New(armyGroup, function()

    end, {}, 5 + count / 10, 60)
    armyGroups[groupName] = armyGroup
end

BGEOptions.groupSet:ForEachGroup(function(group)
    initArmyGroup(groupCount, group)
    groupCount = groupCount + 1
end)
