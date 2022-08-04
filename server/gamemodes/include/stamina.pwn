
#include <YSI_Coding\y_hooks>

ptask Stamina_Update[100](playerid) {
	if(IsPlayerSprinting(playerid)) GivePlayerStamina(playerid, -2);
	if(IsPlayerBunnyhop(playerid)) GivePlayerStamina(playerid, -100);
	else if(GetPlayerStamina(playerid) < GetPlayerMaxStamina(playerid)) GivePlayerStamina(playerid, 5);
	return 1;
}

public OnPlayerJump(playerid) {
	GivePlayerStamina(playerid, -100);
	return 1;
}

public OnPlayerStaminaOver(playerid) {
	SetPlayerExhausted(playerid, true);
	return 1;
}
