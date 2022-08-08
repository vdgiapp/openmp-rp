
hook OnPlayerText(playerid, text[]) {
    if(!IsPlayerInGame(playerid)) return 0;
    //if(GetPlayerMuteType(playerid) == 1) return ErrorMsg(playerid, "WARNING: Ban dang bi mute.");
    callcmd::local(playerid, text);
    return 0;
}

Cmd:b(playerid, params[]) {

    static str[256];
    format(str, sizeof str, "%s", params);

	if(isnull(str)) return UsageMsg(playerid, "/b [noi dung]");

    format(str, sizeof str, "(( [%d] %s: %s ))", playerid, GetRoleplayName(PlayerName(playerid)), FirstUpper(str));
    ProxDetector(str, 20.0, playerid, COLOR_WHITE, COLOR_WHITE, COLOR_WHITE, COLOR_WHITE, COLOR_WHITE);
	return 1;
}

Alias:shout("s");
Cmd:shout(playerid, params[]) {

    static str[256];
    format(str, sizeof str, "%s", params);

    if(CharacterData[playerid][Injured] >= 2) return ErrorMsg(playerid, "Ban khong the noi to khi nhan vat cua ban dang bi thuong.");

    if(isnull(str)) return UsageMsg(playerid, "/s(hout) [noi dung]");

    format(str, sizeof str, "%s noi to: %s", GetRoleplayName(PlayerName(playerid)), FirstUpper(str));
    ProxDetector(str, 50.0, playerid, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4, COLOR_DIST5);
    return 1;
}

Alias:low("l");
Cmd:low(playerid, params[]) {

    static str[256];
    format(str, sizeof str, "%s", params);

    if(CharacterData[playerid][Injured] >= 3) return ErrorMsg(playerid, "Ban khong the noi to khi nhan vat cua ban da chet.");

    if(isnull(str)) return UsageMsg(playerid, "/l(ow) [noi dung]");

    format(str, sizeof str, "%s noi nho: %s", GetRoleplayName(PlayerName(playerid)), FirstUpper(str));
    ProxDetector(str, 8.0, playerid, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4, COLOR_DIST5);
    return 1;
}

Cmd:local(playerid, params[])
{
    static str[256];
    format(str, sizeof str, "%s", params);

    if(CharacterData[playerid][Injured] == 2) return callcmd::low(playerid, str);
    if(CharacterData[playerid][Injured] >= 3) return ErrorMsg(playerid, "Ban khong the noi khi nhan vat cua ban da chet.");

    if(isnull(str)) return UsageMsg(playerid, "/local [noi dung]");

    format(str, sizeof str, "%s noi: %s", GetRoleplayName(PlayerName(playerid)), FirstUpper(str));
    ProxDetector(str, 20.0, playerid, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4, COLOR_DIST5);
    return 1;
}

Cmd:ame(playerid, params[]) {

    static str[256];

    if(CharacterData[playerid][Injured] >= 3) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong khi nhan vat da chet.");

    if(isnull(params)) return UsageMsg(playerid, "/ame [hanh dong]");

    format(str, sizeof str, "( %s. )", params);
    SetPlayerChatBubble(playerid, str, COLOR_PURPLE, 20.0, 10000);
    format(str, sizeof str, "* %s %s", GetRoleplayName(PlayerName(playerid)), params);
    ClientMsg(playerid, COLOR_PURPLE, str);
    return 1;
}

