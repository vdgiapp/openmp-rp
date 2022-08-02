
#include <YSI_Coding/y_hooks>

enum authinfo {
	Account[25],
	Password[65],
	Password2[65],
	EnablePass2,
	Email,
	Attempt,
	Logged,
	Selected,
	Creating,
	Joined
}
new AuthData[MAX_PLAYERS][authinfo];

enum createCharInf {
	Name[MAX_PLAYER_NAME+1],
	Description[256],
	Gender,
	Nation,
	BDay,
	BMonth,
	BYear,
	Birthday[16],
	SkinID
}
static CreateCharData[MAX_PLAYERS][createCharInf];

enum tmpCharacterInfo {
	Available,
	Name[MAX_PLAYER_NAME+1],
	Level[16]
}
static tmpCharacterData[MAX_PLAYERS][3][tmpCharacterInfo];

static 	Text:AuthTD_MiscTD[10],
		Text:Auth_Button,
		Text:Auth_Button2,
		Text:Auth_Registered,
		Text:Auth_CharCreated,
		Text:Auth_PlayersOnline,
		Text:Auth_LoggedToday,
		PlayerText:Auth_PlayerName[MAX_PLAYERS];

timer GetSvInfo[1000]() {
	static day, month, year, str[64];
	getdate(year, month, day);
	#pragma unused year, month

	await mysql_aquery(Database, "SELECT * FROM `serverinfo`");

	format(str, sizeof str, "%d", cache_value_int(0, "Registered"));
	TextDrawSetString(Auth_Registered, str);
	format(str, sizeof str, "%d", cache_value_int(0, "CharCreated"));
	TextDrawSetString(Auth_CharCreated, str);

	if(cache_value_int(0, "Day") != day) {
		format(str, sizeof str, "UPDATE `serverinfo` SET `Day`='%d', `Logged`='0'", day);
		mysql_tquery(Database, str);
	}
	format(str, sizeof str, "%d", cache_value_int(0, "Logged")); TextDrawSetString(Auth_LoggedToday, str);
	format(str, sizeof str, "%d", GetPlayersOnline()); TextDrawSetString(Auth_PlayersOnline, str);
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

	repeat GetSvInfo[1000]();

	return 1;
}

hook OnGameModeExit()
{
	forloop(i, 0, 10) TextDrawDestroy(AuthTD_MiscTD[i]);
	TextDrawDestroy(Auth_Button);
	TextDrawDestroy(Auth_Button2);
	TextDrawDestroy(Auth_Registered);
	TextDrawDestroy(Auth_CharCreated);
	TextDrawDestroy(Auth_PlayersOnline);
	TextDrawDestroy(Auth_LoggedToday);

	return 1;
}

