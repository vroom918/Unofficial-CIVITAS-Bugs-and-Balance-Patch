/*
	CIVITAS Balance Fixes
	Authors: vroom918
*/

-----------------------------------------------
-- Seleucid:
--   Agoras get +0.5 gold from adjacent farms (was +1)
--   Agoras get +2 gold from adjacent pastures (was +1)
-----------------------------------------------

UPDATE Adjacency_YieldChanges
SET TilesRequired = 2
WHERE ID = 'ADJ_CVS_SELEUCID_UI_FARM_GOLD';

UPDATE Adjacency_YieldChanges
SET YieldChange = 2
WHERE ID = 'ADJ_CVS_SELEUCID_UI_PASTURE_GOLD';

-----------------------------------------------
-- Djoser:
--   +1 Governor title on recruiting a great engineer (implemented via lua)
--   +1 Great Engineer points for Overseer of Stoneworks (was +2)
-----------------------------------------------

UPDATE ModifierArguments
SET Value = 1
WHERE ModifierId LIKE 'MODIFIER_CVS_IMHOTEP_ENGINEER_%';

-----------------------------------------------
-- Darius I:
--   Improvements only build roads on their own tile (mostly because I didn't like how it looked)
-----------------------------------------------

UPDATE ModifierArguments
Set Value = 0
WHERE ModifierId LIKE 'CVS_DARIUS_ROADIES_ON_%' AND Name = 'Radius';