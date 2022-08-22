
task GetSvInfo[1000]() mysql_tquery(Database, "SELECT * FROM `serverinfo`", "OnGetSvInfo");

func OnGetSvInfo() {

	static day, month, year, str[64];
	getdate(year, month, day);
	#pragma unused year, month

	format(str, sizeof str, "%d", cache_value_int(0, "Registered"));
	TextDrawSetString(Auth_Registered, str);
	format(str, sizeof str, "%d", cache_value_int(0, "CharCreated"));
	TextDrawSetString(Auth_CharCreated, str);

	if(cache_value_int(0, "Day") != day) {
		mysql_format(Database, str, sizeof str, "UPDATE `serverinfo` SET `Day`='%d', `Logged`='0'", day);
		mysql_tquery(Database, str);
	}
	format(str, sizeof str, "%d", cache_value_int(0, "Logged")); TextDrawSetString(Auth_LoggedToday, str);
	format(str, sizeof str, "%d", GetPlayersOnline()); TextDrawSetString(Auth_PlayersOnline, str);
}

func OnCheckingPlayerAccount(playerid) {
	if(cache_num_rows()) {
		static isbanned, banday, banmonth, banyear, banby[32], banreason[128],
			unbanday, unbanmonth, unbanyear, online;
		static day, month, year, hour, minute, second, str[256];
		online = cache_value_int(0, "Online");
		getdate(year, month, day); gettime(hour, minute, second);
		sscanf(cache_value_string(0, "BanData"), "iiiis[32]iii", isbanned, banday, banmonth, banyear, banby, unbanday, unbanmonth, unbanyear);
		format(banreason, sizeof banreason, "%s", cache_value_string(0, "BanReason"));
		format(AuthData[playerid][Password], 65, "%s", cache_value_string(0, "Password"));
		format(AuthData[playerid][Password2], 65, "%s", cache_value_string(0, "Password2"));
		AuthData[playerid][EnablePass2] = cache_value_int(0, "EnablePass2");

		// MISC
		for(new i = 0; i < 100; i++) ClientMsg(playerid, -1, " ");
		SetPlayerTeam(playerid, NO_TEAM);
		SetPlayerColor(playerid, COLOR_WHITE);
		SetPlayerPos(playerid, 1514.5, -1006, 100);
		SetPlayerVirtualWorld(playerid, 100+playerid);
		SetPlayerInterior(playerid, 0);
		SetPlayerHealth(playerid, FLOAT_INFINITY);
		SetPlayerCameraPos(playerid, 1514.5, -1006, 77.5);//1982.5140, -1703.8862, 100);
		SetPlayerCameraLookAt(playerid, 1511, -1002.5, 77.5);//1765.5276, -1451.8524, 137.7477);
		TogglePlayerControllable(playerid, false);
		//CheckVoiceChat(playerid);

		format(str, sizeof str, "~w~%s", AuthData[playerid][Account]);
		Auth_PlayerName[playerid] = CreatePlayerTextDraw(playerid, 15.000000, 97.000000, str);
		PlayerTextDrawFont(playerid, Auth_PlayerName[playerid], 1);
		PlayerTextDrawLetterSize(playerid, Auth_PlayerName[playerid], 0.362500, 1.700000);
		PlayerTextDrawTextSize(playerid, Auth_PlayerName[playerid], 630.000000, 200.000000);
		PlayerTextDrawSetOutline(playerid, Auth_PlayerName[playerid], 0);
		PlayerTextDrawSetShadow(playerid, Auth_PlayerName[playerid], 0);
		PlayerTextDrawAlignment(playerid, Auth_PlayerName[playerid], 1);
		PlayerTextDrawColor(playerid, Auth_PlayerName[playerid], -1);
		PlayerTextDrawBackgroundColor(playerid, Auth_PlayerName[playerid], 255);
		PlayerTextDrawBoxColor(playerid, Auth_PlayerName[playerid], 50);
		PlayerTextDrawUseBox(playerid, Auth_PlayerName[playerid], 0);
		PlayerTextDrawSetProportional(playerid, Auth_PlayerName[playerid], 1);
		PlayerTextDrawSetSelectable(playerid, Auth_PlayerName[playerid], 0);

		for(new i = 0; i < 10; i++) TextDrawShowForPlayer(playerid, AuthTD_MiscTD[i]);
		TextDrawShowForPlayer(playerid, Auth_Button);
		TextDrawShowForPlayer(playerid, Auth_Button2);
		TextDrawShowForPlayer(playerid, Auth_Registered);
		TextDrawShowForPlayer(playerid, Auth_CharCreated);
		TextDrawShowForPlayer(playerid, Auth_PlayersOnline);
		TextDrawShowForPlayer(playerid, Auth_LoggedToday);
		PlayerTextDrawShow(playerid, Auth_PlayerName[playerid]);
		SelectTextDraw(playerid, COLOR_WHITE);

		if((day >= unbanday && month >= unbanmonth && year >= unbanyear) || (day < unbanday && month > unbanmonth && year >= unbanyear)) {
			isbanned = 0;
			format(str, sizeof str, "UPDATE `accounts` SET `BanData`='0 0 0 0 none 0 0 0' WHERE `Account`='%s'", AuthData[playerid][Account]);
			mysql_tquery(Database, str);
		}
		if(isbanned == 1) {
			ErrorMsg(playerid, "Tai khoan nay da bi khoa. Hay truy cap vao dien dan de xem thong tin chi tiet hon.");
			return KickPlayer(playerid, 500);
		}
		if(online == 1) {
			ErrorMsg(playerid, "Tai khoan nay dang truc tuyen. Ban khong the dang nhap vao tai khoan nay.");
			return KickPlayer(playerid, 500);
		}
		if(IsPlayerInGame(playerid)) return Kick(playerid);
	}
	return 1;
}