hook OnPlayerConnect(playerid) {

	ResetPlayerVars(playerid);
	GetPlayerName(playerid, AuthData[playerid][Account], MAX_PLAYER_NAME+1);
	SetRandomName(playerid, "Unknown_", 100000, 999999);

	// Check if player is a newbie or old member
	static str[256];
	format(str, sizeof str, "SELECT * FROM `accounts` WHERE `Account`='%s'", AuthData[playerid][Account]);
	await mysql_aquery(Database, str);

	if(cache_num_rows()) {
		static isbanned, banday, banmonth, banyear, banby[32], banreason[128],
			unbanday, unbanmonth, unbanyear, online;
		static day, month, year, hour, minute, second;
		online = cache_value_int(0, "Online");
		getdate(year, month, day); gettime(hour, minute, second);
		sscanf(cache_value_string(0, "BanData"), "iiiis[32]iii", isbanned, banday, banmonth, banyear, banby, unbanday, unbanmonth, unbanyear);
		format(banreason, sizeof banreason, "%s", cache_value_string(0, "BanReason"));
		format(AuthData[playerid][Password], 65, "%s", cache_value_string(0, "Password"));
		format(AuthData[playerid][Password2], 65, "%s", cache_value_string(0, "Password2"));
		AuthData[playerid][EnablePass2] = cache_value_int(0, "EnablePass2");
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

	forloop(i, 0, 100) ClientMsg(playerid, -1, " ");
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

	forloop(i, 0, 10) TextDrawShowForPlayer(playerid, AuthTD_MiscTD[i]);
	TextDrawShowForPlayer(playerid, Auth_Button);
	TextDrawShowForPlayer(playerid, Auth_Button2);
	TextDrawShowForPlayer(playerid, Auth_Registered);
	TextDrawShowForPlayer(playerid, Auth_CharCreated);
	TextDrawShowForPlayer(playerid, Auth_PlayersOnline);
	TextDrawShowForPlayer(playerid, Auth_LoggedToday);
	PlayerTextDrawShow(playerid, Auth_PlayerName[playerid]);
	SelectTextDraw(playerid, COLOR_WHITE);

	return 1;
}

Auth_OnPlayerDisconnect(playerid, reason) {
	if(AuthData[playerid][Logged]) {
		static str[256];
		format(str, sizeof str, "UPDATE `accounts` SET `Online`='0' WHERE `Account`='%s'", AuthData[playerid][Account]);
		mysql_tquery(Database, str);
		switch(reason) {
			case 0: flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (mat ket noi).", AuthData[playerid][Account]);
			case 1: flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (thoat game).", AuthData[playerid][Account]);
			case 2: flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (kick/ban).", AuthData[playerid][Account]);
		}
		//Save if(IsPlayerInGame(playerid)) SaveCharacterInfoData(playerid, log_Account[playerid], char_Selected[playerid]);
	}
	ResetPlayerVars(playerid);
	Kick(playerid);
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
				ApplyAnimation(playerid, "BAR", "Barcustom_loop", 4.1, 1, 1, 1, 1, 0, 1);
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
				ApplyAnimation(playerid, "BAR", "Barcustom_loop", 4.1, 1, 1, 1, 1, 0, 1);
				ShowCharCreateDialog(playerid);
			}
			else dialog_Char_Create(playerid, true, 4, "");
		}
	}
	return 1;
}

hook function ResetPlayerVars(playerid) {
	format(AuthData[playerid][Account], MAX_PLAYER_NAME+1, "");
    format(AuthData[playerid][Password], 65, "");
    format(AuthData[playerid][Password2], 65, "");
    format(AuthData[playerid][Email], 64, "");
    AuthData[playerid][EnablePass2] = 0;
	AuthData[playerid][Attempt] = 0;
	AuthData[playerid][Logged] = 0;
	AuthData[playerid][Joined] = 0;
	AuthData[playerid][Selected] = 0;
	AuthData[playerid][Creating] = 0;

	forloop(i,0,3) {
		format(tmpCharacterData[playerid][i][Name], 25, "");
		format(tmpCharacterData[playerid][i][Level], 16, "");
		tmpCharacterData[playerid][i][Available] = 0;
	}

	PlayerTextDrawDestroy(playerid, Auth_PlayerName[playerid]);

	format(CreateCharData[playerid][Name], MAX_PLAYER_NAME+1, "");
	format(CreateCharData[playerid][Description], 256, "");
	format(CreateCharData[playerid][Birthday], 16, "");
	CreateCharData[playerid][Gender] = 0;
	CreateCharData[playerid][BDay] = 0;
	CreateCharData[playerid][BMonth] = 0;
	CreateCharData[playerid][BYear] = 0;
	CreateCharData[playerid][Nation] = 0;
	CreateCharData[playerid][SkinID] = 2;

	continue(playerid);
}

IsPlayerInGame(playerid) {
	if(IsPlayerConnected(playerid) && AuthData[playerid][Logged] && 
		AuthData[playerid][Joined]) return true;
	return false;
}

GetRoleplayName(const name[]) {
	static str[MAX_PLAYER_NAME+1];
    format(str, sizeof str, "%s", name);
    strreplace(str, "_", " ");
    return str;
}

