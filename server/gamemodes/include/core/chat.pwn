
#include <YSI_Coding/y_hooks>

hook OnPlayerText(playerid, text[]) {
	if(IsPlayerInGame(playerid)) {
    	format(Q@, 128, "%s noi: %s", PlayerName(playerid), text);
        //if(GetPlayerMuteType(playerid) == 1) return ErrorMsg(playerid, "WARNING: Ban dang bi mute.");
        SetPlayerChatBubble(playerid, text, COLOR_WHITE, 20, 7000);
        return LocalMsg(playerid, Q@);
    }
    return 0;
}