IsPlayerInGame(playerid) {
	if(IsPlayerConnected(playerid) && AuthData[playerid][Logged] &&
		AuthData[playerid][Joined]) return true;
	return false;
}

GetRoleplayName(const name[]) {
	static str[MAX_PLAYER_NAME+1];
    mysql_format(Database, str, sizeof str, "%s", name);
    strreplace(str, "_", " ");
    return str;
}

IsRoleplayName(const nickname[])
{
  static Regex:regex;
  if (!regex) regex = Regex_New("[A-Z][a-z]+_[A-Z][a-z]+");

  return Regex_Check(nickname, regex);
}
/*
IsValidAccount(const str[]) {
	if(str[0] == '_' || str[0] == '.') return 0;
    for(new i = 1; i < strlen(str), i++) {
    	if(!((str[i] >= 'a' && str[i] <= 'z') || (str[i] >= 'A' && str[i] <= 'Z') || (str[i] >= '0' && str[i] <= '9') || str[i] == '_' || str[i] == '.')) return 0;
    }
    return 1;
}
*/
IsValidEmail(const email[])
{
	static Regex:regex;
	if (!regex) regex = Regex_New("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$");

	return Regex_Check(email, regex);
}

SetRandomName(playerid, name[], min_int, max_int)
{
	static str[MAX_PLAYER_NAME+1];
	format(str, sizeof str, "%s%d", name, min_int + random(max_int - min_int));
	switch(SetPlayerName(playerid, str)) {
		case -1: return SetRandomName(playerid, name, min_int, max_int);
	}
}

CheckPlayerNameToLogin(playerid) {
	// Check if player is a newbie or old member
	static str[256];
	mysql_format(Database, str, sizeof str, "SELECT * FROM `accounts` WHERE `Account`='%s'", AuthData[playerid][Account]);
	mysql_tquery(Database, str, "OnCheckPNameToLog", "i", playerid);
}

func OnCheckPNameToLog(playerid) {
	if(cache_num_rows()) return ShowLoginDialog(playerid);
	else return ErrorMsg(playerid, "Tai khoan nay khong ton tai. Neu ban muon tao tai khoan, hay truy cap vao website "SERVER_WEBSITE" de dang ky.");/* ShowRegisterDialog(playerid); */
}

