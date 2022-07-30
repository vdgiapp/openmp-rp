
#include <YSI_Coding/y_hooks>

// +-+-+-+-+- Main Callbacks +-+-+-+-+-
public OnGameModeInit() {
	Database = mysql_connect(host_mysql, user_mysql, pass_mysql, dbase_mysql);
    if(Database == MYSQL_INVALID_HANDLE || mysql_errno(Database) != 0) {
        printf("[S] Ket noi den co so du lieu khong thanh cong!");
        return mysql_close(Database);
    }
    printf("[S] Ket noi den co so du lieu thanh cong!");
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
	fcreate("logs/auth.log");

	// Set account offline
	mysql_tquery(Database, "UPDATE `accounts` SET `Online`='0'");
	
	return 1;
}

public OnGameModeExit() {
	foreach(new playerid : Player) OnPlayerDisconnect(playerid, 0);
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason) { // 0- Timeout, Crash / 1- Quit / 2- Kick, Ban
	Auth_OnPlayerDisconnect(playerid, reason);
	return 1;
}

public OnPlayerText(playerid, text[]) {
    return 0;
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

public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart) {
	return 1;
}

public OnPlayerGiveDamageDynamicActor(playerid, actorid, Float:amount, weaponid, bodypart) {
	return 0;
}

// +-+-+-+-+- Addition Functions +-+-+-+-+-
GivePlayerHealth(playerid, Float:hp) {
	I@ = 0;
	GetPlayerHealth(playerid, I@);
	return SetPlayerHealth(playerid, floatadd(I@, hp));
}

GivePlayerArmour(playerid, Float:ar) {
	I@ = 0;
	GetPlayerArmour(playerid, I@);
	return SetPlayerArmour(playerid, floatadd(I@, ar));
}

SetPlayerMoney(playerid, money) {
	ResetPlayerMoney(playerid);
	GivePlayerMoney(playerid, money);
}

PlayerName(playerid) {
	GetPlayerName(playerid, Q@, MAX_PLAYER_NAME+1);
	return Q@;
}

fNumber(number) {
	static result[64];
	forloop(i,0,sizeof(number)) {
        HumanizeThousand(number[i], result);
        return result;
    }
}

cTime(time) {
	static jhour, jmin, jdiv, jsec, string[128];
	if(time > 3599) {
		jhour = floatround(time / (60*60));
		jdiv = floatround(time % (60*60));
        jmin = floatround(jdiv / 60, floatround_floor);
        jsec = floatround(jdiv % 60, floatround_ceil);
        format(string, sizeof(string), "%02dh, %02dm, %02ds", jhour, jmin, jsec);
    }
    else if(time > 59 && time < 3600) {
        jmin = floatround(time/60);
        jsec = floatround(time - jmin*60);
        format(string, sizeof(string), "%02dm, %02ds", jmin, jsec);
    }
    else {
        jsec = floatround(time);
        format(string, sizeof(string), "%02ds", jsec);
    }
    return string;
}

GetXYInFrontOfPlayer(playerid, &Float:x, &Float:y, Float:distance) {
	I@ = 0;
    GetPlayerPos(playerid, x, y, I@);
    GetPlayerFacingAngle(playerid, I@);
    if(GetPlayerVehicleID(playerid)) {
        GetVehicleZAngle(GetPlayerVehicleID(playerid), I@);
    }
    x += (distance * floatsin(-I@, degrees));
    y += (distance * floatcos(-I@, degrees));
}

GetXYFromAngle(&Float:posX, &Float:posY, Float:angle, Float:distance) {
	posX += (distance * floatsin(-angle, degrees));
	posY += (distance * floatcos(-angle, degrees));
}

GetXYZFromAngle(&Float:posX, &Float:posY, &Float:posZ, Float:angle, Float:height, Float:distance) {
	posX += (distance * floatsin(angle, degrees) * floatcos(height, degrees));
	posY += (distance * floatcos(angle, degrees) * floatcos(height, degrees));
	posZ += (distance * floatsin(height, degrees));
}

GetWeaponIDFromModel(modelid)
{
	J@ = 0;
    switch(modelid)
    {
        case 331: J@ = 1; // Brass Knuckles
        case 333: J@ = 2; // Golf Club
        case 334: J@ = 3; // Nightstick
        case 335: J@ = 4; // Knife
        case 336: J@ = 5; // Baseball Bat
        case 337: J@ = 6; // Shovel
        case 338: J@ = 7; // Pool Cue
        case 339: J@ = 8; // Katana
        case 341: J@ = 9; // Chainsaw
        case 321: J@ = 10; // Double-ended Dildo
        case 325: J@ = 14; // Flowers
       	case 326: J@ = 15; // Cane
        case 342: J@ = 16; // Grenade
        case 343: J@ = 17; // Tear Gas
        case 344: J@ = 18; // Molotov Cocktail
        case 346: J@ = 22; // 9mm
        case 347: J@ = 23; // Silenced 9mm
        case 348: J@ = 24; // Desert Eagle
        case 349: J@ = 25; // Shotgun
        case 350: J@ = 26; // Sawnoff
        case 351: J@ = 27; // Combat Shotgun
        case 352: J@ = 28; // Micro SMG/Uzi
        case 353: J@ = 29; // MP5
        case 355: J@ = 30; // AK-47
        case 356: J@ = 31; // M4
        case 372: J@ = 32; // Tec-9
        case 357: J@ = 33; // Country Rifle
        case 358: J@ = 34; // Sniper Rifle
        case 359: J@ = 35; // RPG
        case 360: J@ = 36; // HS Rocket
        case 361: J@ = 37; // Flamethrower
        case 362: J@ = 38; // Minigun
        case 363: J@ = 39;// Satchel Charge + Detonator
        case 365: J@ = 41; // Spraycan
        case 366: J@ = 42; // Fire Extinguisher
        case 367: J@ = 43; // Camera
    }
    return J@;
}

