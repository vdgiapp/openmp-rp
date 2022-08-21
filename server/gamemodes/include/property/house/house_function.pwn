
House_LoadData() {
	for(new i = 0; i < MAX_HOUSES; i++) {
		static str[128]; format(str, sizeof str, "SELECT * FROM `houses` WHERE `ID` = '%d'", i);
		mysql_tquery(Database, str, "OnGetHouseData", "i", i);
	}
	return 1;
}

function OnGetHouseData(hid) {
    if(!cache_num_rows()) return 0;

    Iter_Add(House, hid);
    HouseData[hid][ID] = cache_value_int(0, "ID");
    HouseData[hid][Created] = cache_value_int(0, "Created");
    HouseData[hid][Owned] = cache_value_int(0, "Owned");
    format(HouseData[hid][Owner], 25, "%s", cache_value_string(0, "Owner"));
    HouseData[hid][Locked] = cache_value_int(0, "Locked");
    HouseData[hid][Alarm] = cache_value_int(0, "Alarm");
    HouseData[hid][Level] = cache_value_int(0, "Level");
    HouseData[hid][Price] = cache_value_int(0, "Price");
    HouseData[hid][IntID] = cache_value_int(0, "IntID");
    HouseData[hid][ExteriorX] = cache_value_float(0, "ExteriorX");
    HouseData[hid][ExteriorY] = cache_value_float(0, "ExteriorY");
    HouseData[hid][ExteriorZ] = cache_value_float(0, "ExteriorZ");
    HouseData[hid][ExteriorA] = cache_value_float(0, "ExteriorA");
    HouseData[hid][ExteriorInt] = cache_value_int(0, "ExteriorInt");
    HouseData[hid][ExteriorWorld] = cache_value_int(0, "ExteriorWorld");
    HouseData[hid][InteriorX] = cache_value_float(0, "InteriorX");
    HouseData[hid][InteriorY] = cache_value_float(0, "InteriorY");
    HouseData[hid][InteriorZ] = cache_value_float(0, "InteriorZ");
    HouseData[hid][InteriorA] = cache_value_float(0, "InteriorA");
    HouseData[hid][InteriorInt] = cache_value_int(0, "InteriorInt");
    HouseData[hid][InteriorWorld] = cache_value_int(0, "InteriorWorld");
    HouseData[hid][LockerX] = cache_value_float(0, "LockerX");
    HouseData[hid][LockerY] = cache_value_float(0, "LockerY");
    HouseData[hid][LockerZ] = cache_value_float(0, "LockerZ");
    HouseData[hid][Cash] = cache_value_int(0, "Cash");
    format(HouseData[hid][Item0], 64, "%s", cache_value_string(0, "Item0"));
    format(HouseData[hid][Item1], 64, "%s", cache_value_string(0, "Item1"));
    format(HouseData[hid][Item2], 64, "%s", cache_value_string(0, "Item2"));
    format(HouseData[hid][Item3], 64, "%s", cache_value_string(0, "Item3"));
    format(HouseData[hid][Item4], 64, "%s", cache_value_string(0, "Item4"));
    format(HouseData[hid][Item5], 64, "%s", cache_value_string(0, "Item5"));
    format(HouseData[hid][Item6], 64, "%s", cache_value_string(0, "Item6"));
    format(HouseData[hid][Item7], 64, "%s", cache_value_string(0, "Item7"));
    format(HouseData[hid][Item8], 64, "%s", cache_value_string(0, "Item8"));
    format(HouseData[hid][Item9], 64, "%s", cache_value_string(0, "Item9"));

    GetMapZoneName(GetMapZoneAtPoint(HouseData[hid][ExteriorX], HouseData[hid][ExteriorY], HouseData[hid][ExteriorZ]), HouseData[hid][Address]);

    HouseData[hid][ExtCP] = CreateDynamicCP(HouseData[hid][ExteriorX], HouseData[hid][ExteriorY], HouseData[hid][ExteriorZ], HOUSE_CP_SIZE, HouseData[hid][ExteriorWorld], HouseData[hid][ExteriorInt], -1, HOUSE_CP_DISTANCE);
    HouseData[hid][IntCP] = CreateDynamicCP(HouseData[hid][InteriorX], HouseData[hid][InteriorY], HouseData[hid][InteriorZ], HOUSE_CP_SIZE, HouseData[hid][InteriorWorld], HouseData[hid][InteriorInt], -1);

    if(!HouseData[hid][Created]) {
        DestroyDynamicCP(HouseData[hid][ExtCP]);
        DestroyDynamicCP(HouseData[hid][IntCP]);
    }

    printf("House ID %d, DbID %d loaded.", hid, HouseData[hid][ID]);
    return 1;
}

