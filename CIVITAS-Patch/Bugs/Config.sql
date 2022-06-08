/*
	CIVITAS Config Bug Fixes
	Authors: vroom918
*/

-----------------------------------------------
-- Djoser:
--   Use correct text for the chariot archer and sphinx descriptions (note that Djoser requires XP2)
-----------------------------------------------

UPDATE PlayerItems
SET Description = 'LOC_UNIT_EGYPTIAN_CHARIOT_ARCHER_EXPANSION2_DESCRIPTION'
WHERE Domain = 'Players:Expansion2_Players'
	AND CivilizationType = 'CIVILIZATION_EGYPT'
	AND LeaderType = 'LEADER_CVS_DJOSER'
	AND Type = 'UNIT_EGYPTIAN_CHARIOT_ARCHER';

UPDATE PlayerItems
SET Description = 'LOC_IMPROVEMENT_SPHINX_EXPANSION2_DESCRIPTION'
WHERE Domain = 'Players:Expansion2_Players'
	AND CivilizationType = 'CIVILIZATION_EGYPT'
	AND LeaderType = 'LEADER_CVS_DJOSER'
	AND Type = 'IMPROVEMENT_SPHINX';