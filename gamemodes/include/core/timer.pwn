
#include <YSI_Coding\y_hooks>

timer UnFreezePlayer[0](playerid) {
	if(!GetPVarInt(playerid, #Freezing)) return 0;
	DeletePVar(playerid, #Freezing);
	TogglePlayerControllable(playerid, true);
}

timer tKickPlayer[0](playerid) {
	Kick(playerid);
}

timer playerHideTDN[0](playerid, TDN, i) {
	hideTDN(playerid, TDN);
	tmpTDN_Str[playerid][i][0] = EOS;
}
