/*
	CIVITAS Balance Text
	Authors: vroom918
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Seleucid:
--   Agoras get +0.5 gold from adjacent farms (was +1)
--   Agoras get +2 gold from adjacent pastures (was +1)
-----------------------------------------------

	("en_US",	"LOC_ADJ_CVS_SELEUCID_UI_FARM_GOLD",		"+{1_num} [ICON_GOLD] Gold from the adjacent Farms."),
	("en_US",	"LOC_ADJ_CVS_SELEUCID_UI_PASTURE_GOLD",		"+{1_num} [ICON_GOLD] Gold from the adjacent {1_Num : plural 2?Pasture; other?Pastures;}."),

-----------------------------------------------
-- Djoser:
--   +1 Governor title on recruiting a great engineer
--   +1 Great Engineer points for Overseer of Stoneworks (was +2)
-----------------------------------------------

	("en_US", "LOC_TRAIT_LEADER_CVS_DJOSER_UA_DESCRIPTION", "Completing a Wonder triggers a culture bomb, claiming adjacent tiles. Recruiting a [ICON_GreatEngineer] Great Engineer grants a free [ICON_Governor] Governor title. Gain access to {LOC_GOVERNOR_CVS_IMHOTEP_NAME}, the {LOC_GOVERNOR_CVS_IMHOTEP_SHORT_TITLE}, a [ICON_GOVERNOR] Governor unique to Djoser."),
	("en_US", "LOC_GOVERNOR_PROMOTION_CVS_OVERSEER_OF_STONEWORKS_DESCRIPTION",	"+1 [ICON_GREATENGINEER] Great Engineer point per turn for each wonder in the city.");