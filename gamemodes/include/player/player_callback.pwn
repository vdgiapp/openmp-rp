
public OnPlayerCommandReceived(playerid, cmd[], params[], flags) {
	if(!IsPlayerInGame(playerid)) return 0;
	if(gettime() - CharacterData[playerid][CmdCD] <= 1) {
		ShowTDNx(playerid, 2000, "Vui long doi...");
		return 0;
	}
	CharacterData[playerid][CmdCD] = gettime();
	return 1;
}

hook OnPlayerText(playerid, text[]) {
    if(IsPlayerInGame(playerid)) {
        if(gettime() - CharacterData[playerid][ChatCD] <= 1) return ShowTDNx(playerid, 2000, "Vui long doi...");
    	CharacterData[playerid][ChatCD] = gettime();
        callcmd::local(playerid, text);
    }
    return 0;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(newkeys & KEY_CTRL_BACK) { // Key H
        static Float:depth, Float:pdepth;
        if(!IsPlayerInAnyVehicle(playerid)) callcmd::menu(playerid);
    }
	if(newkeys & KEY_NO) {
		callcmd::enter(playerid, "");
		callcmd::exit(playerid, "");
	}
	return 1;
}

Alias:menu("mainmenu", "mm");
Cmd:menu(playerid) {
	new str[1024] = "", hid = -1;
	format(str, sizeof str, "Thong tin nhan vat\nTui do nhan vat\nDinh vi GPS\nCai dat nhan vat\nDanh sach cac lenh");
	if((hid = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, hid) && House_IsOwner(playerid, hid))
		format(str, sizeof str, "%s\nTu do can nha (ID: %d)", str, hid);
	Dialog_Show(playerid, QuickMenuMain, DS_LIST, ""COL_AQUA"INTERACT MENU", str, "Chon", "Dong");
	return 1;
}

Dialog:QuickMenuMain(playerid, response, listitem, inputtext[]) {
	if(response) {
		switch(listitem) {
			case 0: callcmd::stats(playerid);
			case 1: callcmd::inventory(playerid);
			case 5: {
				new hid = -1;
				if((hid = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, hid) && House_IsOwner(playerid, hid)) return callcmd::houselocker(playerid);
			}
		}
	}
	return 1;
}

