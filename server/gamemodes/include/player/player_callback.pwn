
hook OnPlayerCmdPerformed(playerid, cmd[], params[], result, flags)
{
    if(gettime() - CharacterData[playerid][CmdCD] < 1) return ErrorMsg(playerid, "Vui long doi mot luc truoc khi su dung lenh.");
    CharacterData[playerid][CmdCD] = gettime();
    return 1;
}

hook OnPlayerText(playerid, text[]) {
    if(!IsPlayerInGame(playerid)) return 0;
    //if(GetPlayerMuteType(playerid) == 1) return ErrorMsg(playerid, "WARNING: Ban dang bi mute.");
    static str[256];
    format(str, sizeof str, "%s", text);
    format(str, sizeof str, "[%d] %s noi: %s", playerid, GetRoleplayName(PlayerName(playerid)), FirstUpper(str));
    ProxDetector(str, 20.0, playerid, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4, COLOR_DIST5);
    return 0;
}

Cmd:b(playerid, params[]) {

    static str[256];
    format(str, sizeof str, "%s", params);

	if(isnull(str)) return UsageMsg(playerid, "/b [noi dung]");

    format(str, sizeof str, "(( [%d] %s : %s ))", playerid, GetRoleplayName(PlayerName(playerid)), FirstUpper(str));
    ProxDetector(str, 20.0, playerid, COLOR_WHITE, COLOR_WHITE, COLOR_WHITE, COLOR_WHITE, COLOR_WHITE);
	return 1;
}

Alias:shout("s");
Cmd:shout(playerid, params[]) {

    static str[256];
    format(str, sizeof str, "%s", params);

    if(isnull(str)) return UsageMsg(playerid, "/s(hout) [noi dung]");

    format(str, sizeof str, "[%d] %s noi to: %s", playerid, GetRoleplayName(PlayerName(playerid)), FirstUpper(str));
    ProxDetector(str, 50.0, playerid, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4, COLOR_DIST5);
    return 1;
}

Alias:low("l");
Cmd:low(playerid, params[]) {

    static str[256];
    format(str, sizeof str, "%s", params);

    if(isnull(str)) return UsageMsg(playerid, "/l(ow) [noi dung]");

    format(str, sizeof str, "[%d] %s noi nho: %s", playerid, GetRoleplayName(PlayerName(playerid)), FirstUpper(str));
    ProxDetector(str, 8.0, playerid, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4, COLOR_DIST5);
    return 1;
}

Cmd:ame(playerid, params[]) {

    static str[256];

    if(CharacterData[playerid][Injured]) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong khi dang bi thuong.");
    if(isnull(params)) return UsageMsg(playerid, "/ame [hanh dong]");

    format(str, sizeof str, "( %s. )", params);
    SetPlayerChatBubble(playerid, str, COLOR_PURPLE, 20.0, 10000);
    format(str, sizeof str, "* %s %s", GetRoleplayName(PlayerName(playerid)), params);
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
Cmd:pm(playerid, params[])
{
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
    //admin pm
    return 1;
}