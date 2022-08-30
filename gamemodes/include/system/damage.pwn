
// Based on weapon-config.inc by oscar-broman
#include <YSI_Coding\y_hooks>

new bool:ArmourRules = true;
new bool:VehiclePassengerDamage = true;
new bool:VehicleUnoccupiedDamage = false;
new MaxShootRateSamples = 4;

enum ENUM_WEAPON_INFO {
    WeaponID,
    MagType,
    Float:Damage
}
new WeaponInfo[][ENUM_WEAPON_INFO] = {
//  WID    Mag     Damage
	{0,    0,      1.0}, // 0 - Fist
	{1,    0,      1.0}, // 1 - Brass knuckles
	{2,    0,      1.0}, // 2 - Golf club
	{3,    0,      1.0}, // 3 - Nitestick
	{4,    0,      1.0}, // 4 - Knife
	{5,    0,      1.0}, // 5 - Bat
	{6,    0,      1.0}, // 6 - Shovel
    {7,    0,      1.0}, // 7 - Pool cue
	{8,    0,      1.0}, // 8 - Katana
	{9,    0,      1.0}, // 9 - Chainsaw

    /* Not Use
	{10,   0,      1.0}, // 10 - Dildo
	{11,   0,      1.0}, // 11 - Dildo 2
	{12,   0,      1.0}, // 12 - Vibrator
	{13,   0,      1.0}, // 13 - Vibrator 2
	{14,   0,      1.0}, // 14 - Flowers
	{15,   0,      1.0}, // 15 - Cane
    */
	{16,   0,      82.5}, // 16 - Grenade
	{17,   0,      0.0}, // 17 - Teargas/Smoke grenade
	{18,   0,      1.0}, // 18 - Molotov
    /*
    9.9, // 19 - Vehicle M4 (custom)
	46.2, // 20 - Vehicle minigun (custom)
	82.5, // 21 - Vehicle rocket (custom)
    */

     // 22 - Colt 45
    {22,   47,     8.25},
    {22,   48,     8.25},

    // 23 - Silenced
	{23,   47,     8.25},
    {23,   48,     8.25},

    // 24 - Deagle
    {24,   49,     35.7},
    {24,   50,     39.8},
    {24,   51,     46.2},
    {24,   52,     42.4},

    // 25 - Shotgun
    {25,   53,     2.5},
    {25,   54,     2.9},
    {25,   55,     3.3},

    // 26 - Sawed-off
    {26,   53,     2.5},
    {26,   54,     2.9},
    {26,   55,     3.3},

    // 27 - Spas
    {27,   53,     3.2},
    {27,   54,     3.9},
    {27,   55,     4.95},

     // 28 - UZI
    {28,   56,     5.2},
    {28,   57,     5.2},
    {28,   58,     6.6},
	{28,   59,     6.6},

    // 29 - MP5
    {29,   60,     7.45},
    {29,   61,     7.45},
    {29,   62,     8.25},
	{29,   63,     8.25},

    // 30 - AK47
	{30,   64,     9.9},
    {30,   65,     9.9},

    // 31 - M4
	{31,   66,     9.15},

    // 32 - Tec9
    {32,   67,     6.6},
    {32,   68,     6.6},

    // 33 - Cuntgun 24.75
    {33,   69,     37.95},
    {33,   70,     41.25},

     // 34 - Sniper 41.25
    {34,   71,     63.75},
    {34,   72,     76.45},

    /* Not Use
    82.5, // 35 - Rocket launcher
	82.5, // 36 - Heatseeker
	1.0, // 37 - Flamethrower
	46.2, // 38 - Minigun
	82.5, // 39 - Satchel
	0.0, // 40 - Detonator
    */

	{41,   0,      0.0}, // 41 - Spraycan
	{42,   0,      0.0}, // 42 - Fire extinguisher
	{43,   0,      0.0}, // 43 - Camera
	{44,   0,      0.0}, // 44 - Night vision
	{45,   0,      0.0}, // 45 - Infrared
	{46,   0,      0.0}, // 46 - Parachute
	{47,   0,      0.0}, // 47 - Fake pistol
    {48,   0,      2.64}, // 48 - Pistol whip (custom)
	{49,   0,      9.9}, // 49 - Vehicle
	{50,   0,      330.0}, // 50 - Helicopter blades
	{51,   0,      82.5}, // 51 - Explosion
	{52,   0,      0.0}, // 52 - Car park (custom)
	{53,   0,      1.0}, // 53 - Drowning
	{54,   0,      165.0}  // 54 - Splat
};

