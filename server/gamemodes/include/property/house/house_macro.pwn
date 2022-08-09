
#define MAX_HOUSES (1000)

enum hInfo {
	ID,
	Address[32],
	Created,
	Text3D:Label,
	Owned,
	Owner[MAX_PLAYER_NAME+1],
	Locked,
	PickupModel,
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
	InteriorWorld
}
new HouseData[MAX_HOUSES][hInfo];

enum hItem {
	hItemID,
	hItemAmount,
	hItemDurable
}
new HouseItem[MAX_HOUSES][11][hItem];
