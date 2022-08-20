
#define HOUSE_CP_DISTANCE			(5)
#define HOUSE_CP_SIZE 				(1)
#define MAX_HOUSES 					(1200)

enum ENUM_HOUSE_INFO {
	ID,
	Address[MAX_MAP_ZONE_NAME],
	Created,
	Owned,
	Owner[MAX_PLAYER_NAME+1],
	Locked,
	Alarm,
	Level,
	Price,
	IntID,
	Float:ExteriorX,
	Float:ExteriorY,
	Float:ExteriorZ,
	Float:ExteriorA,
	ExteriorInt,
	ExteriorWorld,
	STREAMER_TAG_CP:ExtCP,
	Float:InteriorX,
	Float:InteriorY,
	Float:InteriorZ,
	Float:InteriorA,
	InteriorInt,
	InteriorWorld,
	STREAMER_TAG_CP:IntCP,
	Float:LockerX,
	Float:LockerY,
	Float:LockerZ,
	Cash,
	Item0[64],
	Item1[64],
	Item2[64],
	Item3[64],
	Item4[64],
	Item5[64],
	Item6[64],
	Item7[64],
	Item8[64],
	Item9[64]
}
new HouseData[MAX_HOUSES][ENUM_HOUSE_INFO];
