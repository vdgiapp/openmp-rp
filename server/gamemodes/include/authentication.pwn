
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

enum createCharInfo {
	Name[MAX_PLAYER_NAME+1],
	Description[64],
	Gender[16],
	Nation[16],
	Bday,
	Bmonth,
	Byear,
	Birthday[16],
	SkinID
}
new CreateCharactedData[MAX_PLAYERS][createCharInfo];

enum tmpCharacterInfo {
	Available,
	Name[MAX_PLAYER_NAME+1],
	Level[16]
}
new tmpCharacterData[MAX_PLAYERS][4][tmpCharacterInfo];

IsPlayerInGame(playerid) {
	if(IsPlayerConnected(playerid) && AuthData[playerid][Logged] && 
		AuthData[playerid][Joined]) return true;
	return false;
}

GetRoleplayName(const name[]) {
    format(Q@, MAX_PLAYER_NAME+1, "%s", name);
    strreplace(Q@, "_", " ");
    return Q@;
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

	forloop(i,0,4) {
		format(tmpCharacterData[playerid][i][Name], 25, "");
		format(tmpCharacterData[playerid][i][Level], 16, "");
		tmpCharacterData[playerid][i][Available] = 0;
	}
	continue(playerid);
}

timer CheckPlayerNameToLogin[100](playerid) {

	// Check To Login
	forloop(i, 0, 100) ClientMsg(playerid, -1, " ");
	SetPlayerTeam(playerid, NO_TEAM);
	SetPlayerColor(playerid, COLOR_WHITE);
	SetPlayerPos(playerid, 1666.624267, -1243.601684, 129.364807);
	SetPlayerFacingAngle(playerid, 180);
	SetPlayerCameraPos(playerid, 1982.5140, -1703.8862, 100);//124.3137);
	SetPlayerCameraLookAt(playerid, 1765.5276, -1451.8524, 137.7477);
	TogglePlayerControllable(playerid, false);
	SetRandomName(playerid, "Unknown_", 100000, 999999);

	format(Q@, 256, "SELECT * FROM `accounts` WHERE `Account`='%s'", AuthData[playerid][Account]);
	await mysql_aquery(Database, Q@);

	if(IsPlayerInGame(playerid)) return Kick(playerid);

	if(cache_num_rows()) {
		static isbanned, banday, banmonth, banyear, banby[32], banreason[128],
			unbanday, unbanmonth, unbanyear, online, pass[65], password[65];
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
			format(Q@, 256, "UPDATE `accounts` SET `BanData`='0 0 0 0 none 0 0 0' WHERE `Account`='%s'", AuthData[playerid][Account]);
			mysql_tquery(Database, Q@);
		}
		if(isbanned == 1) {
			ShowLoginDialog(playerid);
			ClientMsg(playerid, COLOR_LIGHTRED, "(!) Tai khoan nay da bi khoa. Hay truy cap vao dien dan de xem thong tin chi tiet hon.");
			return KickPlayer(playerid, 500);
		}
		if(online == 1) {
			ShowLoginDialog(playerid);
			ClientMsg(playerid, COLOR_LIGHTRED, "(!) Tai khoan nay dang truc tuyen. Ban khong the dang nhap vao tai khoan nay.");
			return KickPlayer(playerid, 500);
		}
		//CheckVoiceChat(playerid);
		ShowLoginDialog(playerid);
	}

	if(!cache_num_rows()) {
		ShowRegisterDialog(playerid);
	}
}

SetRandomName(playerid, name[], min_int, max_int)
{
	format(Q@, MAX_PLAYER_NAME+1 , "%s%d", name, min_int + random(max_int - min_int));
	switch(SetPlayerName(playerid, Q@)) {
		case -1: return SetRandomName(playerid, name, min_int, max_int);
	}
}

hook OnPlayerConnect(playerid) {

	ResetPlayerVars(playerid);
	GetPlayerName(playerid, AuthData[playerid][Account], MAX_PLAYER_NAME+1);
	ClientMsg(playerid, COLOR_YELLOW, "Dang lay du lieu tu may chu...");

	defer CheckPlayerNameToLogin(playerid);
	return 1;
}