IsRoleplayName(const name[], max_unders = 2) {
    static unders = 0;
    if(name[0] < 'A' || name[0] > 'Z') return 0;
    forloop(i, 1, strlen(name)) {
        if(name[i] != '_' && (name[i] < 'A' || name[i] > 'Z') && (name[i] < 'a' || name[i] > 'z')) return 0;
        if((name[i] >= 'A' && name[i] <= 'Z') && (name[i - 1] != '_')) return 0;
        if(name[i] == '_') {
            unders++;
            if(unders > max_unders || i == strlen(name)) return 0;
            if(name[i + 1] < 'A' || name[i + 1] > 'Z') return 0;
        }
    }
    if(unders == 0) return 0;
    return 1;
}

IsValidAccount(const str[]) {
	if(str[0] == '_' || str[0] == '.') return 0;
    forloop(i, 1, strlen(str)) {
    	if(!((str[i] >= 'a' && str[i] <= 'z') || (str[i] >= 'A' && str[i] <= 'Z') || (str[i] >= '0' && str[i] <= '9') || str[i] == '_' || str[i] == '.')) return 0;
    }
    return 1;
}

IsValidEmail(const email[]) {
	if(strfind(email, "@gmail.com") != -1 || 
		strfind(email, "@outlook.com") != -1 || 
		strfind(email, "@hotmail.com") != -1 || 
		strfind(email, "@protonmail.com") != -1 || 
		strfind(email, "@protonmail.ch") != -1 || 
		strfind(email, "@yahoo.com") != -1 || 
		strfind(email, "@zohomail.com") != -1 || 
		strfind(email, "@zoho.com") != -1 || 
		strfind(email, "@yandex.com") != -1 || 
		strfind(email, "@icloud.com") != -1 || 
		strfind(email, "@gmx.com") != -1 ||
		strfind(email, "@gmx.us") != -1 || 
		strfind(email, "@aol.com") != -1 || 
		strfind(email, "@aim.com") != -1) return 1;
	return 0;
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
	format(str, sizeof str, "SELECT * FROM `accounts` WHERE `Account`='%s'", AuthData[playerid][Account]);
	await mysql_aquery(Database, str);
	if(cache_num_rows()) return ShowLoginDialog(playerid);
	else return ShowRegisterDialog(playerid);
}

ShowLoginDialog(playerid) {
	static str[256];
	format(str, sizeof str, "\\c"COL_WHITE"Chao mung ban da quay tro lai may chu, "COL_GREEN"%s\n\\c"COL_WHITE"Hay nhap mat khau cua ban de dang nhap vao tro choi!", AuthData[playerid][Account]);
	Dialog_Show(playerid, Login_Pass, DS_PASS, ""COL_AQUA""SERVER_NAME"", str, "Xong", "Dong");
}

ShowRegisterDialog(playerid) {
	static str[256];
	format(str, sizeof str, "\\c"COL_WHITE"Chao mung ban da den may chu, "COL_GREEN"%s\n\\c"COL_WHITE"Hay nhap mat khau cua ban de dang ky tai khoan moi!", AuthData[playerid][Account]);
	Dialog_Show(playerid, Register_Pass, DS_PASS, ""COL_AQUA""SERVER_NAME"", str, "Xong", "Dong");
}

ShowEmailDialog(playerid) {
	Dialog_Show(playerid, Register_Email, DS_INPUT, ""COL_AQUA""SERVER_NAME"", "\\c"COL_WHITE"Hay nhap email cua ban de hoan thanh qua trinh dang ky tai khoan!", "Xong", "Quay lai");
}

ShowCharCreateDialog(playerid) {
	static gender[16];
	switch(CreateCharData[playerid][Gender])  {
		case 1: format(gender, sizeof gender, "Nam");
		case 2: format(gender, sizeof gender, "Nu");
		case 3: format(gender, sizeof gender, "Khac");
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
        CreateCharData[playerid][Name], gender,
        CreateCharData[playerid][Birthday], 
        nation, CreateCharData[playerid][SkinID]);
	return Dialog_Show(playerid, Char_Create, DS_TABLIST, ""COL_AQUA"TAO NHAN VAT", str, "Chon", "Thoat");
}