House_SaveData(hid) {
	if(hid != -1) {
		mysql_update(Database, "UPDATE `houses` SET `Created` = '%d' WHERE `ID` = '%d'", HouseData[hid][Created], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Owned` = '%d' WHERE `ID` = '%d'", HouseData[hid][Owned], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Owner` = '%s' WHERE `ID` = '%d'", HouseData[hid][Owner], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Locked` = '%d' WHERE `ID` = '%d'", HouseData[hid][Locked], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Alarm` = '%d' WHERE `ID` = '%d'", HouseData[hid][Alarm], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Level` = '%d' WHERE `ID` = '%d'", HouseData[hid][Level], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Price` = '%d' WHERE `ID` = '%d'", HouseData[hid][Price], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `IntID` = '%d' WHERE `ID` = '%d'", HouseData[hid][IntID], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `ExteriorX` = '%f' WHERE `ID` = '%d'", HouseData[hid][ExteriorX], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `ExteriorY` = '%f' WHERE `ID` = '%d'", HouseData[hid][ExteriorY], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `ExteriorZ` = '%f' WHERE `ID` = '%d'", HouseData[hid][ExteriorZ], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `ExteriorA` = '%f' WHERE `ID` = '%d'", HouseData[hid][ExteriorA], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `ExteriorInt` = '%d' WHERE `ID` = '%d'", HouseData[hid][ExteriorInt], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `ExteriorWorld` = '%d' WHERE `ID` = '%d'", HouseData[hid][ExteriorWorld], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `InteriorX` = '%f' WHERE `ID` = '%d'", HouseData[hid][InteriorX], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `InteriorY` = '%f' WHERE `ID` = '%d'", HouseData[hid][InteriorY], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `InteriorZ` = '%f' WHERE `ID` = '%d'", HouseData[hid][InteriorZ], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `InteriorA` = '%f' WHERE `ID` = '%d'", HouseData[hid][InteriorA], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `InteriorInt` = '%d' WHERE `ID` = '%d'", HouseData[hid][InteriorInt], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `InteriorWorld` = '%d' WHERE `ID` = '%d'", HouseData[hid][InteriorWorld], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `LockerX` = '%f' WHERE `ID` = '%d'", HouseData[hid][LockerX], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `LockerY` = '%f' WHERE `ID` = '%d'", HouseData[hid][LockerY], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `LockerZ` = '%f' WHERE `ID` = '%d'", HouseData[hid][LockerZ], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Cash` = '%d' WHERE `ID` = '%d'", HouseData[hid][Cash], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Item0` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item0], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Item1` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item1], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Item2` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item2], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Item3` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item3], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Item4` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item4], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Item5` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item5], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Item6` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item6], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Item7` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item7], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Item8` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item8], HouseData[hid][ID]);
	    mysql_update(Database, "UPDATE `houses` SET `Item9` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item9], HouseData[hid][ID]);

	    printf("House ID %d, DbID %d saved.", hid, HouseData[hid][ID]);
	}
}

House_IsPlayerOutside(playerid, hid) { return IsPlayerInDynamicCP(playerid, HouseData[hid][ExtCP]); }

House_IsPlayerInside(playerid, hid, Float:range = 50.0) { return (HouseData[hid][Created] && IsPlayerInRangeOfPoint(playerid, range, HouseData[hid][InteriorX], HouseData[hid][InteriorY], HouseData[hid][InteriorZ]) && GetPlayerInterior(playerid) == HouseData[hid][InteriorInt] && GetPlayerVirtualWorld(playerid) == HouseData[hid][InteriorWorld]); }

House_Nearest(playerid) {
    if(CharacterData[playerid][HouseEntered] != -1 && House_IsPlayerInside(playerid, CharacterData[playerid][HouseEntered])) return CharacterData[playerid][HouseEntered];
    foreach(new i : House) {
	    if(!HouseData[i][Created]) continue;
	    if(House_IsPlayerInside(playerid, i)) return i;
		if(House_IsPlayerOutside(playerid, i)) return i;
	}
	return -1;
}

