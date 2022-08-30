
hook function ResetPlayerVars(playerid) {
	AuthData[playerid][SID] = -1;
	AuthData[playerid][Account][0] = EOS;
    AuthData[playerid][Password][0] = EOS;
    AuthData[playerid][Password2][0] = EOS;
    AuthData[playerid][Email][0] = EOS;
    AuthData[playerid][EnablePass2] = 0;
	AuthData[playerid][Attempt] = 0;
	AuthData[playerid][Logged] = 0;
	AuthData[playerid][Joined] = 0;
	AuthData[playerid][Selected] = 0;
	AuthData[playerid][Creating] = 0;

	for(new i = 0; i < 3; i++) {
		tmpCharacterData[playerid][i][Name][0] = EOS;
		tmpCharacterData[playerid][i][Level][0] = EOS;
		tmpCharacterData[playerid][i][Available] = 0;
	}

	PlayerTextDrawDestroy(playerid, Auth_PlayerName[playerid]);

	CreateCharData[playerid][Name][0] = EOS;
	CreateCharData[playerid][Description][0] = EOS;
	CreateCharData[playerid][Birthday][0] = EOS;
	CreateCharData[playerid][Gender] = 0;
	CreateCharData[playerid][BDay] = 0;
	CreateCharData[playerid][BMonth] = 0;
	CreateCharData[playerid][BYear] = 0;
	CreateCharData[playerid][Nation] = 0;
	CreateCharData[playerid][SkinID] = 2;

	continue(playerid);
}