ShowBDayDialog(playerid) {
	static string[512]; format(string, sizeof string, "Ngay 01");
	switch(CreateCharData[playerid][BMonth]) {
		case 2:	forloop(i,2,30)	{ format(string, sizeof string, "%s\nNgay %02d", string, i); }
		case 1,3,5,7,8,10,12: forloop(i,2,32) { format(string, sizeof string, "%s\nNgay %02d", string, i); }
		case 4,6,9,11: forloop(i,2,31) { format(string, sizeof string, "%s\nNgay %02d", string, i); }
	}
	Dialog_Show(playerid, cCreate_BDay, DS_LIST, ""COL_AQUA"CHON NGAY SINH", string, "Chon", "Quay lai");
}

ShowBMonthDialog(playerid) {
	static string[512]; format(string, sizeof string, "Thang 01");
	forloop(i,2,13) { format(string, sizeof string, "%s\nThang %02d", string, i); }
	Dialog_Show(playerid, cCreate_BMonth, DS_LIST, ""COL_AQUA"CHON THANG SINH", string, "Chon", "Quay lai");
}

ShowBYearDialog(playerid) {
	static currentyear, a, b;
	getdate(currentyear, a, b);
	#pragma unused a, b
	static string[1024]; format(string, sizeof string, "Nam %d", currentyear-80);
    forloop(i,currentyear-79,currentyear-17+1) { format(string, sizeof string, "%s\nNam %d", string, i); }
	Dialog_Show(playerid, cCreate_BYear, DS_LIST, ""COL_AQUA"CHON NAM SINH", string, "Chon", "Quay lai");
}

ShowCharSelDialog(playerid) {
	static tmpchardata[512];
	format(tmpchardata, 512, "Slot\tTen nhan vat\tCap do");
	forloop(i, 0, 3) {
		static str[512];
		static slot; slot = i+1;
		format(str, sizeof str, "SELECT * FROM `characters` WHERE `Account`='%s' AND `Slot`='%d'", AuthData[playerid][Account], slot);
		await mysql_aquery(Database, str);
		if(cache_num_rows()) {
			sscanf(cache_value_string(0, "Level"), "ii", tmpCharacterData[playerid][i][Level], tmpCharacterData[playerid][i][Available]);
			tmpCharacterData[playerid][i][Available] = 1;
			format(tmpCharacterData[playerid][i][Name], 25, "%s", cache_value_string(0, "Name"));
			format(str, sizeof str, "\n%d\t%s\t \tLevel %d", slot, GetRoleplayName(tmpCharacterData[playerid][i][Name]), tmpCharacterData[playerid][i][Level]);
			strcat(tmpchardata, str);
			if(i >= 2) return Dialog_Show(playerid, Char_Selection, DS_HEADERS, ""COL_AQUA"CHON NHAN VAT", tmpchardata, "Chon", "Thoat");
		}
		else {
			tmpCharacterData[playerid][i][Available] = 0;
			format(tmpCharacterData[playerid][i][Name], 25, "");
			format(str, sizeof str, "\n"COL_GREY"%d\t"COL_GREY"Tao nhan vat", slot);
			strcat(tmpchardata, str);
			if(i >= 2) return Dialog_Show(playerid, Char_Selection, DS_HEADERS, ""COL_AQUA"CHON NHAN VAT", tmpchardata, "Chon", "Thoat");
		}
	}
}

LoginSuccess(playerid) {
	static day, month, year, hour, minute, second;
	getdate(year, month, day);
	gettime(hour, minute, second);

	static str[256];
	format(str, sizeof str, "UPDATE `accounts` SET `Online`='1', `LastTimeLogged`='%02d %02d %02d %02d %02d %04d' WHERE `Account`='%s'", hour, minute, second, day, month, year, AuthData[playerid][Account]);
	mysql_tquery(Database, str);
	mysql_tquery(Database, "UPDATE `serverinfo` SET `Logged`=`Logged`+1");

	SuccessMsg(playerid, "Dang nhap vao tai khoan thanh cong. Chuc ban choi game vui ve.");
	flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang nhap vao tro choi.", AuthData[playerid][Account]);
	PlayerPlaySound(playerid, 1084, 0, 0, 0);
	SetRandomName(playerid, "Logged_", 100000, 999999);

	forloop(i, 0, 10) TextDrawHideForPlayer(playerid, AuthTD_MiscTD[i]);
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

	FadePlayerScreen(playerid, tempLoadCharacters, 0x000000FF, 200, 50);
}

