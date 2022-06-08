/*
	CIVITAS Bug Fixes
	Authors: vroom918
*/

-----------------------------------------------
-- Taino:
--   Theater squares get +2 culture from adjacent Bateys
-----------------------------------------------

INSERT INTO Adjacency_YieldChanges (
		ID,
		Description,
		YieldType,
		YieldChange,
		TilesRequired,
		OtherDistrictAdjacent,
		AdjacentSeaResource,
		AdjacentTerrain,
		AdjacentFeature,
		AdjacentRiver,
		AdjacentWonder,
		AdjacentNaturalWonder,
		AdjacentImprovement,
		AdjacentDistrict,
		PrereqCivic,
		PrereqTech,
		ObsoleteCivic,
		ObsoleteTech,
		AdjacentResource,
		AdjacentResourceClass,
		Self
		)
SELECT	'Batey_Culture', -- ID
		'LOC_DISTRICT_CVS_TAINO_UI_CULTURE', -- Description,
		YieldType,
		YieldChange,
		TilesRequired,
		OtherDistrictAdjacent,
		AdjacentSeaResource,
		AdjacentTerrain,
		AdjacentFeature,
		AdjacentRiver,
		AdjacentWonder,
		AdjacentNaturalWonder,
		AdjacentImprovement,
		'DISTRICT_CVS_TAINO_UI', -- AdjacentDistrict
		PrereqCivic,
		PrereqTech,
		ObsoleteCivic,
		ObsoleteTech,
		AdjacentResource,
		AdjacentResourceClass,
		Self
FROM	Adjacency_YieldChanges
WHERE	ID = 'EntertainmentComplex_Culture'
		AND EXISTS (SELECT * FROM Types WHERE Type = 'DISTRICT_CVS_TAINO_UI');

INSERT INTO District_Adjacencies
		(DistrictType, 		YieldChangeId)
SELECT	'DISTRICT_THEATER',	'Batey_Culture'
WHERE EXISTS (SELECT * FROM Types WHERE Type = 'DISTRICT_CVS_TAINO_UI');

-----------------------------------------------
-- Malaysia:
--   Commercial hubs get +2 culture from adjacent Dermagas
-----------------------------------------------

INSERT INTO Adjacency_YieldChanges (
		ID,
		Description,
		YieldType,
		YieldChange,
		TilesRequired,
		OtherDistrictAdjacent,
		AdjacentSeaResource,
		AdjacentTerrain,
		AdjacentFeature,
		AdjacentRiver,
		AdjacentWonder,
		AdjacentNaturalWonder,
		AdjacentImprovement,
		AdjacentDistrict,
		PrereqCivic,
		PrereqTech,
		ObsoleteCivic,
		ObsoleteTech,
		AdjacentResource,
		AdjacentResourceClass,
		Self
		)
SELECT	'Dermaga_Gold', -- ID
		'LOC_DISTRICT_CVS_MALAYSIA_UI_GOLD', -- Description,
		YieldType,
		YieldChange,
		TilesRequired,
		OtherDistrictAdjacent,
		AdjacentSeaResource,
		AdjacentTerrain,
		AdjacentFeature,
		AdjacentRiver,
		AdjacentWonder,
		AdjacentNaturalWonder,
		AdjacentImprovement,
		'DISTRICT_CVS_MALAYSIA_UI', -- AdjacentDistrict
		PrereqCivic,
		PrereqTech,
		ObsoleteCivic,
		ObsoleteTech,
		AdjacentResource,
		AdjacentResourceClass,
		Self
FROM	Adjacency_YieldChanges
WHERE	ID = 'Harbor_Gold'
		AND EXISTS (SELECT * FROM Types WHERE Type = 'DISTRICT_CVS_MALAYSIA_UI');

INSERT INTO District_Adjacencies
		(DistrictType, 				YieldChangeId)
SELECT	'DISTRICT_COMMERCIAL_HUB',	'Dermaga_Gold'
WHERE EXISTS (SELECT * FROM Types WHERE Type = 'DISTRICT_CVS_MALAYSIA_UI');

-----------------------------------------------
-- Seleucid:
--   Fix missing/incorrect ability descriptions
-----------------------------------------------

UPDATE UnitAbilities
SET Description = 'LOC_ABILITY_CVS_SELEUCID_UU_CAV_DESCRIPTION'
WHERE UnitAbilityType = 'ABILITY_CVS_SELEUCID_UU_CAV';

UPDATE UnitAbilities
SET Description = 'LOC_ABILITY_CVS_SELEUCID_UU_ANTICAV_DESCRIPTION'
WHERE UnitAbilityType = 'ABILITY_CVS_SELEUCID_UU_ANTICAV';