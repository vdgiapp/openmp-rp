
#include <YSI_Coding\y_hooks>

public OnPlayerCommandPerformed(playerid, cmd[], params[], result, flags)
{
	if(!IsPlayerInGame(playerid)) return 0;
	if(result == -1) return ErrorMsg(playerid, "Cau lenh /%s khong ton tai. Hay su dung lenh /help de xem danh sach cac lenh.", cmd);
	return 1;
}