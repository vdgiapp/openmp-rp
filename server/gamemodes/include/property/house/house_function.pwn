
House_LoadData() {
	for(new i = 0; i < MAX_HOUSES; i++) {
		static str[128]; format(str, sizeof str, "SELECT * FROM `houses` WHERE `ID` = '%d'", i);
		mysql_tquery(Database, str, "OnGetHouseData", "i", i);
	}
	return 1;
}

func OnGetHouseData(hid) {
    if(!cache_num_rows()) return 0;
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

    HouseData[hid][ExtPickup] = CreateDynamicPickup(19198, 1, HouseData[hid][ExteriorX], HouseData[hid][ExteriorY], HouseData[hid][ExteriorZ]+0.5, HouseData[hid][ExteriorWorld], HouseData[hid][ExteriorInt], -1, HOUSE_SHOW_DISTANCE);
    HouseData[hid][IntPickup] = CreateDynamicPickup(19198, 1, HouseData[hid][InteriorX], HouseData[hid][InteriorY], HouseData[hid][InteriorZ]+0.5, HouseData[hid][InteriorWorld], HouseData[hid][InteriorInt], -1, HOUSE_SHOW_DISTANCE);
	HouseData[hid][LockerPickup] = CreateDynamicPickup(1277, 1, HouseData[hid][LockerX], HouseData[hid][LockerY], HouseData[hid][LockerZ], HouseData[hid][InteriorWorld], HouseData[hid][InteriorInt]);

    if(!HouseData[hid][Created]) {
		if (IsValidDynamicPickup(HouseData[hid][IntPickup]))
		    DestroyDynamicPickup(HouseData[hid][IntPickup]);

		if (IsValidDynamicPickup(HouseData[hid][ExtPickup]))
		    DestroyDynamicPickup(HouseData[hid][ExtPickup]);

		if (IsValidDynamicPickup(HouseData[hid][LockerPickup]))
			DestroyDynamicPickup(HouseData[hid][LockerPickup]);
    }

    printf("House ID %d, DbID %d loaded.", hid, HouseData[hid][ID]);
    return 1;
}

House_SaveData(hid) {
	if(hid != -1 && hid < MAX_HOUSES) {
		mysql_update(Database, "UPDATE `houses` SET `Created` = '%d' WHERE `ID` = '%d'", HouseData[hid][Created], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Owned` = '%d' WHERE `ID` = '%d'", HouseData[hid][Owned], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Owner` = '%s' WHERE `ID` = '%d'", HouseData[hid][Owner], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Locked` = '%d' WHERE `ID` = '%d'", HouseData[hid][Locked], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Alarm` = '%d' WHERE `ID` = '%d'", HouseData[hid][Alarm], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Level` = '%d' WHERE `ID` = '%d'", HouseData[hid][Level], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Price` = '%d' WHERE `ID` = '%d'", HouseData[hid][Price], hid);
	    mysql_update(Database, "UPDATE `houses` SET `IntID` = '%d' WHERE `ID` = '%d'", HouseData[hid][IntID], hid);
	    mysql_update(Database, "UPDATE `houses` SET `ExteriorX` = '%f' WHERE `ID` = '%d'", HouseData[hid][ExteriorX], hid);
	    mysql_update(Database, "UPDATE `houses` SET `ExteriorY` = '%f' WHERE `ID` = '%d'", HouseData[hid][ExteriorY], hid);
	    mysql_update(Database, "UPDATE `houses` SET `ExteriorZ` = '%f' WHERE `ID` = '%d'", HouseData[hid][ExteriorZ], hid);
	    mysql_update(Database, "UPDATE `houses` SET `ExteriorA` = '%f' WHERE `ID` = '%d'", HouseData[hid][ExteriorA], hid);
	    mysql_update(Database, "UPDATE `houses` SET `ExteriorInt` = '%d' WHERE `ID` = '%d'", HouseData[hid][ExteriorInt], hid);
	    mysql_update(Database, "UPDATE `houses` SET `ExteriorWorld` = '%d' WHERE `ID` = '%d'", HouseData[hid][ExteriorWorld], hid);
	    mysql_update(Database, "UPDATE `houses` SET `InteriorX` = '%f' WHERE `ID` = '%d'", HouseData[hid][InteriorX], hid);
	    mysql_update(Database, "UPDATE `houses` SET `InteriorY` = '%f' WHERE `ID` = '%d'", HouseData[hid][InteriorY], hid);
	    mysql_update(Database, "UPDATE `houses` SET `InteriorZ` = '%f' WHERE `ID` = '%d'", HouseData[hid][InteriorZ], hid);
	    mysql_update(Database, "UPDATE `houses` SET `InteriorA` = '%f' WHERE `ID` = '%d'", HouseData[hid][InteriorA], hid);
	    mysql_update(Database, "UPDATE `houses` SET `InteriorInt` = '%d' WHERE `ID` = '%d'", HouseData[hid][InteriorInt], hid);
	    mysql_update(Database, "UPDATE `houses` SET `InteriorWorld` = '%d' WHERE `ID` = '%d'", HouseData[hid][InteriorWorld], hid);
	    mysql_update(Database, "UPDATE `houses` SET `LockerX` = '%f' WHERE `ID` = '%d'", HouseData[hid][LockerX], hid);
	    mysql_update(Database, "UPDATE `houses` SET `LockerY` = '%f' WHERE `ID` = '%d'", HouseData[hid][LockerY], hid);
	    mysql_update(Database, "UPDATE `houses` SET `LockerZ` = '%f' WHERE `ID` = '%d'", HouseData[hid][LockerZ], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Cash` = '%d' WHERE `ID` = '%d'", HouseData[hid][Cash], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Item0` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item0], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Item1` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item1], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Item2` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item2], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Item3` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item3], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Item4` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item4], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Item5` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item5], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Item6` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item6], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Item7` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item7], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Item8` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item8], hid);
	    mysql_update(Database, "UPDATE `houses` SET `Item9` = '%s' WHERE `ID` = '%d'", HouseData[hid][Item9], hid);

	    printf("House ID %d, DbID %d saved.", hid, HouseData[hid][ID]);
	}
}

