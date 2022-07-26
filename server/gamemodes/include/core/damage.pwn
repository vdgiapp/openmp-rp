
#include <YSI_Coding/y_hooks>

hook OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart) {
	if(!IsPlayerInGame(playerid) || GetPVarInt(playerid, "FreezeProtection")) return 0;
	else {
		// continue
		return 1;
	}
}