ShowLoginDialog(playerid) {
	static str[256];
	format(str, sizeof str, "\\c"COL_WHITE"Chao mung ban da quay tro lai may chu, "COL_GREEN"%s\n\\c"COL_WHITE"Hay nhap mat khau cua ban de dang nhap vao tro choi!", AuthData[playerid][Account]);
	Dialog_Show(playerid, Login_Pass, DS_PASS, ""COL_AQUA""SERVER_NAME"", str, "Xong", "Dong");
}

/*
ShowRegisterDialog(playerid) {
	static str[256];
	format(str, sizeof str, "\\c"COL_WHITE"Chao mung ban da den may chu, "COL_GREEN"%s\n\\c"COL_WHITE"Hay nhap mat khau cua ban de dang ky tai khoan moi!", AuthData[playerid][Account]);
	Dialog_Show(playerid, Register_Pass, DS_PASS, ""COL_AQUA""SERVER_NAME"", str, "Xong", "Dong");
}

ShowEmailDialog(playerid) {
	Dialog_Show(playerid, Register_Email, DS_INPUT, ""COL_AQUA""SERVER_NAME"", "\\c"COL_WHITE"Hay nhap email cua ban de hoan thanh qua trinh dang ky tai khoan!", "Xong", "Quay lai");
}
*/

ShowCharCreateDialog(playerid) {
	static gender[16];
	switch(CreateCharData[playerid][Gender])  {
		case 1: format(gender, sizeof gender, "Nam");
		case 2: format(gender, sizeof gender, "Nu");
	}

	static nation[16];
	switch(CreateCharData[playerid][Nation])  {
		case 1: format(nation, sizeof nation, "Los Santos");
		case 2: format(nation, sizeof nation, "San Fierro");
		case 3: format(nation, sizeof nation, "Las Venturas");
		case 4: format(nation, sizeof nation, "Countryside");
	}

	static str[1024];
    format(str, sizeof str, "Ten nhan vat\t%s\n\
        Gioi tinh\t%s\n\
        Ngay sinh\t%s\n\
        Quoc tich\t%s\n\
        Trang phuc\t%d\n\
        Mo ta nhan vat\n\
        "COL_GREEN"Hoan thanh",
        GetRoleplayName(CreateCharData[playerid][Name]), gender,
        CreateCharData[playerid][Birthday],
        nation, CreateCharData[playerid][SkinID]);
	return Dialog_Show(playerid, Char_Create, DS_TABLIST, ""COL_AQUA"TAO NHAN VAT", str, "Chon", "Thoat");
}

ShowBDayDialog(playerid) {
	static string[512]; format(string, sizeof string, "Ngay 01");
	switch(CreateCharData[playerid][BMonth]) {
		case 2:	for(new i = 2; i < 30; i++)	{ format(string, sizeof string, "%s\nNgay %02d", string, i); }
		case 1,3,5,7,8,10,12: for(new i = 2; i < 32; i++) { format(string, sizeof string, "%s\nNgay %02d", string, i); }
		case 4,6,9,11: for(new i = 2; i < 31; i++) { format(string, sizeof string, "%s\nNgay %02d", string, i); }
	}
	Dialog_Show(playerid, cCreate_BDay, DS_LIST, ""COL_AQUA"CHON NGAY SINH", string, "Chon", "Quay lai");
}

ShowBMonthDialog(playerid) {
	static string[512]; format(string, sizeof string, "Thang 01");
	for(new i = 2; i < 13; i++) { format(string, sizeof string, "%s\nThang %02d", string, i); }
	Dialog_Show(playerid, cCreate_BMonth, DS_LIST, ""COL_AQUA"CHON THANG SINH", string, "Chon", "Quay lai");
}

ShowBYearDialog(playerid) {
	static currentyear, a, b;
	getdate(currentyear, a, b);
	#pragma unused a, b
	static string[1024]; format(string, sizeof string, "Nam %d", currentyear-80);
    for(new i = currentyear-79; i < currentyear-17+1; i++) { format(string, sizeof string, "%s\nNam %d", string, i); }
	Dialog_Show(playerid, cCreate_BYear, DS_LIST, ""COL_AQUA"CHON NAM SINH", string, "Chon", "Quay lai");
}