static Float:DefaultWeaponDamage[] = {
	1.0, // 0 - Fist
	1.0, // 1 - Brass knuckles
	1.0, // 2 - Golf club
	1.0, // 3 - Nitestick
	1.0, // 4 - Knife
	1.0, // 5 - Bat
	1.0, // 6 - Shovel
	1.0, // 7 - Pool cue
	1.0, // 8 - Katana
	1.0, // 9 - Chainsaw
	1.0, // 10 - Dildo
	1.0, // 11 - Dildo 2
	1.0, // 12 - Vibrator
	1.0, // 13 - Vibrator 2
	1.0, // 14 - Flowers
	1.0, // 15 - Cane
	82.5, // 16 - Grenade
	0.0, // 17 - Teargas
	1.0, // 18 - Molotov
	9.9, // 19 - Vehicle M4 (custom)
	46.2, // 20 - Vehicle minigun (custom)
	82.5, // 21 - Vehicle rocket (custom)
	8.25, // 22 - Colt 45
	13.2, // 23 - Silenced
	46.2, // 24 - Deagle
	3.3, // 25 - Shotgun
	3.3, // 26 - Sawed-off
	4.95, // 27 - Spas
	6.6, // 28 - UZI
	8.25, // 29 - MP5
	9.9, // 30 - AK47
	9.9, // 31 - M4
	6.6, // 32 - Tec9
	24.75, // 33 - Cuntgun
	41.25, // 34 - Sniper
	82.5, // 35 - Rocket launcher
	82.5, // 36 - Heatseeker
	1.0, // 37 - Flamethrower
	46.2, // 38 - Minigun
	82.5, // 39 - Satchel
	0.0, // 40 - Detonator
	0.33, // 41 - Spraycan
	0.33, // 42 - Fire extinguisher
	0.0, // 43 - Camera
	0.0, // 44 - Night vision
	0.0, // 45 - Infrared
	0.0, // 46 - Parachute
	0.0, // 47 - Fake pistol
	2.64, // 48 - Pistol whip (custom)
	9.9, // 49 - Vehicle
	330.0, // 50 - Helicopter blades
	82.5, // 51 - Explosion
	1.0, // 52 - Car park (custom)
	1.0, // 53 - Drowning
	165.0  // 54 - Splat
};

static Float:WeaponRange[] = {
	1.6, // 0 - Fist
	1.6, // 1 - Brass knuckles
	1.6, // 2 - Golf club
	1.6, // 3 - Nitestick
	1.6, // 4 - Knife
	1.6, // 5 - Bat
	1.6, // 6 - Shovel
	1.6, // 7 - Pool cue
	1.6, // 8 - Katana
	1.6, // 9 - Chainsaw
	1.6, // 10 - Dildo
	1.6, // 11 - Dildo 2
	1.6, // 12 - Vibrator
	1.6, // 13 - Vibrator 2
	1.6, // 14 - Flowers
	1.6, // 15 - Cane
	40.0, // 16 - Grenade
	40.0, // 17 - Teargas
	40.0, // 18 - Molotov
	90.0, // 19 - Vehicle M4 (custom)
	75.0, // 20 - Vehicle minigun (custom)
	0.0, // 21 - Vehicle rocket (custom)
	35.0, // 22 - Colt 45
	35.0, // 23 - Silenced
	35.0, // 24 - Deagle
	40.0, // 25 - Shotgun
	35.0, // 26 - Sawed-off
	40.0, // 27 - Spas
	35.0, // 28 - UZI
	45.0, // 29 - MP5
	70.0, // 30 - AK47
	90.0, // 31 - M4
	35.0, // 32 - Tec9
	100.0, // 33 - Cuntgun
	320.0, // 34 - Sniper
	55.0, // 35 - Rocket launcher
	55.0, // 36 - Heatseeker
	5.1, // 37 - Flamethrower
	75.0, // 38 - Minigun
	40.0, // 39 - Satchel
	25.0, // 40 - Detonator
	6.1, // 41 - Spraycan
	10.1, // 42 - Fire extinguisher
	100.0, // 43 - Camera
	100.0, // 44 - Night vision
	100.0, // 45 - Infrared
	1.6  // 46 - Parachute
};