Alias:stats("thongtin", "info", "information");
Cmd:stats(playerid) {
	new str[128], bday, bmonth, byear;
	new level, exp;
	format(str, sizeof str, ""COL_AQUA"THONG TIN > %s", GetRoleplayName(CharacterData[playerid][Name]));
	sscanf(CharacterData[playerid][Birthday], "ddd", bday, bmonth, byear);
	sscanf(CharacterData[playerid][Level], "dd", level, exp);
	ClearDialogListitems(playerid);
	AddDialogListitem(playerid, "Ho va ten: \t%s", GetRoleplayName(CharacterData[playerid][Name]));
	AddDialogListitem(playerid, "Ngay sinh: \t%02d / %02d / %04d", bday, bmonth, byear);
	AddDialogListitem(playerid, "Gioi tinh: \t%s", GetGenderName(CharacterData[playerid][Gender]));
	AddDialogListitem(playerid, "Quoc tich: \t%s", GetNationName(CharacterData[playerid][Nation]));
	AddDialogListitem(playerid, "Cap do: \tLv.%d", level);
	AddDialogListitem(playerid, "Kinh nghiem: \t%s / %s .exp", fNumber(exp), fNumber(GetMaxExpFromLevel(level)));
	AddDialogListitem(playerid, "Diem Respects: \t%s RP", fNumber(CharacterData[playerid][Respects]));
	AddDialogListitem(playerid, "Cong viec: \t%s", GetJobName(CharacterData[playerid][JobID]));
	AddDialogListitem(playerid, "Phong cach chien dau: \t%s", GetFightStyleName(CharacterData[playerid][FightStyle]));
	AddDialogListitem(playerid, "Kieu di bo: \t%s", GetWalkStyleName(CharacterData[playerid][WalkStyle]));
	ShowPlayerDialogPages(playerid, #PlayerStatsMain, DS_TABLIST, str, "Chon", "Dong", 20, "{F5D400}TRANG SAU", "{F5D400}TRANG TRUOC");
	return 1;
}

Alias:enter("vao");
Cmd:enter(playerid, params[]) {
    new id = -1;
    if(!IsPlayerInAnyVehicle(playerid) && (id = House_Nearest(playerid)) != -1 && House_IsPlayerOutside(playerid, id)) {
        if(!HouseData[id][Created]) return 0;
        if(!HouseData[id][Owned]) return UsageMsg(playerid, "Su dung /xemnha de xem noi that ben trong truoc khi mua nha.");
        if(HouseData[id][Locked]) return GameTextForPlayerf(playerid, 2000, 6, "~r~Bi khoa");
        if(isequal(HouseData[id][Owner], CharacterData[playerid][Name])) GameTextForPlayerf(playerid, 2000, 6, "~g~Welcome home");
        SetPlayerCompensatedPos(playerid, HouseData[id][InteriorX], HouseData[id][InteriorY], HouseData[id][InteriorZ], HouseData[id][InteriorA], 3000, HouseData[id][InteriorWorld], HouseData[id][InteriorInt]);
        if(HouseData[id][RadioOn] == 1) PlayAudioStreamForPlayer(playerid, HouseData[id][RadioURL]);
    }
    return 1;
}

Alias:exit("ra");
Cmd:exit(playerid, params[]) {
    new id = -1;
    if(!IsPlayerInAnyVehicle(playerid) && (id = House_Nearest(playerid)) != -1 && House_IsPlayerNearExt(playerid, id))	{
        if(!HouseData[id][Created]) return 0;
        SetPlayerCompensatedPos(playerid, HouseData[id][ExteriorX], HouseData[id][ExteriorY], HouseData[id][ExteriorZ], HouseData[id][ExteriorA], 3000, HouseData[id][ExteriorWorld], HouseData[id][ExteriorInt]);
		StopAudioStreamForPlayer(playerid);
	    return 1;
	}
    return 1;
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

    format(str, sizeof str, "%s noi (het to): %s", GetRoleplayName(PlayerName(playerid)), FirstUpper(str));
    ProxDetector(str, 50.0, playerid, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4, COLOR_DIST5);
    return 1;
}

Alias:low("l");
Cmd:low(playerid, params[]) {

    static str[256];
    format(str, sizeof str, "%s", params);

    if(CharacterData[playerid][Injured] >= 3) return ErrorMsg(playerid, "Ban khong the noi to khi nhan vat cua ban da chet.");

    if(isnull(str)) return UsageMsg(playerid, "/l(ow) [noi dung]");

    format(str, sizeof str, "%s noi (nho): %s", GetRoleplayName(PlayerName(playerid)), FirstUpper(str));
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

    format(str, sizeof str, "* %s.", params);
    SetPlayerChatBubble(playerid, str, COLOR_PURPLE, 20.0, 10000);
    format(str, sizeof str, "* %s %s.", GetRoleplayName(PlayerName(playerid)), params);
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

    if(!ToggleChatOOC) return ErrorMsg(playerid, "Kenh chat OOC hien tai da bi tat.");

    foreach(new p : Player) {
        static togOOC2, togAdv, togGov, togPM, togAdm, togNews, togHUD, togFaction, togService;
        sscanf(CharacterData[p][Settings], "iiiiiiiii", togOOC2, togAdv, togGov, togPM, togAdm, togNews, togHUD, togFaction, togService);
        #pragma unused togAdv, togGov, togPM, togAdm, togNews, togHUD, togFaction, togService

        if(togOOC2) {
            format(str, sizeof(str), "OOC > (( [%d] %s: %s ))", playerid, GetRoleplayName(PlayerName(playerid)), FirstUpper(str));
            ClientMsg(p, COLOR_OOC, str);
        }
    }

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

    SendPMLog(playerid, target, FirstUpper(str));

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