ResetPlayerVars(playerid) { }

now() {
	static year, month, day, hour, minute, second;
	getdate(year, month, day);
	gettime(hour, minute, second);
	format(Q@, 32, "%02d:%02d:%02d - %02d/%02d/%d", hour, minute, second, day, month, year);
	return Q@;
}

curdate() {
	static year, month, day;
	getdate(year, month, day);
	format(Q@, 20, "%02d/%02d/%d", day, month, year);
	return Q@;
}

curtime() {
	static hour, minute, second;
	gettime(hour, minute, second);
	format(Q@, 20, "%02d:%02d:%02d", hour, minute, second);
	return Q@;
}

GlobalMsg(color, const message[], va_args<>) {
	foreach(new playerid : Player) {
		if(IsPlayerInGame(playerid)) {
			ClientMsg(playerid, color, message, va_start<2>);
		}
	}
	return 1;
}

ErrorMsg(playerid, const string[]) {
	format(Q@, 128, ""COL_LIGHTRED"ERROR > "COL_GREY"%s", string);
	ClientMsg(playerid, -1, Q@);
}

SuccessMsg(playerid, const string[]) {
	format(Q@, 128, ""COL_GREEN"SUCCESS > "COL_WHITE"%s", string);
	ClientMsg(playerid, -1, Q@);
}

LocalMsg(playerid, const string[]) 
return ProxDetector(20.0, playerid, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4, COLOR_DIST5, string);

LowMsg(playerid, const string[]) 
return ProxDetector(8.0, playerid, COLOR_GREY, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4, string);

ShoutMsg(playerid, const string[]) 
return ProxDetector(50.0, playerid, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4, COLOR_DIST5, string);

ProxDetector(Float:radi, playerid, col1, col2, col3, col4, col5, const string[]) {
    if(IsPlayerInGame(playerid)) {
        static Float:posx, Float:posy, Float:posz;
        static Float:oldposx, Float:oldposy, Float:oldposz;
        static Float:tempposx, Float:tempposy, Float:tempposz;
        GetPlayerPos(playerid, oldposx, oldposy, oldposz);
        forloop(i, 0, MAX_PLAYERS) {
            if(IsPlayerInGame(i)) {
                if(!GetPVarInt(playerid, "BigEar")) {
                    GetPlayerPos(i, posx, posy, posz);
                    tempposx = (oldposx -posx);
                    tempposy = (oldposy -posy);
                    tempposz = (oldposz -posz);
                    if (((tempposx < radi/16) && (tempposx > -radi/16)) && ((tempposy < radi/16) && (tempposy > -radi/16)) && ((tempposz < radi/16) && (tempposz > -radi/16))) {
                        if(GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) ClientMsg(i, col1, string);
                    }
                    else if (((tempposx < radi/8) && (tempposx > -radi/8)) && ((tempposy < radi/8) && (tempposy > -radi/8)) && ((tempposz < radi/8) && (tempposz > -radi/8))) {
                        if(GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) ClientMsg(i, col2, string);
                    }
                    else if (((tempposx < radi/4) && (tempposx > -radi/4)) && ((tempposy < radi/4) && (tempposy > -radi/4)) && ((tempposz < radi/4) && (tempposz > -radi/4))) {
                        if(GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) ClientMsg(i, col3, string);
                    }
                    else if (((tempposx < radi/2) && (tempposx > -radi/2)) && ((tempposy < radi/2) && (tempposy > -radi/2)) && ((tempposz < radi/2) && (tempposz > -radi/2))) {
                        if(GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) ClientMsg(i, col4, string);
                    }
                    else if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi))) {
                        if(GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) ClientMsg(i, col5, string);
                    }
                }
                else ClientMsg(i, col1, string);
            }
        }
    }
}

Fade:FadeBack(playerid) return 1;

// MySQL
cache_value_string(row_idx, const column_name[]) {
	cache_get_value_name(row_idx, column_name, Q@, 512);
	return Q@;
}

cache_value_int(row_idx, const column_name[]) {
	J@ = 0;
	cache_get_value_name_int(row_idx, column_name, J@);
	return J@;
}

Float:cache_value_float(row_idx, const column_name[]) {
	I@ = 0;
	cache_get_value_name_float(row_idx, column_name[], I@);
	return I@;
}

// File log
fcreate(const file[]) {
	if(fexist(file)) return 0;
	else {
		static File:f;
		f = fopen(file, io_write);
		if(f) {
			fclose(f);
			return 1;
		}
	}
	return 0;
}

flog(const file[], const string[], va_args<>)
{
	fcreate(file);
	static File:temp;
	temp = fopen(file, io_append);
	if(temp) {
		format(Q@, 1024, string, va_start<2>);
		format(Q@, 1024, "[%s] | %s\r\n", now(), Q@);
	    fwrite(temp, Q@);
	    fclose(temp);
	    return 1;
	}
	else {
		printf("Tep tin \"%s\" khong ton tai hoac chua duoc mo (fopen).", file);
		return 0;
	}
}