
#include <YSI_Coding/y_hooks>

hook OnPlayerCmdPerformed(playerid, cmd[], params[], result, flags)
{
	if(!IsPlayerInGame(playerid)) return 0;
	if(result == -1) {
		format(Q@, 128, "SERVER: Cau lenh \"%s\" khong ton tai. Hay su dung lenh /help de xem danh sach cac lenh.");
		return SendClientMessage(playerid, COLOR_LIGHTRED, Q@);
	}
	return 1;
}