CheckToRegister(playerid) {
	static str[1024];
	format(str, sizeof str, "SELECT * FROM `accounts` WHERE `Email`='%s'", AuthData[playerid][Email]);
	await mysql_aquery(Database, str);
	if(cache_num_rows()) {
		ShowEmailDialog(playerid);
		return ErrorMsg(playerid, "Email nay da duoc dung de dang ky. Vui long su dung email khac!");
	}
	format(str, sizeof str, "SELECT * FROM `accounts` WHERE `Account`='%s'", AuthData[playerid][Account]);
	await mysql_aquery(Database, str);
	if(!cache_num_rows()) {
		static day, month, year, hour, minute, second;
		getdate(year, month, day);
		gettime(hour, minute, second);
		SHA256_PassHash(AuthData[playerid][Password], "", str, sizeof str);
		format(str, sizeof str, "INSERT INTO `accounts` (`Account`, `Password`, `EnablePass2`, `Email`) VALUES ('%s', '%s', '0', '%s')", AuthData[playerid][Account], str, AuthData[playerid][Email]);
		mysql_tquery(Database, str);
		SuccessMsg(playerid, "Tai khoan cua ban da duoc dang ky thanh cong.");
		flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da duoc dang ky thanh cong.", AuthData[playerid][Account]);
		PlayerPlaySound(playerid, 1084, 0, 0, 0);
		SetRandomName(playerid, "Logged_", 100000, 999999);
		
		format(str, sizeof str, "UPDATE `accounts` SET `Online`='1', `LastLogin`='%02d %02d %02d %02d %02d %04d', `DateCreated`='%02d %02d %02d %02d %02d %04d' WHERE `Account`='%s'", 
			hour, minute, second, day, month, year, hour, minute, second, day, month, year, AuthData[playerid][Account]);
		mysql_tquery(Database, str);
		mysql_tquery(Database, "UPDATE `serverinfo` SET `Registered`=`Registered`+1");

		forloop(i, 0, 10) TextDrawHideForPlayer(playerid, AuthTD_MiscTD[i]);
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

		FadePlayerScreen(playerid, tempLoadCharacters, 0x000000FF, 200, 50);
	}
    return 1;
}

CreateCharacterForPlayer(playerid, name[], slot) {
	static str[2048];
	static ye, mo, da, ho, mi, se, crtdate[32], lastpl[32];

    AuthData[playerid][Creating] = 0;
    CancelSelectTextDraw(playerid);

    gettime(ho, mi, se); getdate(ye, mo, da);
    format(crtdate, sizeof crtdate, "%02d %02d %02d %02d %02d %04d", ho, mi, se, da, mo, ye);
    format(lastpl, sizeof lastpl, "%02d %02d %02d %02d %02d %04d", ho, mi, se, da, mo, ye);
    
    flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da tao mot nhan vat tai slot %d: %s", AuthData[playerid][Account], slot, GetRoleplayName(name));
    format(str, sizeof str, "INSERT INTO `characters` \
    	(`Slot`, `Account`, `DateCreated`, `LastTimePlayed`, \
    	`Name`, `Description`, `Level`, `Gender`, `Birthday`, \
    	`Nation`, `SkinID`, `Cash`, `Coins`, `LicenseData`, \
    	`PhoneData`, `MuteData`, `ImprisonData`, `Hunger`, \
    	`Thirst`, `Stamina`, `MaxStamina`, `Health`, `Armour`, \
    	`FightStyle`, `Position`) \
    	VALUES ('%d', '%s', '%s', '%s', '%s', '%s', '1 0', \
    	'%d', '%02d %02d %04d', '%d', '%d', '1000', '10', '0 0 0 0 0 0', \
    	'0 000000 0', '0 0', '0 0 0 0', '1000', '1000', '100', '100', \
    	'100', '0', '4', '1743 -1862 13.6 0 0 0')", \
    	slot, AuthData[playerid][Account], crtdate, lastpl, \
    	CreateCharData[playerid][Name], CreateCharData[playerid][Description], \
    	CreateCharData[playerid][Gender], CreateCharData[playerid][BDay], \
    	CreateCharData[playerid][BMonth], CreateCharData[playerid][BYear],\
    	CreateCharData[playerid][Nation], CreateCharData[playerid][SkinID]);
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

    FadePlayerScreen(playerid, LoadCharacterData, 0x000000FF, 200, 50);
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
	FadePlayerScreen(playerid, FadeBack, 0x00000000, 200, 50);
	return 1;
}

