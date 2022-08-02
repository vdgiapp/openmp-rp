
#include <YSI_Coding/y_hooks>

public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart) {
	if(!IsPlayerInGame(playerid) || GetPVarInt(playerid, #Freezing)) return 0;
	else {
		// continue
		return 1;
	}
}