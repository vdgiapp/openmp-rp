
#define HOUSE_SHOW_DISTANCE			(20)
#define MAX_HOUSES 					(1000)
#define MAX_HOUSE_INV				(36)

#define HOUSE_UPGR_COST2 			(1000)
#define HOUSE_UPGR_COST3 			(20000)

enum ENUM_HOUSE_INFO {
	ID,
	Address[MAX_MAP_ZONE_NAME],
	Created,
	Owned,
	Owner[MAX_PLAYER_NAME+1],
	Locked,
	Alarm,
	Lights,
	Level,
	Price,
	IntID,
	Float:ExteriorX,
	Float:ExteriorY,
	Float:ExteriorZ,
	Float:ExteriorA,
	ExteriorInt,
	ExteriorWorld,
	Float:InteriorX,
	Float:InteriorY,
	Float:InteriorZ,
	Float:InteriorA,
	InteriorInt,
	InteriorWorld,
	Float:LockerX,
	Float:LockerY,
	Float:LockerZ,
	Cash,

	// Not save
	STREAMER_TAG_PICKUP:ExtPickup,
	STREAMER_TAG_PICKUP:IntPickup,
	STREAMER_TAG_PICKUP:LockerPickup,
	RadioOn,
	RadioURL
}
new HouseData[MAX_HOUSES][ENUM_HOUSE_INFO];

enum ENUM_HOUSEINV_INFO {
	ItemID,
    Amount, // So luong
    Float:Durable, // Do ben
    MagType,
    MagAmmo, // Bang dan / dan trong sung
    ExData
}
new HouseInventory[MAX_HOUSES][MAX_HOUSE_INV][ENUM_HOUSEINV_INFO];

enum ENUM_HOUSE_INT {
	Int,
	Float:X,
	Float:Y,
	Float:Z,
	Float:A,
	Float:LX,
	Float:LY,
	Float:LZ
};

new const Float:arrHouseInteriors[20][ENUM_HOUSE_INT] = {
	{10, 2269.8772, -1210.3240, 1047.5625, 90.0000, 2258.6406, -1220.5698, 1049.0234},
    {2, 2468.2576, -1698.2361, 1013.5078, 90.0000, 2448.4307, -1686.5829, 1013.5078},
	{3, 2495.8711, -1693.0996, 1014.7422, 180.0000, 2491.6848, -1701.0965, 1018.3437},
	{5, 2233.7888, -1114.2689, 1050.8828, 0.0000, 2234.3101, -1106.1929, 1050.8828},
	{9, 2317.8015, -1026.2113, 1050.2178, 0.0000, 2326.9573, -1015.1844, 1054.7111},
	{3, 235.2923, 1187.3684, 1080.2578, 0.0000, 225.2663, 1191.9791, 1084.4131},
	{2, 226.2912, 1240.0554, 1082.1406, 90.0000, 223.1162, 1249.6422, 1082.1406},
	{1, 223.1618, 1287.5175, 1082.1406, 0.0000, 229.0464, 1287.4229, 1082.1406},
	{5, 226.9281, 1114.2813, 1080.9962, 270.0000, 234.7024, 1107.7053, 1085.0156},
	{15, 295.1485, 1473.1080, 1080.2578, 0.0000, 303.5619, 1472.5411, 1080.2578},
	{10, 23.9584, 1340.6075, 1084.3750, 0.0000, 23.7306, 1349.0950, 1088.8750},
	{4, 222.0425, 1140.7565, 1082.6094, 0.0000, 225.0783, 1152.1362, 1082.6168},
	{12, 2324.4209, -1148.9365, 1050.7101, 0.0000, 2337.9617, -1141.5394, 1054.3047},
	{4, -261.1430, 1456.6396, 1084.3672, 90.0000, -270.5692, 1451.1821, 1088.8672},
	{5, 22.9676, 1403.8368, 1084.4297, 0.0000, 21.6587, 1415.1223, 1084.4297},
	{5, 140.3088, 1366.8196, 1083.8594, 0.0000, 148.0363, 1372.7003, 1088.3672},
	{6, 234.3149, 1064.2772, 1084.2114, 0.0000, 235.5816, 1079.6644, 1087.8126},
	{7, 225.7000, 1022.0012, 1084.0161, 0.0000, 235.2906, 1035.3645, 1088.3125},
	{5, 1298.9750, -796.4567, 1084.0078, 0.0000, 1294.6976, -831.7303, 1085.6328},
	{15, -283.8687, 1471.1174, 1084.3750, 90.0000, -290.3552, 1479.7368, 1088.8750}
};