static MaxWeaponShootRate[] = {
	250, // 0 - Fist
	250, // 1 - Brass knuckles
	250, // 2 - Golf club
	250, // 3 - Nitestick
	250, // 4 - Knife
	250, // 5 - Bat
	250, // 6 - Shovel
	250, // 7 - Pool cue
	250, // 8 - Katana
	30, // 9 - Chainsaw
	250, // 10 - Dildo
	250, // 11 - Dildo 2
	250, // 12 - Vibrator
	250, // 13 - Vibrator 2
	250, // 14 - Flowers
	250, // 15 - Cane
	0, // 16 - Grenade
	0, // 17 - Teargas
	0, // 18 - Molotov
	90, // 19 - Vehicle M4 (custom)
	20, // 20 - Vehicle minigun (custom)
	0, // 21 - Vehicle rocket (custom)
	160, // 22 - Colt 45
	120, // 23 - Silenced
	120, // 24 - Deagle
	800, // 25 - Shotgun
	120, // 26 - Sawed-off
	120, // 27 - Spas
	50, // 28 - UZI
	90, // 29 - MP5
	90, // 30 - AK47
	90, // 31 - M4
	70, // 32 - Tec9
	800, // 33 - Cuntgun
	900, // 34 - Sniper
	0, // 35 - Rocket launcher
	0, // 36 - Heatseeker
	0, // 37 - Flamethrower
	20, // 38 - Minigun
	0, // 39 - Satchel
	0, // 40 - Detonator
	10, // 41 - Spraycan
	10, // 42 - Fire extinguisher
	0, // 43 - Camera
	0, // 44 - Night vision
	0, // 45 - Infrared
	0, // 46 - Parachute
	0, // 47 - Fake pistol
	400 // 48 - Pistol whip (custom)
};

Float:GetWeaponDamage(weaponid, magtype)
{
    for (new i = 0; i < sizeof(WeaponInfo); i++)
    {
        if (WeaponInfo[i][WeaponID] == weaponid && WeaponInfo[i][MagType] == magtype) return WeaponInfo[i][Damage];
    }
    return 0.0;
}

SetVehiclePassengerDamage(bool:toggle) { VehiclePassengerDamage = toggle; }
SetVehicleUnoccupiedDamage(bool:toggle) { VehicleUnoccupiedDamage = toggle; }
SetArmourRules(bool:toggle) { ArmourRules = toggle; }

