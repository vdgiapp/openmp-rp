
#include <YSI_Coding\y_hooks>

public OnPlayerText(playerid, text[]) {
    if(!IsPlayerInGame(playerid)) return 0;
    static str[256];
    format(str, sizeof str, "%s noi: %s", GetRoleplayName(PlayerName(playerid)), text);
    //if(GetPlayerMuteType(playerid) == 1) return ErrorMsg(playerid, "WARNING: Ban dang bi mute.");
    printf("[%s] noi: %s", PlayerName(playerid), text);
    LocalMsg(playerid, str);
    return 0;
}