ShowCharSelDialog(playerid) {
	format(AuthData[playerid][CharSel], 512, "Slot\tTen nhan vat\tCap do");
	for(new i = 1; i < 4; i++) {
		static str[512];
		mysql_format(Database, str, sizeof str, "SELECT * FROM `characters` WHERE `Account`='%s' AND `Slot`='%d'", AuthData[playerid][Account], i);
		mysql_tquery(Database, str, "OnGetCharTmpData", "ii", playerid, i);
	}
}

func OnGetCharTmpData(playerid, slot) {
	static str[256], tmp; tmp = slot-1;
	if(cache_num_rows()) {
		sscanf(cache_value_string(0, "Level"), "ii", tmpCharacterData[playerid][tmp][Level], tmpCharacterData[playerid][tmp][Available]);
		tmpCharacterData[playerid][tmp][Available] = 1;
		format(tmpCharacterData[playerid][tmp][Name], 25, "%s", cache_value_string(0, "Name"));
		format(str, sizeof str, "\n%d\t%s\tLv.%d", slot, GetRoleplayName(tmpCharacterData[playerid][tmp][Name]), tmpCharacterData[playerid][tmp][Level]);
		strcat(AuthData[playerid][CharSel], str);
		if(slot == 3) Dialog_Show(playerid, Char_Selection, DS_HEADERS, ""COL_AQUA"CHON NHAN VAT", AuthData[playerid][CharSel], "Chon", "Thoat");
	}
	else {
		tmpCharacterData[playerid][tmp][Available] = 0;
		format(tmpCharacterData[playerid][tmp][Name], 25, "");
		format(str, sizeof str, "\n"COL_GREY"%d\t"COL_GREY"Tao nhan vat", slot);
		strcat(AuthData[playerid][CharSel], str);
		if(slot == 3) Dialog_Show(playerid, Char_Selection, DS_HEADERS, ""COL_AQUA"CHON NHAN VAT", AuthData[playerid][CharSel], "Chon", "Thoat");
	}
}

LoginSuccess(playerid) {
	static day, month, year, hour, minute, second;
	getdate(year, month, day);
	gettime(hour, minute, second);

	static str[256];
	mysql_format(Database, str, sizeof str, "UPDATE `accounts` SET `Online`='1', `LastTimeLogged`='%02d %02d %02d %02d %02d %04d' WHERE `Account`='%s'", hour, minute, second, day, month, year, AuthData[playerid][Account]);
	mysql_tquery(Database, str);
	mysql_tquery(Database, "UPDATE `serverinfo` SET `Logged`=`Logged`+1");

	SuccessMsg(playerid, "Dang nhap vao tai khoan thanh cong. Chuc ban choi game vui ve.");
	flog(AUTH_LOG_FILE, "[AUTH] Tai khoan \"%s\" da dang nhap vao tro choi.", AuthData[playerid][Account]);
	PlayerPlaySound(playerid, 1084, 0, 0, 0);
	SetRandomName(playerid, "Logged_", 100000, 999999);

	for(new i = 0; i < 10; i++) TextDrawHideForPlayer(playerid, AuthTD_MiscTD[i]);
	TextDrawHideForPlayer(playerid, Auth_Button);
	TextDrawHideForPlayer(playerid, Auth_Button2);
	TextDrawHideForPlayer(playerid, Auth_Registered);
	TextDrawHideForPlayer(playerid, Auth_CharCreated);
	TextDrawHideForPlayer(playerid, Auth_PlayersOnline);
	TextDrawHideForPlayer(playerid, Auth_LoggedToday);
	PlayerTextDrawHide(playerid, Auth_PlayerName[playerid]);
	CancelSelectTextDraw(playerid);

	// Reset
    format(AuthData[playerid][Password], 65, "");
    format(AuthData[playerid][Password2], 65, "");
	AuthData[playerid][Attempt] = 0;

	// Set var
	AuthData[playerid][Logged] = 1;

	FadePlayerScreen(playerid, tempLoadCharacters, 0x000000FF, 1000, 25);
}