Cmd:me(playerid, params[]) {

    static str[256];

    if(CharacterData[playerid][Injured] >= 3) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong khi nhan vat da chet.");

    if(isnull(params)) return UsageMsg(playerid, "/me [hanh dong]");

    format(str, sizeof str, "* %s %s", GetRoleplayName(PlayerName(playerid)), params);
    ProxDetector(str, 20.0, playerid, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
    return 1;
}

Cmd:amy(playerid, params[]) {

    static str[256];

    if(isnull(params)) return UsageMsg(playerid, "/amy [mo ta]");

    format(str, sizeof str, "* %s's %s", GetRoleplayName(PlayerName(playerid)), params);
    ProxDetector(str, 20.0, playerid, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
    return 1;
}

Cmd:do(playerid, params[]) {
    static str[256];

    if (isnull(params)) return UsageMsg(playerid, "/do [mo ta]");

    format(str, sizeof str, "* %s (( %s ))", params, GetRoleplayName(PlayerName(playerid)));
    ProxDetector(str, 20.0, playerid, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
    return 1;
}

Alias:ooc("o");
Cmd:ooc(playerid, params[]) {

    static str[256];
    format(str, sizeof(str), "%s", params);

    if(isnull(str)) return UsageMsg(playerid, "/o(oc) [noi dung]");

    static togOOC, togAdv, togGov, togPM, togAdm, togNews, togHUD, togFaction, togService;
    sscanf(CharacterData[playerid][Settings], "iiiiiiiii", togOOC, togAdv, togGov, togPM, togAdm, togNews, togHUD, togFaction, togService);
    #pragma unused togAdv, togGov, togPM, togAdm, togNews, togHUD, togFaction, togService

    if(!togOOC) return ErrorMsg(playerid, "Ban can phai bat tinh nang tro chuyen OOC trong cai dat.");

    format(str, sizeof(str), "OOC > [%d] %s: %s", playerid, GetRoleplayName(PlayerName(playerid)), FirstUpper(str));
    GlobalMsg(COLOR_OOC, str);
    return 1;
}

Alias:pm("privatemessage");
Cmd:pm(playerid, params[]) {

    static target, str[256];

    if(sscanf(params, "us[256]", target, str)) return UsageMsg(playerid, "/pm [ten/id] [noi dung]");

    if(!IsPlayerInGame(target)) return ErrorMsg(playerid, "Nguoi choi do chua dang nhap vao game.");

    if(target == playerid) return ErrorMsg(playerid, "Ban khong the nhan tin rieng voi chinh minh.");

    static togOOC, togAdv, togGov, togPM[2], togAdm, togNews, togHUD, togFaction, togService;
    sscanf(CharacterData[playerid][Settings], "iiiiiiiii", togOOC, togAdv, togGov, togPM[0], togAdm, togNews, togHUD, togFaction, togService);
    sscanf(CharacterData[target][Settings], "iiiiiiiii", togOOC, togAdv, togGov, togPM[1], togAdm, togNews, togHUD, togFaction, togService);
    #pragma unused togOOC, togAdv, togGov, togAdm, togNews, togHUD, togFaction, togService

    if (!togPM[0]) return ErrorMsg(playerid, "Ban can phai bat tinh nang tro chuyen PM trong cai dat.");

    if (!togPM[1]) return ErrorMsg(playerid, "Nguoi choi do da tat tinh nang tro chuyen PM.");

    ClientMsg(target, COLOR_PMIN, "(( PM tu %s [%d]: %s ))", GetRoleplayName(PlayerName(playerid)), playerid, FirstUpper(str));
    PlayerPlaySound(target, 4203, 0, 0, 0);
    ClientMsg(playerid, COLOR_PMOUT, "(( PM cho %s [%d]: %s ))", GetRoleplayName(PlayerName(target)), target, FirstUpper(str));
    PlayerPlaySound(playerid, 4203, 0, 0, 0);

    SendStaffPM(playerid, target, FirstUpper(str));

    return 1;
}

Alias:help("cmd", "cmds", "trogiup");
Cmd:help(playerid, params[]) {
    Dialog_Show(playerid, Help_Dialog, DS_LIST, ""COL_AQUA"DANH SACH LENH", "Cac lenh co ban\nCac lenh nghe nghiep\nCac lenh tai san", "Xem", "Thoat");
    return 1;
}

Dialog:Help_Dialog(playerid, response, listitem, inputtext[]) {
    if(response) {
        switch(listitem) {
            case 0: {}
        }
    }
    return 1;
}

Alias:settings("cd", "caidat", "setting");
Cmd:settings(playerid, params[]) {

    return 1;
}

Alias:menu("mainmenu", "mm");
Cmd:menu(playerid, params[]) {

    return 1;
}

Alias:stats("stat", "thongtin", "info");
Cmd:stats(playerid, params) {

    return 1;
}

Alias:streamerfix("sf");
Cmd:streamerfix(playerid, params) {

	static objects, sid;

	static Float:x, Float:y, Float:z;

    Streamer_SetVisibleItems(STREAMER_TYPE_OBJECT, Streamer_GetVisibleItems(STREAMER_TYPE_OBJECT));

	GetPlayerPos(playerid, x, y, z);
	Streamer_DestroyAllVisibleItems(playerid, STREAMER_TYPE_OBJECT);
	Streamer_UpdateEx(playerid, x, y, z, -1, -1, STREAMER_TYPE_OBJECT);

    return 1;
}