hook OnGameModeInit()
{
	AuthTD_MiscTD[0] = TextDrawCreate(44.000000, -30.000000, "_");
	TextDrawFont(AuthTD_MiscTD[0], 1);
	TextDrawLetterSize(AuthTD_MiscTD[0], 0.600000, 60.000000);
	TextDrawTextSize(AuthTD_MiscTD[0], 298.500000, 320.000000);
	TextDrawSetOutline(AuthTD_MiscTD[0], 1);
	TextDrawSetShadow(AuthTD_MiscTD[0], 0);
	TextDrawAlignment(AuthTD_MiscTD[0], 2);
	TextDrawColor(AuthTD_MiscTD[0], -1);
	TextDrawBackgroundColor(AuthTD_MiscTD[0], 255);
	TextDrawBoxColor(AuthTD_MiscTD[0], 240);
	TextDrawUseBox(AuthTD_MiscTD[0], 1);
	TextDrawSetProportional(AuthTD_MiscTD[0], 1);
	TextDrawSetSelectable(AuthTD_MiscTD[0], 0);

	AuthTD_MiscTD[1] = TextDrawCreate(15.000000, 82.000000, "Chao mung");
	TextDrawFont(AuthTD_MiscTD[1], 1);
	TextDrawLetterSize(AuthTD_MiscTD[1], 0.333332, 1.600000);
	TextDrawTextSize(AuthTD_MiscTD[1], 600.000000, 17.000000);
	TextDrawSetOutline(AuthTD_MiscTD[1], 0);
	TextDrawSetShadow(AuthTD_MiscTD[1], 0);
	TextDrawAlignment(AuthTD_MiscTD[1], 1);
	TextDrawColor(AuthTD_MiscTD[1], 1296911871);
	TextDrawBackgroundColor(AuthTD_MiscTD[1], 255);
	TextDrawBoxColor(AuthTD_MiscTD[1], 50);
	TextDrawUseBox(AuthTD_MiscTD[1], 0);
	TextDrawSetProportional(AuthTD_MiscTD[1], 1);
	TextDrawSetSelectable(AuthTD_MiscTD[1], 0);

	Auth_Button = TextDrawCreate(102.000000, 310.000000, "_");
	TextDrawFont(Auth_Button, 1);
	TextDrawLetterSize(Auth_Button, 0.600000, 2.649996);
	TextDrawTextSize(Auth_Button, 31.500000, 145.000000);
	TextDrawSetOutline(Auth_Button, 1);
	TextDrawSetShadow(Auth_Button, 0);
	TextDrawAlignment(Auth_Button, 2);
	TextDrawColor(Auth_Button, -1);
	TextDrawBackgroundColor(Auth_Button, 255);
	TextDrawBoxColor(Auth_Button, 158268415);
	TextDrawUseBox(Auth_Button, 1);
	TextDrawSetProportional(Auth_Button, 1);
	TextDrawSetSelectable(Auth_Button, 1);

	Auth_Button2 = TextDrawCreate(102.000000, 315.000000, "VAO GAME ->");
	TextDrawFont(Auth_Button2, 2);
	TextDrawLetterSize(Auth_Button2, 0.275000, 1.549998);
	TextDrawTextSize(Auth_Button2, 23.500000, 145.000000);
	TextDrawSetOutline(Auth_Button2, 0);
	TextDrawSetShadow(Auth_Button2, 0);
	TextDrawAlignment(Auth_Button2, 2);
	TextDrawColor(Auth_Button2, -1);
	TextDrawBackgroundColor(Auth_Button2, 255);
	TextDrawBoxColor(Auth_Button2, 50);
	TextDrawUseBox(Auth_Button2, 0);
	TextDrawSetProportional(Auth_Button2, 1);
	TextDrawSetSelectable(Auth_Button2, 1);

	AuthTD_MiscTD[2] = TextDrawCreate(128.000000, 341.000000, "KHOI PHUC TAI KHOAN");
	TextDrawFont(AuthTD_MiscTD[2], 1);
	TextDrawLetterSize(AuthTD_MiscTD[2], 0.250000, 1.000000);
	TextDrawTextSize(AuthTD_MiscTD[2], 15.000000, 97.000000);
	TextDrawSetOutline(AuthTD_MiscTD[2], 0);
	TextDrawSetShadow(AuthTD_MiscTD[2], 0);
	TextDrawAlignment(AuthTD_MiscTD[2], 2);
	TextDrawColor(AuthTD_MiscTD[2], 1296911871);
	TextDrawBackgroundColor(AuthTD_MiscTD[2], 255);
	TextDrawBoxColor(AuthTD_MiscTD[2], -206);
	TextDrawUseBox(AuthTD_MiscTD[2], 0);
	TextDrawSetProportional(AuthTD_MiscTD[2], 1);
	TextDrawSetSelectable(AuthTD_MiscTD[2], 1);

	AuthTD_MiscTD[3] = TextDrawCreate(15.000000, 150.000000, "TAI KHOAN DA DANG KY");
	TextDrawFont(AuthTD_MiscTD[3], 2);
	TextDrawLetterSize(AuthTD_MiscTD[3], 0.170833, 1.000000);
	TextDrawTextSize(AuthTD_MiscTD[3], 645.000000, 17.000000);
	TextDrawSetOutline(AuthTD_MiscTD[3], 0);
	TextDrawSetShadow(AuthTD_MiscTD[3], 0);
	TextDrawAlignment(AuthTD_MiscTD[3], 1);
	TextDrawColor(AuthTD_MiscTD[3], 1296911871);
	TextDrawBackgroundColor(AuthTD_MiscTD[3], 255);
	TextDrawBoxColor(AuthTD_MiscTD[3], 50);
	TextDrawUseBox(AuthTD_MiscTD[3], 0);
	TextDrawSetProportional(AuthTD_MiscTD[3], 1);
	TextDrawSetSelectable(AuthTD_MiscTD[3], 0);

	AuthTD_MiscTD[4] = TextDrawCreate(15.000000, 192.000000, "Dang nhap hom nay");
	TextDrawFont(AuthTD_MiscTD[4], 2);
	TextDrawLetterSize(AuthTD_MiscTD[4], 0.170833, 1.000000);
	TextDrawTextSize(AuthTD_MiscTD[4], 645.000000, 17.000000);
	TextDrawSetOutline(AuthTD_MiscTD[4], 0);
	TextDrawSetShadow(AuthTD_MiscTD[4], 0);
	TextDrawAlignment(AuthTD_MiscTD[4], 1);
	TextDrawColor(AuthTD_MiscTD[4], 1296911871);
	TextDrawBackgroundColor(AuthTD_MiscTD[4], 255);
	TextDrawBoxColor(AuthTD_MiscTD[4], 50);
	TextDrawUseBox(AuthTD_MiscTD[4], 0);
	TextDrawSetProportional(AuthTD_MiscTD[4], 1);
	TextDrawSetSelectable(AuthTD_MiscTD[4], 0);

	AuthTD_MiscTD[5] = TextDrawCreate(108.000000, 150.000000, "Nhan vat duoc tao");
	TextDrawFont(AuthTD_MiscTD[5], 2);
	TextDrawLetterSize(AuthTD_MiscTD[5], 0.170833, 1.000000);
	TextDrawTextSize(AuthTD_MiscTD[5], 645.000000, 17.000000);
	TextDrawSetOutline(AuthTD_MiscTD[5], 0);
	TextDrawSetShadow(AuthTD_MiscTD[5], 0);
	TextDrawAlignment(AuthTD_MiscTD[5], 1);
	TextDrawColor(AuthTD_MiscTD[5], 1296911871);
	TextDrawBackgroundColor(AuthTD_MiscTD[5], 255);
	TextDrawBoxColor(AuthTD_MiscTD[5], 50);
	TextDrawUseBox(AuthTD_MiscTD[5], 0);
	TextDrawSetProportional(AuthTD_MiscTD[5], 1);
	TextDrawSetSelectable(AuthTD_MiscTD[5], 0);

	AuthTD_MiscTD[6] = TextDrawCreate(108.000000, 192.000000, "Nguoi choi truc tuyen");
	TextDrawFont(AuthTD_MiscTD[6], 2);
	TextDrawLetterSize(AuthTD_MiscTD[6], 0.170833, 1.000000);
	TextDrawTextSize(AuthTD_MiscTD[6], 645.000000, 17.000000);
	TextDrawSetOutline(AuthTD_MiscTD[6], 0);
	TextDrawSetShadow(AuthTD_MiscTD[6], 0);
	TextDrawAlignment(AuthTD_MiscTD[6], 1);
	TextDrawColor(AuthTD_MiscTD[6], 1296911871);
	TextDrawBackgroundColor(AuthTD_MiscTD[6], 255);
	TextDrawBoxColor(AuthTD_MiscTD[6], 50);
	TextDrawUseBox(AuthTD_MiscTD[6], 0);
	TextDrawSetProportional(AuthTD_MiscTD[6], 1);
	TextDrawSetSelectable(AuthTD_MiscTD[6], 0);

	Auth_Registered = TextDrawCreate(15.000000, 162.000000, "?");
	TextDrawFont(Auth_Registered, 1);
	TextDrawLetterSize(Auth_Registered, 0.245829, 1.250000);
	TextDrawTextSize(Auth_Registered, 645.000000, 17.000000);
	TextDrawSetOutline(Auth_Registered, 0);
	TextDrawSetShadow(Auth_Registered, 0);
	TextDrawAlignment(Auth_Registered, 1);
	TextDrawColor(Auth_Registered, -1);
	TextDrawBackgroundColor(Auth_Registered, 255);
	TextDrawBoxColor(Auth_Registered, 50);
	TextDrawUseBox(Auth_Registered, 0);
	TextDrawSetProportional(Auth_Registered, 1);
	TextDrawSetSelectable(Auth_Registered, 0);

	Auth_CharCreated = TextDrawCreate(108.000000, 162.000000, "?");
	TextDrawFont(Auth_CharCreated, 1);
	TextDrawLetterSize(Auth_CharCreated, 0.245829, 1.250000);
	TextDrawTextSize(Auth_CharCreated, 645.000000, 17.000000);
	TextDrawSetOutline(Auth_CharCreated, 0);
	TextDrawSetShadow(Auth_CharCreated, 0);
	TextDrawAlignment(Auth_CharCreated, 1);
	TextDrawColor(Auth_CharCreated, -1);
	TextDrawBackgroundColor(Auth_CharCreated, 255);
	TextDrawBoxColor(Auth_CharCreated, 50);
	TextDrawUseBox(Auth_CharCreated, 0);
	TextDrawSetProportional(Auth_CharCreated, 1);
	TextDrawSetSelectable(Auth_CharCreated, 0);

	Auth_PlayersOnline = TextDrawCreate(108.000000, 204.000000, "?");
	TextDrawFont(Auth_PlayersOnline, 1);
	TextDrawLetterSize(Auth_PlayersOnline, 0.245829, 1.250000);
	TextDrawTextSize(Auth_PlayersOnline, 645.000000, 17.000000);
	TextDrawSetOutline(Auth_PlayersOnline, 0);
	TextDrawSetShadow(Auth_PlayersOnline, 0);
	TextDrawAlignment(Auth_PlayersOnline, 1);
	TextDrawColor(Auth_PlayersOnline, -1);
	TextDrawBackgroundColor(Auth_PlayersOnline, 255);
	TextDrawBoxColor(Auth_PlayersOnline, 50);
	TextDrawUseBox(Auth_PlayersOnline, 0);
	TextDrawSetProportional(Auth_PlayersOnline, 1);
	TextDrawSetSelectable(Auth_PlayersOnline, 0);

	Auth_LoggedToday = TextDrawCreate(15.000000, 204.000000, "?");
	TextDrawFont(Auth_LoggedToday, 1);
	TextDrawLetterSize(Auth_LoggedToday, 0.245829, 1.250000);
	TextDrawTextSize(Auth_LoggedToday, 645.000000, 17.000000);
	TextDrawSetOutline(Auth_LoggedToday, 0);
	TextDrawSetShadow(Auth_LoggedToday, 0);
	TextDrawAlignment(Auth_LoggedToday, 1);
	TextDrawColor(Auth_LoggedToday, -1);
	TextDrawBackgroundColor(Auth_LoggedToday, 255);
	TextDrawBoxColor(Auth_LoggedToday, 50);
	TextDrawUseBox(Auth_LoggedToday, 0);
	TextDrawSetProportional(Auth_LoggedToday, 1);
	TextDrawSetSelectable(Auth_LoggedToday, 0);

	AuthTD_MiscTD[7] = TextDrawCreate(102.000000, 242.000000, "_");
	TextDrawFont(AuthTD_MiscTD[7], 1);
	TextDrawLetterSize(AuthTD_MiscTD[7], 0.850000, -0.200000);
	TextDrawTextSize(AuthTD_MiscTD[7], 400.000000, 150.000000);
	TextDrawSetOutline(AuthTD_MiscTD[7], 1);
	TextDrawSetShadow(AuthTD_MiscTD[7], 0);
	TextDrawAlignment(AuthTD_MiscTD[7], 2);
	TextDrawColor(AuthTD_MiscTD[7], -1);
	TextDrawBackgroundColor(AuthTD_MiscTD[7], 255);
	TextDrawBoxColor(AuthTD_MiscTD[7], -206);
	TextDrawUseBox(AuthTD_MiscTD[7], 1);
	TextDrawSetProportional(AuthTD_MiscTD[7], 1);
	TextDrawSetSelectable(AuthTD_MiscTD[7], 0);

	AuthTD_MiscTD[8] = TextDrawCreate(15.000000, 250.000000, "Chao mung ban da den may chu "SERVER_SNAME"~n~Hay bam vao nut duoi de vao tro choi !");
	TextDrawFont(AuthTD_MiscTD[8], 1);
	TextDrawLetterSize(AuthTD_MiscTD[8], 0.246499, 1.299998);
	TextDrawTextSize(AuthTD_MiscTD[8], 626.000000, 17.000000);
	TextDrawSetOutline(AuthTD_MiscTD[8], 0);
	TextDrawSetShadow(AuthTD_MiscTD[8], 0);
	TextDrawAlignment(AuthTD_MiscTD[8], 1);
	TextDrawColor(AuthTD_MiscTD[8], 1296911871);
	TextDrawBackgroundColor(AuthTD_MiscTD[8], 255);
	TextDrawBoxColor(AuthTD_MiscTD[8], -206);
	TextDrawUseBox(AuthTD_MiscTD[8], 0);
	TextDrawSetProportional(AuthTD_MiscTD[8], 1);
	TextDrawSetSelectable(AuthTD_MiscTD[8], 0);

	AuthTD_MiscTD[9] = TextDrawCreate(58.000000, 428.000000, SERVER_SNAME);
	TextDrawFont(AuthTD_MiscTD[9], 2);
	TextDrawLetterSize(AuthTD_MiscTD[9], 0.254166, 1.549998);
	TextDrawTextSize(AuthTD_MiscTD[9], 400.000000, 17.000000);
	TextDrawSetOutline(AuthTD_MiscTD[9], 0);
	TextDrawSetShadow(AuthTD_MiscTD[9], 0);
	TextDrawAlignment(AuthTD_MiscTD[9], 3);
	TextDrawColor(AuthTD_MiscTD[9], -1094795521);
	TextDrawBackgroundColor(AuthTD_MiscTD[9], 255);
	TextDrawBoxColor(AuthTD_MiscTD[9], 50);
	TextDrawUseBox(AuthTD_MiscTD[9], 0);
	TextDrawSetProportional(AuthTD_MiscTD[9], 1);
	TextDrawSetSelectable(AuthTD_MiscTD[9], 0);

	GetServerInfo();

	return 1;
}

