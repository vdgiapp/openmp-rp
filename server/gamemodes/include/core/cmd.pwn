
#include <YSI_Coding/y_hooks>

hook OnPlayerCmdPerformed(playerid, cmd[], params[], result, flags)
{
	if(!IsPlayerInGame(playerid)) return 0;
	if(result == -1) return ClientMsg(playerid, COLOR_LIGHTRED, "SERVER: Cau lenh \"%s\" khong ton tai. Hay su dung lenh /help de xem danh sach cac lenh.", cmd);
	return 1;
}