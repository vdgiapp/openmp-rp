
hook OnPlayerSpawn(playerid) {
	SetPlayerSkin(playerid, CharacterData[playerid][SkinID]);
	return 1;
}

hook function ResetPlayerVars(playerid) {
	CharacterData[playerid][CmdCD] = 0;
	return 1;
}