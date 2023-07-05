local L = LibStub("AceLocale-3.0"):GetLocale("EveryQuest")
local BZ = LibStub("LibBabble-Zone-3.0"):GetLookupTable()

local classes = {}
FillLocalizedClassList(classes)

EQ_zones = { -- Dropdown Zone list
	{"Eastern Kingdoms", {
		{36, BZ["Alterac Mountains"]},
		{45, BZ["Arathi Highlands"]},
		{3, BZ["Badlands"]},
		{25, BZ["Blackrock Mountain"]},
		{4, BZ["Blasted Lands"]},
		{46, BZ["Burning Steppes"]},
		{279, L["Dalaran Crater"]},
		{41, BZ["Deadwind Pass"]},
		{2257, BZ["Deeprun Tram"]},
		{1, BZ["Dun Morogh"]},
		{10, BZ["Duskwood"]},
		{139, BZ["Eastern Plaguelands"]},
		{12, BZ["Elwynn Forest"]},
		{3430, BZ["Eversong Woods"]},
		{3433, BZ["Ghostlands"]},
		{267, BZ["Hillsbrad Foothills"]},
		{1537, BZ["Ironforge"]},
		{4080, BZ["Isle of Quel'Danas"]},
		{38, BZ["Loch Modan"]},
		{44, BZ["Redridge Mountains"]},
		{51, BZ["Searing Gorge"]},
		{3487, BZ["Silvermoon City"]},
		{130, BZ["Silverpine Forest"]},
		{1519, BZ["Stormwind City"]},
		{33, BZ["Stranglethorn Vale"]},
		{8, BZ["Swamp of Sorrows"]},
		{47, BZ["The Hinterlands"]},
		{85, BZ["Tirisfal Glades"]},
		{1497, BZ["Undercity"]},
		{28, BZ["Western Plaguelands"]},
		{40, BZ["Westfall"]},
		{11, BZ["Wetlands"]},
	}, BZ["Eastern Kingdoms"]}, -- Zone dropdown menu localized string
	{"Kalimdor", {
		{331, BZ["Ashenvale"]},
		{16, BZ["Azshara"]},
		{3524, BZ["Azuremyst Isle"]},
		{3525, BZ["Bloodmyst Isle"]},
		{148, BZ["Darkshore"]},
		{1657, BZ["Darnassus"]},
		{405, BZ["Desolace"]},
		{14, BZ["Durotar"]},
		{15, BZ["Dustwallow Marsh"]},
		{361, BZ["Felwood"]},
		{357, BZ["Feralas"]},
		{493, BZ["Moonglade"]},
		{215, BZ["Mulgore"]},
		{1637, BZ["Orgrimmar"]},
		{1377, BZ["Silithus"]},
		{406, BZ["Stonetalon Mountains"]},
		{440, BZ["Tanaris"]},
		{141, BZ["Teldrassil"]},
		{17, BZ["The Barrens"]},
		{3557, BZ["The Exodar"]},
		{400, BZ["Thousand Needles"]},
		{1638, BZ["Thunder Bluff"]},
		{1216, L["Timbermaw Hold"]}, -- Quest Log Categories must be translated exactly as shown in game
		{490, BZ["Un'Goro Crater"]},
		{618, BZ["Winterspring"]},
	}, BZ["Kalimdor"]},
	{"Outland", {
		{3522, BZ["Blade's Edge Mountains"]},
		{3483, BZ["Hellfire Peninsula"]},
		{3518, BZ["Nagrand"]},
		{3523, BZ["Netherstorm"]},
		{3520, BZ["Shadowmoon Valley"]},
		{3703, BZ["Shattrath City"]},
		{3679, L["Skettis"]}, -- Quest Log Categories must be translated exactly as shown in game
		{3519, BZ["Terokkar Forest"]},
		{3521, BZ["Zangarmarsh"]},
	}, BZ["Outland"]},
	{"Northrend", {
		{3537, BZ["Borean Tundra"]},
		{4024, BZ["Coldarra"]},
		{4395, BZ["Dalaran"]},
		{65, BZ["Dragonblight"]},
		{394, BZ["Grizzly Hills"]},
		{495, BZ["Howling Fjord"]},
		{210, BZ["Icecrown"]},
		{3711, BZ["Sholazar Basin"]},
		{67, BZ["The Storm Peaks"]},
		{4197, BZ["Wintergrasp"]},
		{66, BZ["Zul'Drak"]},
	}, BZ["Northrend"]},
	{"Dungeons", {
		{"Classic", {
			{719, BZ["Blackfathom Deeps"]},
			{1584, BZ["Blackrock Depths"]},
			{1583, BZ["Blackrock Spire"]},
			{2557, BZ["Dire Maul"]},
			{133, BZ["Gnomeregan"]},
			{2100, BZ["Maraudon"]},
			{2437, BZ["Ragefire Chasm"]},
			{722, BZ["Razorfen Downs"]},
			{491, BZ["Razorfen Kraul"]},
			{796, BZ["Scarlet Monastery"]},
			{2057, BZ["Scholomance"]},
			{209, BZ["Shadowfang Keep"]},
			{2017, BZ["Stratholme"]},
			{1417, BZ["Sunken Temple"]},
			{1581, BZ["The Deadmines"]},
			{717, BZ["The Stockade"]},
			{1337, BZ["Uldaman"]},
			{718, BZ["Wailing Caverns"]},
			{978, BZ["Zul'Farrak"]},
		}, L["Classic"]}, -- Zone dropdown menu localized string
		{"Burning Crusade", {
			{3790, BZ["Auchenai Crypts"]},
			{1941, BZ["Caverns of Time"]},
			{3905, BZ["Coilfang Reservoir"]},
			{3562, BZ["Hellfire Ramparts"]},
			{4095, BZ["Magisters' Terrace"]},
			{3792, BZ["Mana-Tombs"]},
			{2367, BZ["Old Hillsbrad Foothills"]},
			{3791, BZ["Sethekk Halls"]},
			{3789, BZ["Shadow Labyrinth"]},
			{3845, BZ["Tempest Keep"]},
			{3846, BZ["The Arcatraz"]},
			{2366, BZ["The Black Morass"]},
			{3713, BZ["The Blood Furnace"]},
			{3847, BZ["The Botanica"]},
			{3849, BZ["The Mechanar"]},
			{3714, BZ["The Shattered Halls"]},
			{3717, BZ["The Slave Pens"]},
			{3715, BZ["The Steamvault"]},
			{3716, BZ["The Underbog"]},
		}, L["Burning Crusade"]}, -- Zone dropdown menu localized string
		{"Wrath of the Lich King", {
			{4494, BZ["Ahn'kahet: The Old Kingdom"]},
			{3477, BZ["Azjol-Nerub"]},
			{1941, BZ["Caverns of Time"]},
			{4196, BZ["Drak'Tharon Keep"]},
			{4375, BZ["Gundrak"]},
			{4272, BZ["Halls of Lightning"]},
			{4820, BZ["Halls of Reflection"]},
			{4264, BZ["Halls of Stone"]},
			{4813, BZ["Pit of Saron"]},
			{4100, BZ["The Culling of Stratholme"]},
			{4809, BZ["The Forge of Souls"]},
			{4120, BZ["The Nexus"]},
			{4228, BZ["The Oculus"]},
			{4415, BZ["The Violet Hold"]},
			{4723, BZ["Trial of the Champion"]},
			{206, BZ["Utgarde Keep"]},
			{1196, BZ["Utgarde Pinnacle"]},
		}, L["Wrath of the Lich King"]}, -- Zone dropdown menu localized string
	}, L["Dungeons"]}, -- Zone dropdown menu localized string
	{"Raids", {
		{2677, BZ["Blackwing Lair"]},
		{3606, BZ["Hyjal Summit"]},
		{4812, BZ["Icecrown Citadel"]},
		{2562, BZ["Karazhan"]},
		{3836, BZ["Magtheridon's Lair"]},
		{2717, BZ["Molten Core"]},
		{3456, BZ["Naxxramas"]},
		{2159, BZ["Onyxia's Lair"]},
		{3429, BZ["Ruins of Ahn'Qiraj"]},
		{4075, BZ["Sunwell Plateau"]},
		{3428, BZ["Temple of Ahn'Qiraj"]},
		{3840, L["The Black Temple"]}, -- Quest Log Categories must be translated exactly as shown in game
		{3842, BZ["The Eye"]},
		{4500, BZ["The Eye of Eternity"]},
		{4493, BZ["The Obsidian Sanctum"]},
		{4722, BZ["Trial of the Crusader"]},
		{4273, BZ["Ulduar"]},
		{3805, BZ["Zul'Aman"]},
		{19, BZ["Zul'Gurub"]},
	}, L["Raids"]}, -- Zone dropdown menu localized string
	{"Classes", {
		{-372, classes["DEATHKNIGHT"]},
		{-263, classes["DRUID"]},
		{-261, classes["HUNTER"]},
		{-161, classes["MAGE"]},
		{-141, classes["PALADIN"]},
		{-262, classes["PRIEST"]},
		{-162, classes["ROGUE"]},
		{-82, classes["SHAMAN"]},
		{-61, classes["WARLOCK"]},
		{-81, classes["WARRIOR"]},
	}, L["Classes"]}, -- Zone dropdown menu localized string
	{"Professions", {
		{-181, L["Alchemy"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-121, L["Blacksmithing"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-304, L["Cooking"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-201, L["Engineering"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-324, L["First Aid"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-101, L["Fishing"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-24, L["Herbalism"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-371, L["Inscription"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-373, L["Jewelcrafting"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-182, L["Leatherworking"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-264, L["Tailoring"]}, -- Quest Log Categories must be translated exactly as shown in game
	}, L["Professions"]}, -- Zone dropdown menu localized string
	{"Battlegrounds", {
		{3358, BZ["Arathi Basin"]}, -- Quest Log Categories must be translated exactly as shown in game
		{2597, BZ["Alterac Valley"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-25, L["Battlegrounds"]},
		{3820, BZ["Eye of the Storm"]}, -- Quest Log Categories must be translated exactly as shown in game
		{4710, BZ["Isle of Conquest"]}, -- Quest Log Categories must be translated exactly as shown in game
		{4384, BZ["Strand of the Ancients"]}, -- Quest Log Categories must be translated exactly as shown in game
		{3277, BZ["Warsong Gulch"]}, -- Quest Log Categories must be translated exactly as shown in game
	}, L["Battlegrounds"]}, -- Zone dropdown menu localized string
	{"World Events", {
		{-370, L["Brewfest"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-1002, L["Children's Week"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-364, L["Darkmoon Faire"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-1007, L["Day of the Dead"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-1003, L["Hallow's End"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-1005, L["Harvest Festival"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-1004, L["Love is in the Air"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-366, L["Lunar Festival"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-369, L["Midsummer Fire Festival"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-1006, L["New Year's Eve"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-374, L["Noblegarden"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-1008, L["Pilgrim's Bounty"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-1001, L["Winter Veil"]}, -- Quest Log Categories must be translated exactly as shown in game
	}, L["World Events"]},
	{"Miscellaneous", {
		{-365, L["Ahn'Qiraj War Effort"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-241, L["Tournament"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-1, L["Epic"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-344, L["Legendary"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-367, L["Reputation"]}, -- Quest Log Categories must be translated exactly as shown in game
		{-368, L["Scourge Invasion"]}, -- Quest Log Categories must be translated exactly as shown in game
	}, L["Miscellaneous"]}, -- Zone dropdown menu localized string
}


EveryQuest_Global_Ignore = {
	[1] = true,
	[236] = true,
	[615] = true,
	[618] = true,
	[620] = true,
	[908] = true,
	[909] = true,
	[934] = true,
	[1135] = true,
	[1318] = true,
	[1661] = true,
	[2358] = true,
	[3366] = true,
	[3381] = true,
	[3631] = true,
	[3911] = true,
	[4485] = true,
	[4486] = true,
	[4487] = true,
	[4488] = true,
	[4489] = true,
	[4490] = true,
	[5644] = true,
	[5646] = true,
	[5658] = true,
	[5659] = true,
	[5660] = true,
	[5661] = true,
	[5662] = true,
	[5663] = true,
	[5679] = true,
	[6606] = true,
	[6721] = true,
	[6722] = true,
	[6842] = true,
	[6861] = true,
	[7069] = true,
	[7202] = true,
	[7281] = true,
	[7282] = true,
	[7301] = true,
	[7302] = true,
	[7362] = true,
	[7363] = true,
	[7365] = true,
	[7401] = true,
	[7402] = true,
	[7462] = true,
	[7490] = true,
	[7491] = true,
	[7495] = true,
	[7496] = true,
	[7704] = true,
	[7788] = true,
	[7789] = true,
	[7790] = true,
	[7848] = true,
	[7871] = true,
	[7872] = true,
	[7873] = true,
	[7874] = true,
	[7875] = true,
	[7876] = true,
	[7908] = true,
	[8080] = true,
	[8123] = true,
	[8154] = true,
	[8155] = true,
	[8156] = true,
	[8160] = true,
	[8161] = true,
	[8162] = true,
	[8166] = true,
	[8167] = true,
	[8168] = true,
	[8169] = true,
	[8170] = true,
	[8171] = true,
	[8268] = true,
	[8274] = true,
	[8290] = true,
	[8291] = true,
	[8294] = true,
	[8295] = true,
	[8297] = true,
	[8299] = true,
	[8329] = true,
	[8368] = true,
	[8370] = true,
	[8372] = true,
	[8374] = true,
	[8375] = true,
	[8393] = true,
	[8394] = true,
	[8395] = true,
	[8396] = true,
	[8399] = true,
	[8400] = true,
	[8401] = true,
	[8402] = true,
	[8403] = true,
	[8426] = true,
	[8427] = true,
	[8428] = true,
	[8429] = true,
	[8430] = true,
	[8436] = true,
	[8437] = true,
	[8438] = true,
	[8439] = true,
	[8458] = true,
	[8551] = true,
	[8869] = true,
	[9030] = true,
	[9031] = true,
	[9033] = true,
	[9120] = true,
	[9177] = true,
	[9229] = true,
	[9230] = true,
	[9232] = true,
	[9233] = true,
	[9295] = true,
	[9299] = true,
	[9300] = true,
	[9301] = true,
	[9302] = true,
	[9304] = true,
	[9378] = true,
	[9388] = true,
	[9389] = true,
	[9733] = true,
	[9734] = true,
	[9749] = true,
	[9750] = true,
	[9751] = true,
	[9989] = true,
	[10061] = true,
	[10062] = true,
	[10088] = true,
	[10125] = true,
	[10149] = true,
	[10169] = true,
	[10181] = true,
	[10207] = true,
	[10214] = true,
	[10259] = true,
	[10386] = true,
	[10387] = true,
	[10401] = true,
	[10454] = true,
	[10531] = true,
	[10532] = true,
	[10535] = true,
	[10737] = true,
	[10746] = true,
	[10815] = true,
	[10841] = true,
	[10871] = true,
	[10872] = true,
	[10925] = true,
	[11052] = true,
	[11087] = true,
	[11115] = true,
	[11116] = true,
	[11222] = true,
	[11223] = true,
	[11320] = true,
	[11400] = true,
	[11411] = true,
	[11419] = true,
	[11442] = true,
	[11447] = true,
	[11452] = true,
	[11518] = true,
	[11558] = true,
	[11577] = true,
	[11578] = true,
	[11579] = true,
	[11937] = true,
	[11976] = true,
	[12186] = true,
	[12187] = true,
	[12278] = true,
	[12452] = true,
	[12485] = true,
	[12494] = true,
	[12515] = true,
	[12563] = true,
	[12600] = true,
	[12693] = true,
	[12694] = true,
	[12752] = true,
	[12753] = true,
	[12771] = true,
	[12772] = true,
	[12773] = true,
	[12774] = true,
	[12775] = true,
	[12776] = true,
	[12777] = true,
	[12782] = true,
	[12783] = true,
	[12784] = true,
	[12785] = true,
	[12786] = true,
	[12787] = true,
	[12788] = true,
	[12808] = true,
	[12809] = true,
	[12811] = true,
	[12812] = true,
	[12845] = true,
	[12954] = true,
	[13053] = true,
	[13123] = true,
	[13686] = true,
	[13687] = true,
	[13700] = true,
	[13701] = true,
	[13807] = true,
	[14032] = true,
	[24222] = true,
	[24227] = true,
	[24431] = true,
	[24661] = true,
	[24746] = true,
	[24797] = true
}