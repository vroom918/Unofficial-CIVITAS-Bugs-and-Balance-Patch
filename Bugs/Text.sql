/*
	CIVITAS Text Bug Fixes
	Authors: vroom918
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Taino:
--   Theater squares get +2 culture from adjacent Bateys
-----------------------------------------------

	("en_US",	"LOC_DISTRICT_CVS_TAINO_UI_CULTURE",	"+{1_num} [ICON_Culture] Culture from the adjacent Batéy {1_Num : plural 2?district; other?districts;}."),
	
-----------------------------------------------
-- Malaysia:
--   Commercial hubs get +2 culture from adjacent Dermagas
-----------------------------------------------

	("en_US",	"LOC_DISTRICT_CVS_MALAYSIA_UI_GOLD",	"+{1_num} [ICON_Gold] Gold from the adjacent Dermaga {1_Num : plural 2?district; other?districts;}."),

-----------------------------------------------
-- Seleucid:
--   Fix missing/incorrect ability descriptions
-----------------------------------------------

	("en_US",	"LOC_ABILITY_CVS_SELEUCID_UU_DESCRIPTION",	"+{1_Amount} Combat vs. Melee units"),
	("en_US",	"LOC_ABILITY_CVS_SELEUCID_UU_CAV_DESCRIPTION",	"+{1_Amount} from adjacent Argyraspides when attacking"),
	("en_US",	"LOC_ABILITY_CVS_SELEUCID_UU_ANTICAV_DESCRIPTION",	"+{1_Amount} from adjacent Argyraspides when defending");