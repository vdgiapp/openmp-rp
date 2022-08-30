
#include <YSI_Coding\y_hooks>

// +-+-+-+-+- Main Callbacks +-+-+-+-+-
public OnGameModeInit() {

	Database = mysql_connect(host_mysql, user_mysql, pass_mysql, dbase_mysql);

    if(Database == MYSQL_INVALID_HANDLE || mysql_errno(Database) != 0) {
        printf("Ket noi den co so du lieu khong thanh cong!");
        return mysql_close(Database);
    }

    printf("Ket noi den co so du lieu thanh cong!");

	// SQL
	Staff_LoadData();
	House_LoadData();

    //
    DisableCrashDetectLongCall();
    pp_use_funcidx(true);

    // Settings
	ShowNameTags(true);
	SetNameTagDrawDistance(NAMETAG_DISTANCE);
	ShowPlayerMarkers(false);
	EnableStuntBonusForAll(false);
	DisableInteriorEnterExits();
	AllowInteriorWeapons(1);
	SetGameModeText(SERVER_VERSION);
	SetModeRestartTime(20.0); // default: 12.0
	SetTimeZone(7);

	ToggleChatTextReplacement(true);
	SetVehiclePassengerDamage(true);
	SetVehicleUnoccupiedDamage(true);
	SetArmourRules(true);

	// Log files
	printf("Checking log files...");
	fcreate(AUTH_LOG_FILE);
	fcreate(DMG_LOG_FILE);
	fcreate(ADM_LOG_FILE);
	fcreate(PM_LOG_FILE);

	// Set account status
	printf("Changing accounts status...");
	mysql_tquery(Database, "UPDATE `accounts` SET `Online`='0'");

	// Load lists
	printf("Loading UmSelection lists...");
	MaleSkinList = LoadModelSelectionMenu(MALE_SKIN_LIST);
	FemaleSkinList = LoadModelSelectionMenu(FEMALE_SKIN_LIST);

	return 1;
}

public OnGameModeExit() {
	foreach(new playerid : Player) OnPlayerDisconnect(playerid, 1);
	ResetGlobalVars();
	return 1;
}

public OnPlayerRequestClass(playerid, classid) {
	return 0;
}

public OnPlayerConnect(playerid) {
	return 1;
}

public OnPlayerDisconnect(playerid, reason) {
	@OnPlayerDisconnect(playerid, reason);
	return 1;
}

public OnPlayerSpawn(playerid) {
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason) {
	return 1;
}

public OnVehicleSpawn(vehicleid) {
	return 1;
}

public OnVehicleDeath(vehicleid, killerid) {
	return 1;
}

public OnPlayerText(playerid, text[]) {
	return 0;
}

public OnPlayerCommandText(playerid, cmdtext[]) {
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger) {
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid) {
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate) {
	return 1;
}

public OnPlayerEnterCheckpoint(playerid) {
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid) {
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid) {
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid) {
	return 1;
}

public OnRconCommand(cmd[]) {
	return 1;
}

public OnPlayerRequestSpawn(playerid) {
	return 1;
}

public OnObjectMoved(objectid) {
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid) {
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid) {
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid) {
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid) {
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2) {
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row) {
	return 1;
}

public OnPlayerExitedMenu(playerid) {
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid) {
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(!IsPlayerInGame(playerid)) return 0;
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success) {
	return 1;
}

public OnPlayerUpdate(playerid) {
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid) {
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid) {
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid) {
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid) {
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source) {
	return 1;
}

public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ) {
	if(!IsPlayerInGame(playerid)) return 0;
	// Anti Silent Aimbot
    if(hittype == BULLET_HIT_TYPE_PLAYER) {
        static
            Float:fOriginX, Float:fOriginY, Float:fOriginZ,
            Float:fHitPosX, Float:fHitPosY, Float:fHitPosZ;

        GetPlayerLastShotVectors(playerid, fOriginX, fOriginY, fOriginZ, fHitPosX, fHitPosY, fHitPosZ);
        static Float:BulletDistanceForHit;
        BulletDistanceForHit = GetPlayerDistanceFromPoint(hitid, fHitPosX, fHitPosY, fHitPosZ);
        if(BulletDistanceForHit==0 && (weaponid>21 && weaponid!=35 && weaponid!=42 && weaponid<47)) return 0;
    }
	return 1;
}

public OnPlayerGiveDamageDynamicActor(playerid, actorid, Float:amount, weaponid, bodypart) {
	return 0;
}

public OnPlayerCommandPerformed(playerid, cmd[], params[], result, flags) {
	if(!IsPlayerInGame(playerid)) return 0;
	if(result == -1) {
		static str[128];
		format(str, sizeof str, "Cau lenh /%s khong ton tai.", cmd);
		return ShowTDN(playerid, str);
	}
	return 1;
}