/*
CheckToRegister(playerid) {
	static str[1024];
	mysql_format(Database, str, sizeof str, "SELECT * FROM `accounts` WHERE `Email` = '%s'", AuthData[playerid][Email]);
	mysql_tquery(Database, str, "OnCheckEmailToReg", "i", playerid);
	mysql_format(Database, str, sizeof str, "SELECT * FROM `accounts` WHERE `Account`= '%s'", AuthData[playerid][Account]);
	mysql_tquery(Database, str, "OnCheckAccountToReg", "i", playerid);
}

function OnCheckEmailToReg(playerid) {
	if(cache_num_rows()) {
		ShowEmailDialog(playerid);
		return ErrorMsg(playerid, "Email nay da duoc dung de dang ky. Vui long su dung email khac!");
	}
}

function OnCheckAccountToReg(playerid) {
	static str[1024];
	if(!cache_num_rows()) {
		static day, month, year, hour, minute, second;
		getdate(year, month, day);
		gettime(hour, minute, second);
		SHA256_PassHash(AuthData[playerid][Password], "", str, sizeof str);
		mysql_format(Database, str, sizeof str, "INSERT INTO `accounts` (`Account`, `Password`, `EnablePass2`, `Email`) VALUES ('%s', '%s', '0', '%s')", AuthData[playerid][Account], str, AuthData[playerid][Email]);
		mysql_tquery(Database, str);
		SuccessMsg(playerid, "Tai khoan cua ban da duoc dang ky thanh cong.");
		flog(AUTH_LOG_FILE, "[AUTH] Tai khoan \"%s\" da duoc dang ky thanh cong.", AuthData[playerid][Account]);
		PlayerPlaySound(playerid, 1084, 0, 0, 0);
		SetRandomName(playerid, "Logged_", 100000, 999999);

		mysql_format(Database, str, sizeof str, "UPDATE `accounts` SET `Online`='1', `LastLogin`='%02d %02d %02d %02d %02d %04d', `DateCreated`='%02d %02d %02d %02d %02d %04d' WHERE `Account`='%s'",
			hour, minute, second, day, month, year, hour, minute, second, day, month, year, AuthData[playerid][Account]);
		mysql_tquery(Database, str);
		mysql_tquery(Database, "UPDATE `serverinfo` SET `Registered`=`Registered`+1");

		for(new i = 0; i < 10; i++) TextDrawHideForPlayer(playerid, AuthTD_MiscTD[i]);
		TextDrawHideForPlayer(playerid, Auth_Button);
		TextDrawHideForPlayer(playerid, Auth_Button2);
		TextDrawHideForPlayer(playerid, Auth_Registered);
		TextDrawHideForPlayer(playerid, Auth_CharCreated);
		TextDrawHideForPlayer(playerid, Auth_PlayersOnline);
		TextDrawHideForPlayer(playerid, Auth_LoggedToday);
		PlayerTextDrawHide(playerid, Auth_PlayerName[playerid]);
		CancelSelectTextDraw(playerid);

		// Reset
	    format(AuthData[playerid][Password], 65, "");
	    format(AuthData[playerid][Password2], 65, "");
	    format(AuthData[playerid][Email], 64, "");
		AuthData[playerid][Attempt] = 0;

		// Set var
		AuthData[playerid][Logged] = 1;

		FadePlayerScreen(playerid, tempLoadCharacters, 0x000000FF, 1000, 25);
	}
}
*/