hook OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ) {

    new damagedid = INVALID_PLAYER_ID;

	if (hittype == BULLET_HIT_TYPE_PLAYER && hitid != INVALID_PLAYER_ID) {
		if (!IsPlayerInGame(hitid)) return 0;
		damagedid = hitid;
	}

    if (hittype < BULLET_HIT_TYPE_NONE || hittype > BULLET_HIT_TYPE_PLAYER_OBJECT) return 0;

    new Float:fOriginX, Float:fOriginY, Float:fOriginZ, Float:fHitPosX, Float:fHitPosY, Float:fHitPosZ;
	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);
	GetPlayerLastShotVectors(playerid, fOriginX, fOriginY, fOriginZ, fHitPosX, fHitPosY, fHitPosZ);
    new Float:length = VectorSize(fOriginX - fHitPosX, fOriginY - fHitPosY, fOriginZ - fHitPosZ);
	new Float:origin_dist = VectorSize(fOriginX - x, fOriginY - y, fOriginZ - z);

    if (origin_dist > 15.0) {
		new in_veh = IsPlayerInAnyVehicle(playerid) || GetPlayerSurfingVehicleID(playerid) != INVALID_VEHICLE_ID;
		if ((!in_veh && GetPlayerSurfingObjectID(playerid) == INVALID_OBJECT_ID) || origin_dist > 50.0) return 0;
        return 0;
	}

    if (hittype != BULLET_HIT_TYPE_NONE) {
		if (length > WeaponRange[weaponid]) return 0;

		if (hittype == BULLET_HIT_TYPE_PLAYER) {
			if (IsPlayerInAnyVehicle(playerid) && GetPlayerVehicleID(playerid) == GetPlayerVehicleID(hitid)) return 0;

			new Float:dist = GetPlayerDistanceFromPoint(hitid, fHitPosX, fHitPosY, fHitPosZ);
			new in_veh = IsPlayerInAnyVehicle(hitid) || GetPlayerSurfingVehicleID(hitid) != INVALID_VEHICLE_ID;

			if (dist > 20.0) if ((!in_veh && GetPlayerSurfingObjectID(hitid) == INVALID_OBJECT_ID) || dist > 50.0) return 0;
		}
	}

    if (hittype == BULLET_HIT_TYPE_VEHICLE) {
		if (hitid < 0 || hitid > MAX_VEHICLES || !IsValidVehicle(hitid)) return 0;

		new vehicleid = GetPlayerVehicleID(playerid);
		if (hitid == vehicleid) return 0;

        if (VehiclePassengerDamage) {
    		new has_driver = false;
    		new has_passenger = false;
    		new seat;
    		foreach (new otherid : Player) {
    			if (otherid == playerid) continue;
    			if (GetPlayerVehicleID(otherid) != hitid) continue;
    			seat = GetPlayerVehicleSeat(otherid);
    			if (seat == 0) has_driver = true;
                else has_passenger = true;
    		}
    		if (!has_driver && has_passenger) {
    			new Float:health;
    			GetVehicleHealth(hitid, health);
    			if (WEAPON_SHOTGUN <= weaponid <= WEAPON_SHOTGSPA) health -= 120.0;
                else {
                    new magtype = 0;
                    // Get mag type @@
                    for (new i = 0; i < MAX_INV_ITEMS; i++) {
                        if (Inventory_IsWeapon(InventoryData[playerid][i][ItemID]) && InventoryData[playerid][i][IsEquipped]) {
                            if (InventoryData[playerid][i][ItemID] == weaponid && GetWeaponSlot(InventoryData[playerid][i][ItemID]) == GetWeaponSlot(weaponid)) {
                                magtype = InventoryData[playerid][i][MagType];
                            }
                        }
                    }
                    health -= GetWeaponDamage(weaponid, magtype) * 3.0;
                }
    			if (health <= 0.0) health = 0.0;
    			SetVehicleHealth(hitid, health);
    		}
    	}

        if (VehicleUnoccupiedDamage) {
			new has_occupent = false;
			foreach (new otherid : Player) {
				if (otherid == playerid) continue;
				if (GetPlayerVehicleID(otherid) != hitid) continue;
				has_occupent = true;
			}
			if (!has_occupent) {
				new Float:health;
				GetVehicleHealth(hitid, health);
				if (health >= 250.0) { //vehicles start on fire below 250 hp
					if (WEAPON_SHOTGUN <= weaponid <= WEAPON_SHOTGSPA) health -= 120.0;
                    else {
                        new magtype = 0;
                        // Get mag type @@
                        for (new i = 0; i < MAX_INV_ITEMS; i++) {
                            if (Inventory_IsWeapon(InventoryData[playerid][i][ItemID]) && InventoryData[playerid][i][IsEquipped]) {
                                if (InventoryData[playerid][i][ItemID] == weaponid && GetWeaponSlot(InventoryData[playerid][i][ItemID]) == GetWeaponSlot(weaponid)) {
                                    magtype = InventoryData[playerid][i][MagType];
                                }
                            }
                        }
                        health -= GetWeaponDamage(weaponid, magtype) * 3.0;
					}
					SetVehicleHealth(hitid, health);
				}
			}
        }
    }
    return 1;
}

hook OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart)
{
    if(!IsPlayerInGame(playerid)) return 0;
    if(ArmourRules)
    {
        if(issuerid == INVALID_PLAYER_ID) return 0;
        new magtype = 0;
        for (new i = 0; i < MAX_INV_ITEMS; i++)
        {
            if (Inventory_IsWeapon(InventoryData[issuerid][i][ItemID]) && InventoryData[issuerid][i][IsEquipped]) {
                if (InventoryData[issuerid][i][ItemID] == weaponid && GetWeaponSlot(InventoryData[issuerid][i][ItemID]) == GetWeaponSlot(weaponid)) {
                    magtype = InventoryData[issuerid][i][MagType];
                }
            }
        }
        new Float:inflict = -GetWeaponDamage(weaponid, magtype);
        ClientMsg(playerid, -1, "Old HP: %f", PlayerHealth(playerid));
        ClientMsg(playerid, -1, "Amount: %f", amount);

        switch(bodypart) {
            case 3, 4: //TORSO, GROIN
            {

            }
            default: GivePlayerHealth(playerid, inflict);
        }
        return 0;
    }
    return 1;
}
