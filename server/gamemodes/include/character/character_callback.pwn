
hook OnPlayerSpawn(playerid) {
	SetPlayerSkin(playerid, CharacterData[playerid][SkinID]);
	return 1;
}

hook function ResetPlayerVars(playerid) {
	CharacterData[playerid][CmdCD] = 0;
	continue(playerid);
}

hook OnPlayerDisconnect(playerid, reason) {
	if(AuthData[playerid][Logged]) {
		static str[256];
		format(str, sizeof str, "UPDATE `accounts` SET `Online`='0' WHERE `Account`='%s'", AuthData[playerid][Account]);
		mysql_tquery(Database, str);
		SaveCharacterData(playerid);
		switch(reason) {
			case 0: flog(AUTH_LOG_FILE, "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (mat ket noi).", AuthData[playerid][Account]);
			case 1: flog(AUTH_LOG_FILE, "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (thoat game).", AuthData[playerid][Account]);
			case 2: flog(AUTH_LOG_FILE, "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (kick/ban).", AuthData[playerid][Account]);
		}
	}
	ResetPlayerVars(playerid);
	Kick(playerid);
	return 1;
}