Fade:PlayerCreateCharacter(playerid) {
	AuthData[playerid][Creating] = 1;
	ShowCharCreateDialog(playerid);
	SpawnPlayer(playerid);
	SetPlayerTeam(playerid, NO_TEAM);
	SetPlayerColor(playerid, COLOR_WHITE);
	SetPlayerSkin(playerid, CreateCharData[playerid][SkinID]);
	SetPlayerInterior(playerid, 15);
	SetPlayerPos(playerid, 217.6, -101, 1005);
	SetPlayerFacingAngle(playerid, 45);
	SetPlayerVirtualWorld(playerid, 100+playerid);
	SetPlayerCameraPos(playerid, 215, -98, 1006);
	SetPlayerCameraLookAt(playerid, 1000, -625, 1000);
	TogglePlayerControllable(playerid, false);
	ApplyAnimation(playerid, "BAR", "Barcustom_loop", 4.1, 1, 1, 1, 1, 0, 1);
	FadePlayerScreen(playerid, FadeBack, 0x00000000, 200, 50);
	return 1;
}

Dialog:Login_Pass(playerid, response, listitem, inputtext[]) {
	if(response) {
		static str[65];
		SHA256_PassHash(inputtext, "", str, sizeof str);

		if(!isequal(str, AuthData[playerid][Password], true)) {
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
		else {
			if(AuthData[playerid][EnablePass2])	return Dialog_Show(playerid, Login_Pass2, DS_PASS,""COL_AQUA"He thong bao mat cap 2", ""COL_WHITE"Hay nhap mat khau bao mat cap 2 cua ban de tiep tuc:", "Xong", "Thoat");
			LoginSuccess(playerid);
		}
	}
}

Dialog:Login_Pass2(playerid, response, listitem, inputtext[]) {
	if(!response) return KickPlayer(playerid, 500);
	else {
		static str[65];
		SHA256_PassHash(inputtext, "", str, sizeof str);
		if(isequal(str, AuthData[playerid][Password2], true)) return LoginSuccess(playerid);
		else {
			Dialog_Show(playerid, Login_Pass2, DS_PASS,""COL_AQUA"He thong bao mat cap 2", ""COL_WHITE"Hay nhap mat khau bao mat cap 2 cua ban de tiep tuc:", "Xong", "Thoat");
			return ErrorMsg(playerid, "Mat khau bao mat cap 2 ban vua nhap khong dung.");
		}
	}
}

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
			Dialog_Show(playerid, Reg_Email, DS_INPUT, ""COL_AQUA"HE THONG DANG KY", "\\cNhap email ban muon dang ky vao o duoi day:", "Xong", "Quay lai");
			return ErrorMsg(playerid, "Email ban vua nhap la khong phai la mot email hop le.");
		}
		format(AuthData[playerid][Email], 64, "%s", inputtext);
		CheckToRegister(playerid);
	}
	else ShowRegisterDialog(playerid);
}

