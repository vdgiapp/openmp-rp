
#include <YSI_Coding/y_hooks>

timer UnFreezePlayer[0](playerid) {
	if(!GetPVarInt(playerid, #Freezing)) return 0;
	DeletePVar(playerid, #Freezing);
	TogglePlayerControllable(playerid, true);
}

timer tKickPlayer[0](playerid) {
	Kick(playerid);
}