hook OnPlayerDisconnect(playerid, reason) {
	if(AuthData[playerid][Logged]) {
		format(Q@, 256, "UPDATE `accounts` SET `Online`='0' WHERE `Account`='%s'", AuthData[playerid][Account]);
		await mysql_aquery(Database, Q@);
		switch(reason) {
			case 0: flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (mat ket noi).", AuthData[playerid][Account]);
			case 1: flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (thoat game).", AuthData[playerid][Account]);
			case 2: flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (kick / ban).", AuthData[playerid][Account]);
		}
		//Save if(IsPlayerInGame(playerid)) SaveCharacterInfoData(playerid, log_Account[playerid], char_Selected[playerid]);
	}
	ResetPlayerVars(playerid);
	return 1;
}

ShowLoginDialog(playerid) {
	format(Q@, 256, "\\c"COL_WHITE"Chao mung ban da quay tro lai may chu, "COL_GREEN"%s\n\\c"COL_WHITE"Hay nhap mat khau cua ban de dang nhap vao tro choi!", AuthData[playerid][Account]);
	Dialog_Show(playerid, Login_Pass, DS_PASS, ""COL_AQUA""SERVER_NAME"", Q@, "Xong", "Thoat");
}

ShowRegisterDialog(playerid) {
	format(Q@, 256, "\\c"COL_WHITE"Chao mung ban da den may chu, "COL_GREEN"%s\n\\c"COL_WHITE"Hay nhap mat khau cua ban de dang ky tai khoan moi!", AuthData[playerid][Account]);
	Dialog_Show(playerid, Register_Pass, DS_PASS, ""COL_AQUA""SERVER_NAME"", Q@, "Xong", "Thoat");
}

ShowEmailDialog(playerid) {
	Dialog_Show(playerid, Register_Pass, DS_PASS, ""COL_AQUA""SERVER_NAME"", "\\c"COL_WHITE"Hay nhap email cua ban de hoan thanh qua trinh dang ky tai khoan!", "Xong", "Quay lai");
}

LoginSuccess(playerid) {
	static day, month, year, hour, minute, second;
	getdate(year, month, day);
	gettime(hour, minute, second);

	format(Q@, 256, "UPDATE `accounts` SET `Online`='1', `LastLogin`='%02d %02d %02d %02d %02d %04d' WHERE `Account`='%s'", hour, minute, second, day, month, year, AuthData[playerid][Account]);
	mysql_tquery(Database, Q@);

	ClientMsg(playerid, COLOR_GREEN, "Dang nhap vao tai khoan thanh cong. Chuc ban choi game vui ve.");
	flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang nhap vao tro choi.", AuthData[playerid][Account]);
	PlayerPlaySound(playerid, 1084, 0, 0, 0);
	SetRandomName(playerid, "Logged_", 100000, 999999);
	FadePlayerScreen(playerid, tempLoadCharacters, 0x000000FF, 200, 200);

	// Reset
    format(AuthData[playerid][Password], 65, "");
    format(AuthData[playerid][Password2], 65, "");
	AuthData[playerid][Attempt] = 0;

	// Set var
	AuthData[playerid][Logged] = 1;
}

Dialog:Login_Pass(playerid, response, listitem, inputtext[]) {
	if(!response) return KickPlayer(playerid, 500);
	else {
		SHA256_PassHash(inputtext, "", Q@, 65);

		if(!isequal(Q@, AuthData[playerid][Password], true)) {
			if(AuthData[playerid][Attempt] >= 3) {
				ClientMsg(playerid, COLOR_LIGHTRED, "Ban da bi kick vi nhap sai mat khau %d lan.", AuthData[playerid][Attempt]);
				return KickPlayer(playerid, 500);
			}
			AuthData[playerid][Attempt]++;
			ClientMsg(playerid, COLOR_LIGHTRED, "Ban da nhap sai mat khau %d lan, vui long thu lai.", AuthData[playerid][Attempt]);
			return ShowLoginDialog(playerid);
		}
		if(AuthData[playerid][EnablePass2])	return Dialog_Show(playerid, Login_Pass2, DS_PASS,""COL_AQUA"He thong bao mat cap 2", ""COL_WHITE"Hay nhap mat khau bao mat cap 2 cua ban de tiep tuc:", "Xong", "Thoat");
		LoginSuccess(playerid);
	}
}

Dialog:Login_Pass2(playerid, response, listitem, inputtext[]) {
	if(!response) return KickPlayer(playerid, 500);
	else {
		SHA256_PassHash(inputtext, "", Q@, 65);
		if(isequal(Q@, AuthData[playerid][Password2], true)) return LoginSuccess(playerid);
		else {
			Dialog_Show(playerid, Login_Pass2, DS_PASS,""COL_AQUA"He thong bao mat cap 2", ""COL_WHITE"Hay nhap mat khau bao mat cap 2 cua ban de tiep tuc:", "Xong", "Thoat");
			ClientMsg(playerid, COLOR_LIGHTRED, "Mat khau bao mat cap 2 ban vua nhap khong dung.");
		}
	}
}

