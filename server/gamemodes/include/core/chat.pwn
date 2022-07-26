
#include <YSI_Coding/y_hooks>

hook OnPlayerText(playerid, text[]) {
	if(IsPlayerInGame(playerid)) {
    	static string[128];
    	strset(string, "%s noi: %s", PlayerName(playerid), text);
        //if(GetPlayerMuteType(playerid) == 1) return ErrorMsg(playerid, "WARNING: Ban dang bi mute.");
        SetPlayerChatBubble(playerid, text, COLOR_WHITE, 20, 7000);
        return LocalMsg(playerid, string);
    }
}