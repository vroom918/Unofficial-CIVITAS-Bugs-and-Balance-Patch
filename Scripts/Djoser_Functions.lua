--=============================================
-- Djoser Engineers Grant Titles by vroom918
-- Based on Darius I by SailorCat
--=============================================
function Djoser_Engineer (playerID, unitID, iX, iY, locallyVisible, stateChange)
	local bDjoserLeader = false
	local pPlayerConfig = PlayerConfigurations[playerID]
	local sLeader = pPlayerConfig:GetLeaderTypeName()
	print(sLeader)
	if sLeader == 'LEADER_CVS_DJOSER' then
		bDjoserLeader = true
	end

	if bDjoserLeader == true then
		local pPlayer = Players[playerID]
		local pGreatEngineer = GameInfo.Units["UNIT_GREAT_ENGINEER"].Index
		local pUnit = pPlayer:GetUnits():FindID(unitID)
		--print("pUnit: ", pUnit)
		local pCoordX, pCoordY = pUnit:GetX(), pUnit:GetY()
		if pUnit:GetType() == pGreatEngineer then
			--//// +1 Governor Title
			local pPlayerGov = pPlayer:GetGovernors()
			pPlayerGov:ChangeGovernorPoints(1)
			--print("Governor title granted.")
		end
	end
end

--=============================================
-- Leader Present Detection by SeelingCat
--=============================================
local bDjoserPresent = false

for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
    if bDjoserPresent == false then
        local sLeaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        if sLeaderType == 'LEADER_CVS_DJOSER' then
			--print (sLeaderType)
			bDjoserPresent = true
        end
    end
end
if bDjoserPresent == true then
    print ("///// Djoser detected. Loading lua functions...")
	Events.UnitGreatPersonCreated.Add(Djoser_Engineer)
else
    print ("///// Djoser not detected.")
end