Dialog:Register_Pass(playerid, response, listitem, inputtext[]) {
	if(!response) return KickPlayer(playerid, 500);
	else {
		if(strlen(inputtext) < 6 || strlen(inputtext) > 32 || isnull(inputtext)) {
			ShowRegisterDialog(playerid);
			ClientMsg(playerid, COLOR_LIGHTRED, "Mat khau duoc nhap phai bao gom tu 6 - 32 ki tu.");
		}
		else {
			format(AuthData[playerid][Password], 65, "%s", inputtext);
			ShowEmailDialog(playerid);
		}
	}
}

/*

timer WaitingForAuth[200](playerid) {
	if(!IsPlayerInGame(playerid)) {
		forloop(i, 0, 100) ClientMsg(playerid, -1, " ");
		SetPlayerTeam(playerid, NO_TEAM);
		SetPlayerColor(playerid, COLOR_WHITE);
		SetPlayerPos(playerid, 1666.624267, -1243.601684, 129.364807);
		SetPlayerFacingAngle(playerid, 180);
		SetPlayerCameraPos(playerid, 1982.5140,-1703.8862,124.3137);
		SetPlayerCameraLookAt(playerid, 1765.5276,-1451.8524,137.7477);
		TogglePlayerControllable(playerid, false);
		//CheckVoiceChat(playerid);
		ShowAuthDialog(playerid);
		ClientMsg(playerid, COLOR_YELLOW, "[NOTE] Su dung lenh /auth neu ban khong thay dialog.");
	}
}

hook OnPlayerConnect(playerid) {
	ClientMsg(playerid, COLOR_YELLOW, "Dang lay du lieu tu may chu...");
	defer WaitingForAuth(playerid);
	return 1;
}

hook OnPlayerDisconnect(playerid, reason) {
	if(LoginData[playerid][Logged]) {
		static string[256];
		strset(string, "UPDATE `accounts` SET `Online`='0' WHERE `Account`='%s'", LoginData[playerid][Account]);
		await mysql_aquery(Database, string);
		switch(reason) {
			case 0: flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (mat ket noi).", LoginData[playerid][Account]);
			case 1: flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (thoat game).", LoginData[playerid][Account]);
			case 2: flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (kick / ban).", LoginData[playerid][Account]);
		}
		//Save if(IsPlayerInGame(playerid)) SaveCharacterInfoData(playerid, log_Account[playerid], char_Selected[playerid]);
	}
	ResetPlayerVars(playerid);
	return 1;
}

cmd:auth(playerid) {
	if(!LoginData[playerid][Logged]) ShowAuthDialog(playerid);
	return 1;
}

ShowAuthDialog(playerid) {
	static string[128];
	strset(string, "Dang nhap\nDang ky\nQuen mat khau");
	Dialog_Show(playerid, Authentication, DS_LIST, ""COL_AQUA"NO NAME ROLEPLAY VIETNAM", string, "Chon", "Thoat");
}

ShowLoginDialog(playerid) {
	static string[128];
	strset(string, "%s", LoginData[playerid][Password]);
	forloop(i, 0, strlen(string)) { string[i] = '*'; }
	strset(string, "Tai khoan:\t%s\nMat khau:\t%s\n"COL_GREEN"DANG NHAP TAI KHOAN", LoginData[playerid][Account], string);
	Dialog_Show(playerid, Login, DS_LIST, ""COL_AQUA"HE THONG DANG NHAP", string, "Chon", "Quay lai");
}

ShowRegisterDialog(playerid) {
	static pass[65], passa[65], pass2[65], string[512];
	strset(pass, "%s", RegisterData[playerid][Password]);
	strset(passa, "%s", RegisterData[playerid][Passworda]);
	strset(pass2, "%s", RegisterData[playerid][Password2]);
	forloop(i, 0, strlen(pass)) { pass[i] = '*'; }
	forloop(i, 0, strlen(passa)) { passa[i] = '*'; }
	forloop(i, 0, strlen(pass2)) { pass2[i] = '*'; }
	strset(string, "Tai khoan:\t%s\n\
		Mat khau:\t%s\n\
		Nhap lai mat khau:\t%s\n\
		Mat khau cap 2:\t%s\n\
		Email:\t%s\n\
		"COL_GREEN"DANG KY TAI KHOAN", \
		RegisterData[playerid][Account], pass, passa, pass2, RegisterData[playerid][Email]);
	Dialog_Show(playerid, Dialog_Register, DS_TABLIST, ""COL_AQUA"HE THONG DANG KY", string, "Chon", "Quay lai");
}

CheckToLogin(playerid) {
	// Check To Login
	static string[256];
	strset(string, "SELECT * FROM `accounts` WHERE `Account`='%s'", LoginData[playerid][Account]);
	await mysql_aquery(Database, string);
	if(isnull(LoginData[playerid][Account]) || isnull(LoginData[playerid][Password])) {
		ShowLoginDialog(playerid);
		return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Tai khoan va mat khau cua ban khong duoc de trong.");	
	}
	if(cache_num_rows()) {
		static isbanned, banday, banmonth, banyear, banby[32], banreason[128],
			unbanday, unbanmonth, unbanyear, online, pass[65], password[65];
		static day, month, year, hour, minute, second;
		getdate(year, month, day);
		gettime(hour, minute, second);
		online = cache_value_int(0, "Online");
		sscanf(cache_value_string(0, "BanData"), "iiiis[32]iii", isbanned, banday, banmonth, banyear,
			banby, unbanday, unbanmonth, unbanyear);
		strset(banreason, "%s", cache_value_string(0, "BanReason"));
		strset(pass, "%s", cache_value_string(0, "Password"));
		format(LoginData[playerid][Password2], 65, "%s", cache_value_string(0, "Password2"));
		LoginData[playerid][EnablePass2] = cache_value_int(0, "EnablePass2");
		SHA256_PassHash("", LoginData[playerid][Password], password, sizeof password);
		if((day >= unbanday && month >= unbanmonth && year >= unbanyear) 
			|| (day < unbanday && month > unbanmonth && year >= unbanyear)) {
			isbanned = 0;
			strset(string, "UPDATE `accounts` SET `BanData`='0 0 0 0 none 0 0 0' WHERE `Account`='%s'", LoginData[playerid][Account]);
			mysql_tquery(Database, string);
		}
		if(isbanned == 1) {
			ShowLoginDialog(playerid);
			return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Tai khoan nay da bi khoa. Hay truy cap vao dien dan de xem thong tin chi tiet hon.");
		}
		if(online == 1) {
			ShowLoginDialog(playerid);
			return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Tai khoan nay dang truc tuyen. Ban khong the dang nhap vao tai khoan nay.");
		}
		if(!isequal(pass, password, true)) {
			if(LoginData[playerid][Attempt] >= 3) return KickPlayer(playerid, 1000);
			LoginData[playerid][Attempt]++;
			ShowLoginDialog(playerid);
			return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Ban da nhap sai mat khau %d lan!\nHay nhap lai mat khau cua ban xuong duoi de dang nhap.", LoginData[playerid][Attempt]);	
		}
		if(isequal(pass, password, true)) {
			if(LoginData[playerid][EnablePass2]) return Dialog_Show(playerid, Login_Pass2, DS_PASS, ""COL_AQUA"HE THONG DANG NHAP", "\\cNhap mat khau cap 2 de dang nhap vao tai khoan:", "Vao game", "Quay lai");
			LoginSuccess(playerid);
		}
	}
	if(!cache_num_rows()) {
		format(LoginData[playerid][Password], 65, "");
		ShowLoginDialog(playerid);
		ClientMsg(playerid, COLOR_LIGHTRED, "(!) Tai khoan ban vua nhap khong ton tai.");
		//ClientMsg(playerid, COLOR_LIGHTRED, "(!) Tai khoan ban vua nhap khong ton tai. Hay truy cap vao "SV_WEBSITE" neu ban muon dang ky tai khoan.");
	}
	//////////////////////////
}

LoginSuccess(playerid)
{
	static day, month, year, hour, minute, second;
	getdate(year, month, day);
	gettime(hour, minute, second);
	static string[256];
	static name[MAX_PLAYER_NAME+1];
	strset(name, "Logged_%d", playerid);
	strset(string, "UPDATE `accounts` SET `Online`='1', `LastLogin`='%02d %02d %02d %02d %02d %04d' WHERE `Account`='%s'", hour, minute, second, day, month, year, LoginData[playerid][Account]);
	mysql_tquery(Database, string);
	ClientMsg(playerid, COLOR_GREEN, "Dang nhap vao tai khoan thanh cong. Chuc ban choi game vui ve.");
	flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang nhap vao tro choi.", LoginData[playerid][Account]);
	SetPlayerName(playerid, name);
	PlayerPlaySound(playerid, 1084, 0, 0, 0);
	FadePlayerScreen(playerid, GetCharacterData, 0x000000FF, 200, 200);

	// Reset
    format(LoginData[playerid][Password], 65, "");
    format(LoginData[playerid][Password2], 65, "");
    LoginData[playerid][EnablePass2] = 0;
	LoginData[playerid][Attempt] = 0;
	LoginData[playerid][Logged] = 1;
}

timer CheckToRegister[250](playerid)
{
	if(isnull(RegisterData[playerid][Account]) || isnull(RegisterData[playerid][Password]) || isnull(RegisterData[playerid][Email]) || isnull(RegisterData[playerid][Passworda])) {
		ShowRegisterDialog(playerid);
		return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Tai khoan, mat khau va email cua ban khong duoc de trong.");	
	}
	static string[256];
	strset(string, "SELECT * FROM `accounts` WHERE `Email`='%s'", RegisterData[playerid][Email]);
	await mysql_aquery(Database, string);
	if(cache_num_rows()) {
		ShowRegisterDialog(playerid);
		return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Email nay da duoc dung de dang ky.");		
	}
	strset(string, "SELECT * FROM `accounts` WHERE `Account`='%s'", RegisterData[playerid][Account]);
	await mysql_aquery(Database, string);
	if(cache_num_rows()) {
		ShowRegisterDialog(playerid);
		return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Tai khoan nay da duoc dung de dang ky.");		
	}
	if(!cache_num_rows()) {
		static password[65], passworda[65], password2[65], string[1024];
		SHA256_PassHash("", RegisterData[playerid][Password], password, sizeof password);
		SHA256_PassHash("", RegisterData[playerid][Passworda], passworda, sizeof passworda);
		SHA256_PassHash("", RegisterData[playerid][Password2], password2, sizeof password2);
		if(!isequal(password, passworda, true)) {
			ShowRegisterDialog(playerid);
			return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Mat khau duoc nhap lai khong trung khop voi mat khau cua ban.");
		}
		strset(string, "INSERT INTO `accounts` (`Account`, `Password`, `Password2`, `EnablePass2`, `Email`) VALUES ('%s', '%s', '%s', '0', '%s')",\
		 RegisterData[playerid][Account], password, password2, RegisterData[playerid][Email]);
		mysql_tquery(Database, string);
		ClientMsg(playerid, COLOR_GREEN, "Tai khoan cua ban da duoc dang ky thanh cong.");
		flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da duoc dang ky thanh cong.", RegisterData[playerid][Account]);
		ShowAuthDialog(playerid);
		PlayerPlaySound(playerid, 1084, 0, 0, 0);

		// Reset
		format(RegisterData[playerid][Account], MAX_PLAYER_NAME+1, "");
		format(RegisterData[playerid][Password], 65, "");
		format(RegisterData[playerid][Password2], 65, "");
		format(RegisterData[playerid][Email], 128, "");
	}
    return 1;
}

Dialog:Authentication(playerid, response, listitem, inputtext[]) {
	if(response) {
		switch(listitem) {
			case 0: ShowLoginDialog(playerid);
			case 1: ShowRegisterDialog(playerid);
			case 2: Dialog_Show(playerid, ForgotPassword, DS_MSGBOX, ""COL_AQUA"HE THONG DANG NHAP", "\\cHien tai he thong quen mat khau dang duoc bao tri\n\\cVui long quay lai sau.", "Quay lai", "");
		}
	}
	else KickPlayer(playerid, 1000);
	return 1;
}
	
Dialog:ForgotPassword(playerid, response, listitem, inputtext[]) {
	ShowAuthDialog(playerid);
	return 1;
}

Dialog:Login(playerid, response, listitem, inputtext[]) { 
	if(!response) ShowAuthDialog(playerid);
	else {
		switch(listitem) {
			case 0: Dialog_Show(playerid, Login_Account, DS_INPUT, ""COL_AQUA"HE THONG DANG NHAP", "\\cNhap tai khoan cua ban vao o duoi day:", "Xong", "Quay lai");
			case 1: Dialog_Show(playerid, Login_Password, DS_PASS, ""COL_AQUA"HE THONG DANG NHAP", "\\cNhap mat khau cua ban vao o duoi day:", "Xong", "Quay lai");
			case 2: CheckToLogin(playerid);
		}
	}
	return 1;
}

Dialog:Login_Account(playerid, response, listitem, inputtext[]) {
	if(response) {
		if(strlen(inputtext) < 6 || strlen(inputtext) > 32 || isnull(inputtext)) {
			Dialog_Show(playerid, Login_Account, DS_INPUT, ""COL_AQUA"HE THONG DANG NHAP", "\\cNhap tai khoan cua ban vao o duoi day:", "Xong", "Quay lai");
			return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Tai khoan duoc nhap phai dai tu 6 den 32 ki tu.");
		}
		else {
			format(LoginData[playerid][Account], MAX_PLAYER_NAME+1, "%s", inputtext);
			ShowLoginDialog(playerid);
		}
	}
	else ShowLoginDialog(playerid);
	return 1;
}

Dialog:Login_Password(playerid, response, listitem, inputtext[]) {
	if(response) {
		if(strlen(inputtext) < 6 || strlen(inputtext) > 64 || isnull(inputtext)) {
			Dialog_Show(playerid, Login_Password, DS_PASS, ""COL_AQUA"HE THONG DANG NHAP", "\\cNhap mat khau cua ban vao o duoi day:", "Xong", "Quay lai");
			ClientMsg(playerid, COLOR_LIGHTRED, "(!) Mat khau duoc nhap phai dai tu 6 den 64 ki tu.");
		}
		else {
			format(LoginData[playerid][Password], 65, "%s", inputtext);
			ShowLoginDialog(playerid);
		}
	}
	else ShowLoginDialog(playerid);
	return 1;
}

Dialog:Login_Pass2(playerid, response, listitem, inputtext[]) {
	if(response) {
		if(strlen(inputtext) != 6 || !IsNumeric(inputtext)) {
			Dialog_Show(playerid, Login_Pass2, DS_PASS, ""COL_AQUA"HE THONG DANG NHAP", "\\cNhap mat khau cap 2 de dang nhap vao tai khoan:", "Vao game", "Quay lai");
			return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Mat khau cap 2 duoc nhap phai gom 6 chu so.");
		}
		else {
			static pass2[65];
			SHA256_PassHash("", inputtext, pass2, sizeof pass2);
			if(!isequal(pass2, LoginData[playerid][Password2], true)) {
				Dialog_Show(playerid, Login_Pass2, DS_PASS, ""COL_AQUA"HE THONG DANG NHAP", "\\cNhap mat khau cap 2 de dang nhap vao tai khoan:", "Vao game", "Quay lai");
				return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Mat khau cap 2 cua ban khong dung.");
			}
			else return LoginSuccess(playerid);
		}
	}
	else KickPlayer(playerid, 1000);
	return 1;
}

Dialog:Login_Waiting(playerid, response, listitem, inputtext[]) {
	ShowAuthDialog(playerid);
	return 1;
}

Dialog:Dialog_Register(playerid, response, listitem, inputtext[]) {
	if(response) {
		switch(listitem) {
			case 0: Dialog_Show(playerid, Reg_Account, DS_INPUT, ""COL_AQUA"HE THONG DANG KY", "\\cNhap tai khoan ban muon dang ky vao o duoi day:", "Xong", "Quay lai");
			case 1: Dialog_Show(playerid, Reg_Password, DS_PASS, ""COL_AQUA"HE THONG DANG KY", "\\cNhap mat khau cua ban vao o duoi day:", "Xong", "Quay lai");
			case 2: Dialog_Show(playerid, Reg_Passwordc, DS_PASS, ""COL_AQUA"HE THONG DANG KY", "\\cNhap lai mat khau cua ban vao o duoi day:", "Xong", "Quay lai");
			case 3: Dialog_Show(playerid, Reg_Pass2, DS_PASS, ""COL_AQUA"HE THONG DANG KY", "\\cNhap mat khau cap 2 cho tai khoan (bo qua neu khong can):", "Xong", "Quay lai");
			case 4: Dialog_Show(playerid, Reg_Email, DS_INPUT, ""COL_AQUA"HE THONG DANG KY", "\\cNhap email ban muon dang ky vao o duoi day:", "Xong", "Quay lai");
			case 5: ClientMsg(playerid, COLOR_YELLOW, "Xin vui long doi..."), defer CheckToRegister(playerid);
		}
	}
	else ShowAuthDialog(playerid);
	return 1;
}

Dialog:Reg_Account(playerid, response, listitem, inputtext[]) {
	if(response) {
		if(strlen(inputtext) < 6 || strlen(inputtext) > 32 || isnull(inputtext)) {
			Dialog_Show(playerid, Reg_Account, DS_INPUT, ""COL_AQUA"HE THONG DANG KY", "\\cNhap tai khoan ban muon dang ky vao o duoi day:", "Xong", "Quay lai");
			return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Tai khoan duoc nhap phai dai tu 6 den 32 ki tu.");
		}
		if(!IsValidAccount(inputtext)) {
			Dialog_Show(playerid, Reg_Account, DS_INPUT, ""COL_AQUA"HE THONG DANG KY", "\\cNhap tai khoan ban muon dang ky vao o duoi day:", "Xong", "Quay lai");
			return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Tai khoan duoc nhap chi duoc gom cac ki tu A-Z, a-z, 0-9, dau cham va dau gach duoi."),
			ClientMsg(playerid, COLOR_LIGHTRED, "Dau cham va dau gach duoi khong duoc dung dau tien.");
		}
		format(RegisterData[playerid][Account], MAX_PLAYER_NAME+1, "%s", inputtext);
		ShowRegisterDialog(playerid);
	}
	else ShowRegisterDialog(playerid);
	return 1;
}

Dialog:Reg_Password(playerid, response, listitem, inputtext[]) {
	if(response) {
		if(strlen(inputtext) < 6 || strlen(inputtext) > 64 || isnull(inputtext)) {
			Dialog_Show(playerid, Reg_Password, DS_PASS, ""COL_AQUA"HE THONG DANG KY", "\\cNhap mat khau cua ban vao o duoi day:", "Xong", "Quay lai");
			ClientMsg(playerid, COLOR_LIGHTRED, "(!) Mat khau duoc nhap phai it nhat 6 ki tu tro len.");
		}
		else {
			format(RegisterData[playerid][Password], 65, "%s", inputtext);
			ShowRegisterDialog(playerid);
		}
	}
	else ShowRegisterDialog(playerid);
	return 1;
}

Dialog:Reg_Passwordc(playerid, response, listitem, inputtext[]) {
	if(response) {
		format(RegisterData[playerid][Passworda], 65, "%s", inputtext);
		ShowRegisterDialog(playerid);
	}
	else ShowRegisterDialog(playerid);
	return 1;
}

Dialog:Reg_Pass2(playerid, response, listitem, inputtext[]) {
	if(response) {
		if(!isnull(inputtext)) {
			if(strlen(inputtext) != 6 || !IsNumeric(inputtext)) {
				Dialog_Show(playerid, Reg_Pass2, DS_PASS, ""COL_AQUA"HE THONG DANG KY", "\\cNhap mat khau cap 2 cho tai khoan (bo qua neu khong can):", "Xong", "Quay lai");
				return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Mat khau cap 2 duoc nhap phai gom 6 chu so.");
			}
			format(RegisterData[playerid][Password2], 65, "%s", inputtext);
			ShowRegisterDialog(playerid);
		}
		else {
			format(RegisterData[playerid][Password2], 65, "");
			ShowRegisterDialog(playerid);
		}
	}
	else ShowRegisterDialog(playerid);
	return 1;
}

Dialog:Reg_Email(playerid, response, listitem, inputtext[]) {
	if(response) {
		if(!IsValidEmail(inputtext)) {
			Dialog_Show(playerid, Reg_Email, DS_INPUT, ""COL_AQUA"HE THONG DANG KY", "\\cNhap email ban muon dang ky vao o duoi day:", "Xong", "Quay lai");
			return ClientMsg(playerid, COLOR_LIGHTRED, "(!) Email ban vua nhap la mot email khong hop le.");
		}
		format(RegisterData[playerid][Email], 64, "%s", inputtext);
		ShowRegisterDialog(playerid);
	}
	else ShowRegisterDialog(playerid);
	return 1;
}

Dialog:Character_Select(playerid, response, listitem, inputtext[]) {
	if(response) {
		static slot;
		slot = listitem+1;
		static string[256];
		if(tmpCharacterData[playerid][slot][Available] == 1) {
			LoginData[playerid][Selected] = slot;
			strset(string, ""COL_AQUA"NHAN VAT %d: %s", slot, GetRoleplayName(tmpCharacterData[playerid][slot][Name]));
			Dialog_Show(playerid, Character_Select2, DS_LIST, string, ""COL_GREEN"Tham gia tro choi\n"COL_RED"Xoa nhan vat", "Chon", "Quay lai");
		}
		else {
			static str[52];
			LoginData[playerid][Selected] = slot;
			strset(string, ""COL_AQUA"NHAN VAT %d: Tao nhan vat", slot);
			strset(str, "Ban co thuc su muon tao nhan vat tai slot %d khong?", slot);
			Dialog_Show(playerid, Character_Create, DS_MSGBOX, string, str, "Co", "Khong");
		}
	}
	else Kick(playerid);
	return 1;
}

Dialog:Character_Create(playerid, response, listitem, inputtext[]) {
	if(response) FadePlayerScreen(playerid, GoToCreateCharacter, 0x000000FF, 200, 200);
	else ShowSelectCharDialog(playerid);
	return 1;
}

Dialog:Character_Select2(playerid, response, listitem, inputtext[]) {
	if(response) {
		switch(listitem) {
			case 0: {
				flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang nhap vao tro choi voi nhan vat %d: %s", LoginData[playerid][Account], LoginData[playerid][Selected], GetRoleplayName(tmpCharacterData[playerid][LoginData[playerid][Selected]][Name]));
				//LoadCharacterInfoData(playerid, LoginData[playerid][Selected]);
			}
			case 1: {
				static string[128];
				strset(string, "DELETE FROM `samp.characters` WHERE `Name`='%s'", tmpCharacterData[playerid][LoginData[playerid][Selected]][Name]);
				flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da xoa nhan vat tai slot %d: %s", LoginData[playerid][Account], LoginData[playerid][Selected], GetRoleplayName(tmpCharacterData[playerid][LoginData[playerid][Selected]][Name]));
				mysql_tquery(Database, string);
				ShowSelectCharDialog(playerid);
			}
		}
	}
	else ShowSelectCharDialog(playerid);
	return 1;
}

fade:GetCharacterData(playerid) {
	SetPlayerTeam(playerid, NO_TEAM);
	SetPlayerColor(playerid, COLOR_WHITE);
	SetPlayerPos(playerid, 1400, -920, 20);
	SetPlayerVirtualWorld(playerid, 2000+playerid);
	SetPlayerCameraPos(playerid, 1400, -920, 110);
	SetPlayerCameraLookAt(playerid, 1480, 0, 200);
	SetPlayerHealth(playerid, 100);
	TogglePlayerControllable(playerid, false);
	ShowSelectCharDialog(playerid);
	FadePlayerScreen(playerid, FadeBack, 0x00000000, 200, 200);
}

static tmpchardata[512];
ShowSelectCharDialog(playerid) {
	strset(tmpchardata, "Slot\tTen nhan vat\tCap do");
	forloop(i,1,4) {
		static string[128];
		strset(string, "SELECT * FROM `characters` WHERE `Account`='%s' AND `Slot`='%d'", LoginData[playerid][Account], i);
		await mysql_aquery(Database, string);
		if(cache_num_rows()) {
			sscanf(cache_value_string(0, "Level"), "ii", tmpCharacterData[playerid][i][Level], tmpCharacterData[playerid][i][Available]);
			tmpCharacterData[playerid][i][Available] = 1;
			format(tmpCharacterData[playerid][i][Name], 25, "%s", cache_value_string(0, "Name"));
			strset(string, "\n%d\t%s\t \tLevel %d", i, GetRoleplayName(tmpCharacterData[playerid][i][Name]), tmpCharacterData[playerid][i][Level]);
			strcat(tmpchardata, string);
			if(i == 3) return Dialog_Show(playerid, Character_Select, DS_HEADERS, ""COL_AQUA"CHON NHAN VAT", tmpchardata, "Chon", "Thoat");
		}
		else {
			tmpCharacterData[playerid][i][Available] = 0;
			format(tmpCharacterData[playerid][i][Name], 25, "");
			strset(string, "\n"COL_GREY"%d\t"COL_GREY"%s", i, "Tao nhan vat");
			strcat(tmpchardata, string);
			if(i == 3) return Dialog_Show(playerid, Character_Select, DS_HEADERS, ""COL_AQUA"CHON NHAN VAT", tmpchardata, "Chon", "Thoat");
		}
	}
}

*/