
#include <YSI_Coding\y_hooks>

hook OnPlayerUpdate(playerid)
{
	if(IsPlayerRunning(playerid)) GivePlayerStamina(playerid, -1);
	if(GetPlayerStamina(playerid) < GetPlayerMaxStamina(playerid)) GivePlayerStamina(playerid, 1);
	return 1;
}

public OnPlayerStaminaOver(playerid)
{
	SetPlayerExhausted(playerid, true);
	return 1;
}