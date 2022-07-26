
#include <YSI_Coding/y_hooks>

timer UnFreezePlayer[1000](playerid) {
	DeletePVar(playerid, "FreezeProtection");
	TogglePlayerControllable(playerid, true);
}

FreezePlayer(playerid, time) {
	SetPVarInt(playerid, "FreezeProtection", 1);
	TogglePlayerControllable(playerid, false);
	defer UnFreezePlayer[time](playerid);
}

timer tKickPlayer[1000](playerid) {
	Kick(playerid);
}

KickPlayer(playerid, time) {
	defer tKickPlayer[time](playerid);
}