House_Create(playerid, intid, price) {
	static
	    Float:x,
	    Float:y,
	    Float:z,
		Float:angle;

	if(GetPlayerPos(playerid, x, y, z) && GetPlayerFacingAngle(playerid, angle)) {
		for(new i = 0; i < MAX_HOUSES; i++) {
	    	if(!HouseData[i][Created] && i != -1) {
				Iter_Add(House, i);
				HouseData[i][ID] = i;
    	        HouseData[i][Created] = 1;
        	    HouseData[i][Owned] = 0;
				format(HouseData[i][Owner], MAX_PLAYER_NAME, "None");
				HouseData[i][Lights] = 0;
				HouseData[i][Locked] = 0;
            	HouseData[i][Price] = price;
            	HouseData[i][Cash] = 0;

				GetMapZoneName(GetMapZoneAtPoint(x, y, z), HouseData[i][Address]);
    	        HouseData[i][ExteriorX] = x;
    	        HouseData[i][ExteriorY] = y;
    	        HouseData[i][ExteriorZ] = z;
    	        HouseData[i][ExteriorA] = angle;
				HouseData[i][ExteriorInt] = GetPlayerInterior(playerid);
				HouseData[i][ExteriorWorld] = GetPlayerVirtualWorld(playerid);

				HouseData[i][IntID] = intid;
				HouseData[i][InteriorX] = arrHouseInteriors[intid][X];
				HouseData[i][InteriorY] = arrHouseInteriors[intid][Y];
				HouseData[i][InteriorZ] = arrHouseInteriors[intid][Z];
				HouseData[i][InteriorA] = arrHouseInteriors[intid][A];
				HouseData[i][InteriorInt] = arrHouseInteriors[intid][Int];
				HouseData[i][InteriorWorld] = i+1;

				House_Refresh(i);
				mysql_update(Database, "INSERT INTO `houses` (`ID`) VALUES (%d)", HouseData[i][ID]);
				House_SaveData(i);

				printf("House ID %d, DbID %d created.", i, HouseData[i][ID]);
				return i;
			}
		}
	}
	return -1;
}

House_Delete(hid) {
	if (hid != -1 && HouseData[hid][Created]) {
		printf("House ID %d, DbID %d deleted.", hid, HouseData[hid][ID]);
		mysql_update(Database, "DELETE FROM `houses` WHERE `ID` = '%d'", HouseData[hid][ID]);

		if (IsValidDynamicCP(HouseData[hid][IntCP]))
		    DestroyDynamicCP(HouseData[hid][IntCP]);

		if (IsValidDynamicCP(HouseData[hid][ExtCP]))
		    DestroyDynamicCP(HouseData[hid][ExtCP]);

		HouseData[hid][ID] = -1;
        HouseData[hid][Created] = 0;
        HouseData[hid][Owned] = 0;
        format(HouseData[hid][Owner], 25, "");
        HouseData[hid][Locked] = 0;
        HouseData[hid][Alarm] =  0;
        HouseData[hid][Level] =  0;
        HouseData[hid][Price] =  0;
        HouseData[hid][IntID] =  0;
        HouseData[hid][ExteriorX] = 0;
        HouseData[hid][ExteriorY] = 0;
        HouseData[hid][ExteriorZ] = 0;
        HouseData[hid][ExteriorA] = 0;
        HouseData[hid][ExteriorInt] = 0;
        HouseData[hid][ExteriorWorld] = 0;
        HouseData[hid][InteriorX] = 0;
        HouseData[hid][InteriorY] = 0;
        HouseData[hid][InteriorZ] = 0;
        HouseData[hid][InteriorA] = 0;
        HouseData[hid][InteriorInt] = 0;
        HouseData[hid][InteriorWorld] = 0;
        HouseData[hid][LockerX] = 0;
        HouseData[hid][LockerY] = 0;
        HouseData[hid][LockerZ] = 0;
        HouseData[hid][Cash] = 0;
        format(HouseData[hid][Item0], 64, "");
        format(HouseData[hid][Item1], 64, "");
        format(HouseData[hid][Item2], 64, "");
        format(HouseData[hid][Item3], 64, "");
        format(HouseData[hid][Item4], 64, "");
        format(HouseData[hid][Item5], 64, "");
        format(HouseData[hid][Item6], 64, "");
        format(HouseData[hid][Item7], 64, "");
        format(HouseData[hid][Item8], 64, "");
        format(HouseData[hid][Item9], 64, "");
        format(HouseData[hid][Address], MAX_MAP_ZONE_NAME, "");

	}
	return 1;
}

House_Refresh(hid) {
	if(hid != -1 && HouseData[hid][Created])
	{
		if (IsValidDynamicCP(HouseData[hid][IntCP]))
		    DestroyDynamicCP(HouseData[hid][IntCP]);

		if (IsValidDynamicCP(HouseData[hid][ExtCP]))
		    DestroyDynamicCP(HouseData[hid][ExtCP]);

		HouseData[hid][ExtCP] = CreateDynamicCP(HouseData[hid][ExteriorX], HouseData[hid][ExteriorY], HouseData[hid][ExteriorZ], HOUSE_CP_SIZE, HouseData[hid][ExteriorWorld], HouseData[hid][ExteriorInt], -1, HOUSE_CP_DISTANCE);
		HouseData[hid][IntCP] = CreateDynamicCP(HouseData[hid][InteriorX], HouseData[hid][InteriorY], HouseData[hid][InteriorZ], HOUSE_CP_SIZE, HouseData[hid][InteriorWorld], HouseData[hid][InteriorInt], -1);
	}
}