Dialog:Char_Selection(playerid, response, listitem, inputtext[]) {
	if(!response) return KickPlayer(playerid, 500);
	else {
		static str[64];
		AuthData[playerid][Selected] = listitem+1;
		if(tmpCharacterData[playerid][listitem][Available]) {
			format(str, sizeof str, ""COL_AQUA"NHAN VAT %d: %s", AuthData[playerid][Selected], GetRoleplayName(tmpCharacterData[playerid][listitem][Name]));
			Dialog_Show(playerid, Char_Interact, DS_LIST, str, ""COL_GREEN"Tham gia tro choi\n"COL_RED"Xoa nhan vat", "Chon", "Quay lai");
		}
		else {
			format(str, sizeof str, ""COL_AQUA"NHAN VAT %d: Tao nhan vat", AuthData[playerid][Selected]);
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
				flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da tham gia tro choi voi nhan vat %d: %s", AuthData[playerid][Account], AuthData[playerid][Selected], GetRoleplayName(tmpCharacterData[playerid][AuthData[playerid][Selected]-1][Name]));
				FadePlayerScreen(playerid, LoadCharacterData, 0x000000FF, 200, 50);
			}
			case 1: {
				flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da xoa nhan vat tai slot %d: %s", AuthData[playerid][Account], AuthData[playerid][Selected], GetRoleplayName(tmpCharacterData[playerid][AuthData[playerid][Selected]-1][Name]));
				format(str, sizeof str, "DELETE FROM `characters` WHERE `Name`='%s'", tmpCharacterData[playerid][AuthData[playerid][Selected]-1][Name]);
				mysql_tquery(Database, str);
				ShowCharSelDialog(playerid);
			}
		}
	}
}

Dialog:Char_CreateC(playerid, response, listitem, inputtext[]) {
	if(response) FadePlayerScreen(playerid, PlayerCreateCharacter, 0x000000FF, 200, 50);
	else ShowCharSelDialog(playerid);
}

Dialog:Char_Create(playerid, response, listitem, inputtext[])  {
	if(!response) KickPlayer(playerid, 500);
	else {
		switch(listitem) {
			case 0: Dialog_Show(playerid, cCreate_Name, DS_INPUT, ""COL_AQUA"TEN NHAN VAT", "\\c"COL_WHITE"Nhap ten cho nhan vat cua ban. "COL_GREEN"Vi du: Ho_Ten.", "Xong", "Quay lai");
			case 1: Dialog_Show(playerid, cCreate_Gender, DS_LIST, ""COL_AQUA"CHON GIOI TINH", "Nam\nNu\nKhac", "Chon", "Quay lai");
			case 2: ShowBMonthDialog(playerid);
			case 3: Dialog_Show(playerid, cCreate_Nation, DS_LIST, ""COL_AQUA"CHON QUOC GIA", "Los Santos\nSan Fierro\nLas Venturas\nCountryside (Nong thon)", "Chon", "Quay lai");
			case 4: Dialog_Show(playerid, cCreate_Skin, DS_LIST, ""COL_AQUA"CHON TRANG PHUC", "Trang phuc nam\nTrang phuc nu", "Chon", "Quay lai");
			case 5:	Dialog_Show(playerid, cCreate_Desc, DS_INPUT, ""COL_AQUA"MO TA NHAN VAT", "\\c"COL_WHITE"Nhap mo ta ve nhan vat cua ban (co the bo qua):", "Xong", "Quay lai");
			case 6: {
				static str[64];
				format(str, sizeof str, ""COL_AQUA"NHAN VAT %d: Tao nhan vat", AuthData[playerid][Selected]);
				Dialog_Show(playerid, cCreate_Confirm, DS_MSGBOX, str, ""COL_WHITE"\\cBan da chac chan rang cac thong tin cua nhan vat la chinh xac khong?\n\\c"COL_WHITE"Bam "COL_GREEN"'Co' "COL_WHITE"de tao nhan vat, bam "COL_LIGHTRED"'Khong' "COL_WHITE"de quay lai va chinh sua thong tin.", "Co", "Khong");
			}
		}
	}
}

Dialog:cCreate_Name(playerid, response, listitem, inputtext[]) {
	if(!response) ShowCharCreateDialog(playerid);
	else {
		static str[256];
		format(str, sizeof str, "SELECT * FROM `characters` WHERE `Name`='%s'", inputtext);
		await mysql_aquery(Database, str);
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

Dialog:cCreate_Skin(playerid, response, listitem, inputtext[]) {
	if(!response) ShowCharCreateDialog(playerid);
	else {
		switch(listitem) {
			case 0: ShowModelSelectionMenu(playerid, MaleSkinList, "Trang phuc nam");
			case 1: ShowModelSelectionMenu(playerid, FemaleSkinList, "Trang phuc nu");
		}
	}
}

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
