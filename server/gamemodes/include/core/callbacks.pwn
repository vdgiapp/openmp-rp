
#include <YSI_Coding\y_hooks>

// +-+-+-+-+- Main Callbacks +-+-+-+-+-
public OnGameModeInit() {
	Database = mysql_connect(host_mysql, user_mysql, pass_mysql, dbase_mysql);
    if(Database == MYSQL_INVALID_HANDLE || mysql_errno(Database) != 0) {
        printf("Ket noi den co so du lieu khong thanh cong!\n");
        return mysql_close(Database);
    }
    printf("Ket noi den co so du lieu thanh cong!\n");
    pp_use_funcidx(true);
	ShowNameTags(true);
	SetNameTagDrawDistance(NAMETAG_DISTANCE);
	ShowPlayerMarkers(false);
	EnableStuntBonusForAll(false);
	DisableInteriorEnterExits();
	AllowInteriorWeapons(1);
	SetGameModeText(SERVER_VERSION);
	SetModeRestartTime(20.0); // default: 12.0

	// Log files
	printf("Checking log files...\n");
	fcreate("logs/auth.log");

	// Set account status
	printf("Changing accounts status...\n");
	mysql_tquery(Database, "UPDATE `accounts` SET `Online`='0'");

	// Load lists
	printf("Loading UmSelection lists...\n");
	MaleSkinList = LoadModelSelectionMenu("config/male_skins_list.txt");
	FemaleSkinList = LoadModelSelectionMenu("config/female_skins_list.txt");

	// Streamer
	Streamer_SetMaxItems(STREAMER_TYPE_OBJECT, -1);
    Streamer_SetVisibleItems(STREAMER_TYPE_OBJECT, 2500);
	return 1;
}

public OnGameModeExit() {
	foreach(new playerid : Player) OnPlayerDisconnect(playerid, 1);
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason) { // 0- Timeout, Crash / 1- Quit / 2- Kick, Ban
	return 1;
}

public OnPlayerRequestSpawn(playerid) {
	return 0;
}

public OnPlayerRequestClass(playerid) {
	return 0;
}

public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ) {
	// Anti Silent Aimbot
    if(hittype == BULLET_HIT_TYPE_PLAYER)
    {
        static
            Float:fOriginX, Float:fOriginY, Float:fOriginZ,
            Float:fHitPosX, Float:fHitPosY, Float:fHitPosZ;

        GetPlayerLastShotVectors(playerid, fOriginX, fOriginY, fOriginZ, fHitPosX, fHitPosY, fHitPosZ);
        static Float:BulletDistanceForHit;
        BulletDistanceForHit = GetPlayerDistanceFromPoint(hitid, fHitPosX, fHitPosY, fHitPosZ);
        if(BulletDistanceForHit==0 && (weaponid>21 && weaponid!=35 && weaponid!=42 && weaponid<47)) return 0; //It prevents the bullet from reaching the target player.
    }
    return 1;
}

public OnPlayerGiveDamageDynamicActor(playerid, actorid, Float:amount, weaponid, bodypart) {
	return 0;
}