CreateCharacterForPlayer(playerid, name[], slot) {
	static str[2048];
	static ye, mo, da, ho, mi, se, crtdate[32], lastpl[32];

    AuthData[playerid][Creating] = 0;
    CancelSelectTextDraw(playerid);

    gettime(ho, mi, se); getdate(ye, mo, da);
    format(crtdate, sizeof crtdate, "%02d %02d %02d %02d %02d %04d", ho, mi, se, da, mo, ye);
    format(lastpl, sizeof lastpl, "%02d %02d %02d %02d %02d %04d", ho, mi, se, da, mo, ye);

    flog(AUTH_LOG_FILE, "[AUTH] Tai khoan \"%s\" da tao mot nhan vat tai slot %d: %s", AuthData[playerid][Account], slot, GetRoleplayName(name));
    mysql_format(Database, str, sizeof str, "INSERT INTO `characters` \
    	(`Slot`, `Account`, `DateCreated`, `LastTimePlayed`, \
    	`Name`, `Description`, `Level`, `Gender`, `Birthday`, \
    	`Nation`, `SkinID`, `Cash`, `Coins`, `LicenseData`, \
    	`PhoneData`, `MuteData`, `ImprisonData`, `Hunger`, \
    	`Thirst`, `Stamina`, `Health`, `Armour`, \
    	`FightStyle`, `WalkStyle`, `Position`) \
    	VALUES ('%d', '%s', '%s', '%s', '%s', '%s', '1 0', \
    	'%d', '%02d %02d %04d', '%d', '%d', '1000', '10', '0 0 0 0 0 0', \
    	'0 000000 0', '0 0', '0 0 0 0', '%f', '%f', '%f', \
    	'100', '0', '4', '%d', '1743 -1862 13.6 0 0 0')",
    	slot, AuthData[playerid][Account], crtdate, lastpl,
    	CreateCharData[playerid][Name], CreateCharData[playerid][Description],
    	CreateCharData[playerid][Gender], CreateCharData[playerid][BDay],
    	CreateCharData[playerid][BMonth], CreateCharData[playerid][BYear],
    	CreateCharData[playerid][Nation], CreateCharData[playerid][SkinID],
		MAX_PLAYER_HUNGER, MAX_PLAYER_THIRST, MAX_PLAYER_STAMINA,
    	E_WALKING_STYLE_DEFAULT);
    mysql_tquery(Database, str);

    format(CreateCharData[playerid][Name], MAX_PLAYER_NAME+1, "");
	format(CreateCharData[playerid][Description], 256, "");
	format(CreateCharData[playerid][Birthday], 16, "");
	CreateCharData[playerid][Gender] = 0;
	CreateCharData[playerid][BDay] = 0;
	CreateCharData[playerid][BMonth] = 0;
	CreateCharData[playerid][BYear] = 0;
	CreateCharData[playerid][Nation] = 0;
	CreateCharData[playerid][SkinID] = 2;

	mysql_tquery(Database, "UPDATE `serverinfo` SET `CharCreated`=`CharCreated`+1");

    FadePlayerScreen(playerid, LoadCharacterData, 0x000000FF, 1000, 25);
    return 1;
}

func OnCheckNewCharName(playerid, inputtext[]) {
	static str[256];
	if(cache_num_rows()) {
		format(str, sizeof str, "\\c"COL_LIGHTRED"Ten nhan vat "COL_WHITE"%s "COL_LIGHTRED"da ton tai. Vui long chon mot ten khac!\n\\c"COL_WHITE"Nhap ten cho nhan vat cua ban. "COL_GREEN"Vi du: Ho_Ten.", inputtext);
		Dialog_Show(playerid, cCreate_Name, DS_INPUT, ""COL_AQUA"TEN NHAN VAT", str, "Xong", "Quay lai");
	}
	else {
	    if(strlen(inputtext) < 6 || strlen(inputtext) > 24) return Dialog_Show(playerid, cCreate_Name, DS_INPUT, ""COL_AQUA"TEN NHAN VAT", "\\c"COL_LIGHTRED"Ten ban vua nhap phai gom tu 6 den 24 ki tu!\n\\c"COL_WHITE"Nhap ten cho nhan vat cua ban. "COL_GREEN"Vi du: Ho_Ten.", "Xong", "Quay lai");
	    if(!IsRoleplayName(inputtext)) {
	    	format(str, sizeof str, "\\c"COL_LIGHTRED"Ten nhan vat "COL_WHITE"%s "COL_LIGHTRED"khong hop le hoac Non-RP!\n\\c"COL_WHITE"Nhap ten cho nhan vat cua ban. "COL_GREEN"Vi du: Ho_Ten.", GetRoleplayName(inputtext));
	    	Dialog_Show(playerid, cCreate_Name, DS_INPUT, ""COL_AQUA"TEN NHAN VAT", str, "Xong", "Quay lai");
	    	return 1;
	    }
	    format(CreateCharData[playerid][Name], MAX_PLAYER_NAME+1, "%s", inputtext);
	    ShowCharCreateDialog(playerid);
	}
}