House_IsPlayerOutside(playerid, hid, Float:range = 2.0) {
	return (HouseData[hid][Created] && IsPlayerInRangeOfPoint(playerid, range, HouseData[hid][ExteriorX], HouseData[hid][ExteriorY], HouseData[hid][ExteriorZ])
	&& GetPlayerVirtualWorld(playerid) == HouseData[hid][ExteriorWorld] && GetPlayerInterior(playerid) == HouseData[hid][ExteriorInt]);
}

House_IsPlayerInsideExt(playerid, hid, Float:range = 2.0) {
	return (HouseData[hid][Created] && IsPlayerInRangeOfPoint(playerid, range, HouseData[hid][InteriorX], HouseData[hid][InteriorY], HouseData[hid][InteriorZ])
	&& GetPlayerVirtualWorld(playerid) == HouseData[hid][InteriorWorld] && GetPlayerInterior(playerid) == HouseData[hid][InteriorInt]);
}

House_IsPlayerInside(playerid, hid, Float:range = 50.0) { return (HouseData[hid][Created] && IsPlayerInRangeOfPoint(playerid, range, HouseData[hid][InteriorX], HouseData[hid][InteriorY], HouseData[hid][InteriorZ]) && GetPlayerInterior(playerid) == HouseData[hid][InteriorInt] && GetPlayerVirtualWorld(playerid) == HouseData[hid][InteriorWorld]); }

House_Nearest(playerid) {
    for(new i = 0; i < MAX_HOUSES; i++) {
	    if(!HouseData[i][Created]) continue;
	    if(House_IsPlayerInsideExt(playerid, i)) return i;
		if(House_IsPlayerOutside(playerid, i)) return i;
	}
	return -1;
}

House_IsOwner(playerid, house) {
	if(!HouseData[house][Owned] || !HouseData[house][Created]) return false;
	if(isequal(HouseData[house][Owner], CharacterData[playerid][Name])) return true;
	return false;
}

House_Refresh(hid) {
	if(hid != -1 && HouseData[hid][Created])
	{
		if (IsValidDynamicPickup(HouseData[hid][IntPickup]))
		    DestroyDynamicPickup(HouseData[hid][IntPickup]);

		if (IsValidDynamicPickup(HouseData[hid][ExtPickup]))
		    DestroyDynamicPickup(HouseData[hid][ExtPickup]);

		if (IsValidDynamicPickup(HouseData[hid][LockerPickup]))
			DestroyDynamicPickup(HouseData[hid][LockerPickup]);

		HouseData[hid][ExtPickup] = CreateDynamicPickup(19198, 1, HouseData[hid][ExteriorX], HouseData[hid][ExteriorY], HouseData[hid][ExteriorZ]+0.5, HouseData[hid][ExteriorWorld], HouseData[hid][ExteriorInt], -1, HOUSE_SHOW_DISTANCE);
	   	HouseData[hid][IntPickup] = CreateDynamicPickup(19198, 1, HouseData[hid][InteriorX], HouseData[hid][InteriorY], HouseData[hid][InteriorZ]+0.5, HouseData[hid][InteriorWorld], HouseData[hid][InteriorInt], -1, HOUSE_SHOW_DISTANCE);
		HouseData[hid][LockerPickup] = CreateDynamicPickup(1277, 1, HouseData[hid][LockerX], HouseData[hid][LockerY], HouseData[hid][LockerZ], HouseData[hid][InteriorWorld], HouseData[hid][InteriorInt]);
	}
	if(!HouseData[hid][Created]) {
		if (IsValidDynamicPickup(HouseData[hid][IntPickup]))
		    DestroyDynamicPickup(HouseData[hid][IntPickup]);

		if (IsValidDynamicPickup(HouseData[hid][ExtPickup]))
		    DestroyDynamicPickup(HouseData[hid][ExtPickup]);

		if (IsValidDynamicPickup(HouseData[hid][LockerPickup]))
			DestroyDynamicPickup(HouseData[hid][LockerPickup]);
	}
}