hook OnGameModeExit() {
	for(new i = 0; i < 10; i++) TextDrawDestroy(AuthTD_MiscTD[i]);
	TextDrawDestroy(Auth_Button);
	TextDrawDestroy(Auth_Button2);
	TextDrawDestroy(Auth_Registered);
	TextDrawDestroy(Auth_CharCreated);
	TextDrawDestroy(Auth_PlayersOnline);
	TextDrawDestroy(Auth_LoggedToday);

	return 1;
}

hook OnPlayerConnect(playerid) {

	static str[256];

	SetPlayerArmedWeapon(playerid, 0);
	ResetPlayerVars(playerid);
	GetPlayerName(playerid, AuthData[playerid][Account], MAX_PLAYER_NAME+1);
	SetRandomName(playerid, "Unknown_", 100000, 999999);

	// Check if player is a newbie or old member
	inline const Checked() {
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
				mysql_update(Database, "UPDATE `accounts` SET `BanData`='0 0 0 0 none 0 0 0' WHERE `Account`='%s'", AuthData[playerid][Account]);
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
	MySQL_TQueryInline(Database, using inline Checked, "SELECT * FROM `accounts` WHERE `Account`='%s'", AuthData[playerid][Account]);

	// Preload animation
	for(new i = 0; i < sizeof(g_aPreloadLibs); i++) ApplyAnimation(playerid, g_aPreloadLibs[i], "null", 4.0, 0, 0, 0, 0, 0, 1);

	return 1;
}

hook OnPlayerClickTextDraw(playerid, Text:clickedid) {
	if(clickedid == Text:INVALID_TEXT_DRAW && !AuthData[playerid][Logged]) return SelectTextDraw(playerid, COLOR_WHITE);
	if(clickedid == Text:INVALID_TEXT_DRAW && !AuthData[playerid][Joined]) return SelectTextDraw(playerid, COLOR_WHITE);
	if(clickedid == Auth_Button) return CheckPlayerNameToLogin(playerid);
	if(clickedid == Auth_Button2) return CheckPlayerNameToLogin(playerid);
	return 1;
}

hook OnPlayerModelSelection(playerid, response, listid, modelid) {
	if(listid == MaleSkinList) {
		if(!IsPlayerInGame(playerid)) {
			if(response) {
				CreateCharData[playerid][SkinID] = modelid;
				SetPlayerSkin(playerid, modelid);
				ShowCharCreateDialog(playerid);
			}
			else dialog_Char_Create(playerid, true, 4, "");
		}
	}
	if(listid == FemaleSkinList) {
		if(!IsPlayerInGame(playerid)) {
			if(response) {
				CreateCharData[playerid][SkinID] = modelid;
				SetPlayerSkin(playerid, modelid);
				ShowCharCreateDialog(playerid);
			}
			else dialog_Char_Create(playerid, true, 4, "");
		}
	}
	return 1;
}

Fade:tempLoadCharacters(playerid) {
	SetPlayerTeam(playerid, NO_TEAM);
	SetPlayerColor(playerid, COLOR_WHITE);
	SetPlayerPos(playerid, 1400, -920, 20);
	SetPlayerVirtualWorld(playerid, 100+playerid);
	SetPlayerInterior(playerid, 0);
	SetPlayerHealth(playerid, FLOAT_INFINITY);
	SetPlayerCameraPos(playerid, 1400, -920, 110);
	SetPlayerCameraLookAt(playerid, 1480, 0, 200);
	TogglePlayerControllable(playerid, false);
	ShowCharSelDialog(playerid);
	FadePlayerScreen(playerid, FadeBack, 0x00000000, 1000, 25);
	return 1;
}

Fade:PlayerCreateCharacter(playerid) {
	AuthData[playerid][Creating] = 1;
	ShowCharCreateDialog(playerid);
	SpawnPlayer(playerid);
	SetPlayerTeam(playerid, NO_TEAM);
	SetPlayerColor(playerid, COLOR_WHITE);
	SetPlayerSkin(playerid, 2);
	SetPlayerInterior(playerid, 15);
	SetPlayerPos(playerid, 217.6, -101, 1005);
	SetPlayerFacingAngle(playerid, 45);
	SetPlayerVirtualWorld(playerid, 100+playerid);
	SetPlayerCameraPos(playerid, 215, -98, 1006);
	SetPlayerCameraLookAt(playerid, 1000, -625, 1000);
	TogglePlayerControllable(playerid, false);
	FadePlayerScreen(playerid, FadeBack, 0x00000000, 1000, 25);
	return 1;
}

Dialog:Login_Pass(playerid, response, listitem, inputtext[]) {
	if(response) {
		static str[256];
		inline const OnChecked(bool:correct) {
			if(correct) {
				if(AuthData[playerid][EnablePass2])	return Dialog_Show(playerid, Login_Pass2, DS_PASS, "He thong bao mat cap 2", ""COL_WHITE"Hay nhap mat khau bao mat cap 2 cua ban de tiep tuc:", "Xong", "Thoat");
				return LoginSuccess(playerid);
			}
			else {
				AuthData[playerid][Attempt]++;
				if(AuthData[playerid][Attempt] >= 3) {
					format(str, sizeof str, "Ban da bi kick vi nhap sai mat khau %d lan.", AuthData[playerid][Attempt]);
					ErrorMsg(playerid, str);
					return KickPlayer(playerid, 500);
				}
				format(str, sizeof str, "Ban da nhap sai mat khau %d lan, vui long thu lai.", AuthData[playerid][Attempt]);
				ErrorMsg(playerid, str);
				return ShowLoginDialog(playerid);
			}
		}
		BCrypt_CheckInline(inputtext, AuthData[playerid][Password], using inline OnChecked);
		ClientMsg(playerid, COLOR_YELLOW, "Dang lay du lieu nguoi dung...");
		for(new i = 0; i < 10; i++) TextDrawHideForPlayer(playerid, AuthTD_MiscTD[i]);
		TextDrawHideForPlayer(playerid, Auth_Button);
		TextDrawHideForPlayer(playerid, Auth_Button2);
		TextDrawHideForPlayer(playerid, Auth_Registered);
		TextDrawHideForPlayer(playerid, Auth_CharCreated);
		TextDrawHideForPlayer(playerid, Auth_PlayersOnline);
		TextDrawHideForPlayer(playerid, Auth_LoggedToday);
		PlayerTextDrawHide(playerid, Auth_PlayerName[playerid]);
	}
}

Dialog:Login_Pass2(playerid, response, listitem, inputtext[]) {
	if(!response) return KickPlayer(playerid, 500);
	else {
		inline const OnChecked(bool:correct) {
			if(correct) return LoginSuccess(playerid);
			else {
				Dialog_Show(playerid, Login_Pass2, DS_PASS, "He thong bao mat cap 2", ""COL_WHITE"Hay nhap mat khau bao mat cap 2 cua ban de tiep tuc:", "Xong", "Thoat");
				return ErrorMsg(playerid, "Mat khau bao mat cap 2 ban vua nhap khong dung.");
			}
		}
		BCrypt_CheckInline(inputtext, AuthData[playerid][Password2], using inline OnChecked);
	}
}
/*
Dialog:Register_Pass(playerid, response, listitem, inputtext[]) {
	if(response) {
		if(strlen(inputtext) < 6 || strlen(inputtext) > 32 || isnull(inputtext)) {
			ShowRegisterDialog(playerid);
			return ErrorMsg(playerid, "Mat khau duoc nhap phai bao gom tu 6 - 32 ki tu.");
		}
		else {
			format(AuthData[playerid][Password], 65, "%s", inputtext);
			return ShowEmailDialog(playerid);
		}
	}
}

Dialog:Register_Email(playerid, response, listitem, inputtext[]) {
	if(response) {
		if(!IsValidEmail(inputtext)) {
			Dialog_Show(playerid, Reg_Email, DS_INPUT, "HE THONG DANG KY", "\\cNhap email ban muon dang ky vao o duoi day:", "Xong", "Quay lai");
			return ErrorMsg(playerid, "Email ban vua nhap la khong phai la mot email hop le.");
		}
		format(AuthData[playerid][Email], 64, "%s", inputtext);
		CheckToRegister(playerid);
	}
	else ShowRegisterDialog(playerid);
}
*/

Dialog:Char_Selection(playerid, response, listitem, inputtext[]) {
	if(!response) return KickPlayer(playerid, 500);
	else {
		static str[64];
		AuthData[playerid][Selected] = listitem+1;
		if(tmpCharacterData[playerid][listitem][Available]) {
			format(str, sizeof str, "Nhan vat %d: %s", AuthData[playerid][Selected], GetRoleplayName(tmpCharacterData[playerid][listitem][Name]));
			Dialog_Show(playerid, Char_Interact, DS_LIST, str, ""COL_GREEN"Tham gia tro choi\n"COL_RED"Xoa nhan vat", "Chon", "Quay lai");
		}
		else {
			format(str, sizeof str, "Nhan vat %d: Tao nhan vat", AuthData[playerid][Selected]);
			Dialog_Show(playerid, Char_CreateC, DS_MSGBOX, str, ""COL_WHITE"\\cBan co thuc su muon tao nhan vat tai slot nay khong?", "Co", "Khong");
		}
	}
}

Dialog:Char_Interact(playerid, response, listitem, inputtext[]) {
	if(!response) return ShowCharSelDialog(playerid);
	else {
		static str[128];
		switch(listitem) {
			case 0: {
				flog(AUTH_LOG_FILE, "[AUTH] Tai khoan \"%s\" da tham gia tro choi voi nhan vat %d: %s", AuthData[playerid][Account], AuthData[playerid][Selected], GetRoleplayName(tmpCharacterData[playerid][AuthData[playerid][Selected]-1][Name]));
				FadePlayerScreen(playerid, LoadCharacterData, 0x000000FF, 1000, 25);
			}
			case 1: {
				flog(AUTH_LOG_FILE, "[AUTH] Tai khoan \"%s\" da xoa nhan vat tai slot %d: %s", AuthData[playerid][Account], AuthData[playerid][Selected], GetRoleplayName(tmpCharacterData[playerid][AuthData[playerid][Selected]-1][Name]));
				mysql_update(Database, "DELETE FROM `characters` WHERE `Name`='%s'", tmpCharacterData[playerid][AuthData[playerid][Selected]-1][Name]);
				ShowCharSelDialog(playerid);
			}
		}
	}
}

Dialog:Char_CreateC(playerid, response, listitem, inputtext[]) {
	if(response) FadePlayerScreen(playerid, PlayerCreateCharacter, 0x000000FF, 1000, 25);
	else ShowCharSelDialog(playerid);
}

Dialog:Char_Create(playerid, response, listitem, inputtext[])  {
	if(!response) KickPlayer(playerid, 500);
	else {
		switch(listitem) {
			case 0: Dialog_Show(playerid, cCreate_Name, DS_INPUT, "Ten nhan vat", "\\c"COL_WHITE"Nhap ten cho nhan vat cua ban. "COL_GREEN"Vi du: Ho_Ten.", "Xong", "Quay lai");
			case 1: Dialog_Show(playerid, cCreate_Gender, DS_LIST, "Chon gioi tinh", "Nam\nNu", "Chon", "Quay lai");
			case 2: ShowBMonthDialog(playerid);
			case 3: Dialog_Show(playerid, cCreate_Nation, DS_LIST, "Chon quoc gia", "Los Santos\nSan Fierro\nLas Venturas\nCountryside (Nong thon)", "Chon", "Quay lai");
			case 4: //Dialog_Show(playerid, cCreate_Skin, DS_LIST, "CHON TRANG PHUC", "Trang phuc nam\nTrang phuc nu", "Chon", "Quay lai");
			{
				switch(CreateCharData[playerid][Gender]) {
					case 0: return ErrorMsg(playerid, "Ban chua chon gioi tinh cho nhan vat cua ban."), ShowCharCreateDialog(playerid);
					case 1: ShowModelSelectionMenu(playerid, MaleSkinList, "Trang phuc nam");
					case 2: ShowModelSelectionMenu(playerid, FemaleSkinList, "Trang phuc nu");
				}
			}
			case 5:	Dialog_Show(playerid, cCreate_Desc, DS_INPUT, "Mo ta", "\\c"COL_WHITE"Nhap mo ta ve nhan vat cua ban (co the bo qua):", "Xong", "Quay lai");
			case 6: {
				static str[64];
				format(str, sizeof str, "Nhan vat %d: Tao nhan vat", AuthData[playerid][Selected]);
				Dialog_Show(playerid, cCreate_Confirm, DS_MSGBOX, str, ""COL_WHITE"\\cBan da chac chan rang cac thong tin cua nhan vat la chinh xac khong?\n\\c"COL_WHITE"Bam "COL_GREEN"'Co' "COL_WHITE"de tao nhan vat, bam "COL_LIGHTRED"'Khong' "COL_WHITE"de quay lai va chinh sua thong tin.", "Co", "Khong");
			}
		}
	}
}

Dialog:cCreate_Name(playerid, response, listitem, inputtext[]) {
	if(!response) ShowCharCreateDialog(playerid);
	else {
		inline const Checked() {
			static str[256];
			if(cache_num_rows()) {
				format(str, sizeof str, "\\c"COL_LIGHTRED"Ten nhan vat "COL_WHITE"%s "COL_LIGHTRED"da ton tai. Vui long chon mot ten khac!\n\\c"COL_WHITE"Nhap ten cho nhan vat cua ban. "COL_GREEN"Vi du: Ho_Ten.", inputtext);
				Dialog_Show(playerid, cCreate_Name, DS_INPUT, "Ten nhan vat", str, "Xong", "Quay lai");
			}
			else {
			    if(strlen(inputtext) < 6 || strlen(inputtext) > 24) return Dialog_Show(playerid, cCreate_Name, DS_INPUT, "Ten nhan vat", "\\c"COL_LIGHTRED"Ten ban vua nhap phai gom tu 6 den 24 ki tu!\n\\c"COL_WHITE"Nhap ten cho nhan vat cua ban. "COL_GREEN"Vi du: Ho_Ten.", "Xong", "Quay lai");
			    if(!IsRoleplayName(inputtext)) {
			    	format(str, sizeof str, "\\c"COL_LIGHTRED"Ten nhan vat "COL_WHITE"%s "COL_LIGHTRED"khong hop le hoac Non-RP!\n\\c"COL_WHITE"Nhap ten cho nhan vat cua ban. "COL_GREEN"Vi du: Ho_Ten.", GetRoleplayName(inputtext));
			    	Dialog_Show(playerid, cCreate_Name, DS_INPUT, "Ten nhan vat", str, "Xong", "Quay lai");
			    	return 1;
			    }
			    format(CreateCharData[playerid][Name], MAX_PLAYER_NAME+1, "%s", inputtext);
			    ShowCharCreateDialog(playerid);
			}
		}
		MySQL_TQueryInline(Database, using inline Checked, "SELECT * FROM `characters` WHERE `Name`='%s'", inputtext);
	}
}

Dialog:cCreate_Desc(playerid, response, listitem, inputtext[]) {
	if(!response) ShowCharCreateDialog(playerid);
	else {
		format(CreateCharData[playerid][Description], 256, "%s", inputtext);
		ShowCharCreateDialog(playerid);
	}
}

Dialog:cCreate_Gender(playerid, response, listitem, inputtext[]) {
	if(!response) ShowCharCreateDialog(playerid);
	else {
		CreateCharData[playerid][Gender] = listitem+1;
		ShowCharCreateDialog(playerid);
	}
}

Dialog:cCreate_BMonth(playerid, response, listitem, inputtext[]) {
    if(!response) ShowCharCreateDialog(playerid);
    else {
        CreateCharData[playerid][BMonth] = listitem+1;
        ShowBDayDialog(playerid);
    }
}

Dialog:cCreate_BDay(playerid, response, listitem, inputtext[]) {
	if(!response) ShowBMonthDialog(playerid);
    else {
        CreateCharData[playerid][BDay] = listitem+1;
        ShowBYearDialog(playerid);
    }

}

Dialog:cCreate_BYear(playerid, response, listitem, inputtext[]) {
    if(!response) ShowBDayDialog(playerid);
    else {
        new currentyear, a, b;
        getdate(currentyear, a, b);
        #pragma unused a, b
        CreateCharData[playerid][BYear] = currentyear-(80-listitem);
        format(CreateCharData[playerid][Birthday], 16, "%02d-%02d-%04d", CreateCharData[playerid][BDay], CreateCharData[playerid][BMonth], CreateCharData[playerid][BYear]);
        ShowCharCreateDialog(playerid);
    }
}

Dialog:cCreate_Nation(playerid, response, listitem, inputtext[]) {
	if(!response) ShowCharCreateDialog(playerid);
	else {
		CreateCharData[playerid][Nation] = listitem+1;
		ShowCharCreateDialog(playerid);
	}
}

/*
Dialog:cCreate_Skin(playerid, response, listitem, inputtext[]) {
	if(!response) ShowCharCreateDialog(playerid);
	else {
		switch(listitem) {
			case 0: ShowModelSelectionMenu(playerid, MaleSkinList, "Trang phuc nam");
			case 1: ShowModelSelectionMenu(playerid, FemaleSkinList, "Trang phuc nu");
		}
	}
}
*/

Dialog:cCreate_Confirm(playerid, response, listitem, inputtext[]) {
	if(!response) ShowCharCreateDialog(playerid);
	else {
		if(isnull(CreateCharData[playerid][Name]) || !CreateCharData[playerid][Gender] || !CreateCharData[playerid][Nation] || isnull(CreateCharData[playerid][Birthday])) {
			ErrorMsg(playerid, "Ban chua hoan thanh tat ca thong tin co ban ve nhan vat.");
			ShowCharCreateDialog(playerid);
			return 1;
		}
		else CreateCharacterForPlayer(playerid, CreateCharData[playerid][Name], AuthData[playerid][Selected]);
	}
}
