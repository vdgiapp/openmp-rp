
LoadInventoryData(playerid) {
    for(new i = 0; i < MAX_INV_ITEMS; i++) {
		static str[128]; format(str, sizeof str, "SELECT * FROM `inventory` WHERE `CharName` = '%s' AND `ItemSlot` = '%d'", CharacterData[playerid][Name], i);
		mysql_tquery(Database, str, "OnGetInventoryData", "ii", playerid, i);
	}
    return 1;
}

function OnGetInventoryData(playerid, slot) {
    if(!cache_num_rows()) return 0;
    InventoryData[playerid][slot][ItemID] = cache_value_int(0, "ItemID");
	InventoryData[playerid][slot][Amount] = cache_value_int(0, "Amount");
    InventoryData[playerid][slot][Durable] = cache_value_float(0, "Durable");
    InventoryData[playerid][slot][GunAmmo] = cache_value_int(0, "GunAmmo");
    InventoryData[playerid][slot][MagAmmo] = cache_value_int(0, "MagAmmo");
}

GivePlayerItem(playerid, itemid, amount, Float:durable, gunammo = 0, magammo = 0) {
    for(new i = 0; i < MAX_INV_ITEMS; i++) {
        if(InventoryData[playerid][i][ItemID]) {
            if(InventoryData[playerid][i][Durable] != 100) continue;
            if(IsGunItem(InventoryData[playerid][i][ItemID])) continue;
            if(InventoryData[playerid][i][MagAmmo] != GetMagazineSize(InventoryData[playerid][i][ItemID])) continue;
            InventoryData[playerid][i][Amount] += amount;
        }
        if(!InventoryData[playerid][i][ItemID]) {
            InventoryData[playerid][i][ItemID] = itemid;
            InventoryData[playerid][i][Amount] = amount;
            InventoryData[playerid][i][Durable] = durable;
            if(InventoryData[playerid][i][GunAmmo]) InventoryData[playerid][i][GunAmmo] = gunammo;
            if(magammo != 0 && magammo <= GetMagazineSize(InventoryData[playerid][i][ItemID])) InventoryData[playerid][i][MagAmmo] = magammo;
            return 0;
        }
    }
}

TakePlayerItem(playerid, itemid, amount, Float:durable, magammo = 0) {
    for(new i = 0; i < MAX_INV_ITEMS; i++) {
        if(InventoryData[playerid][i][ItemID] == itemid
        && InventoryData[playerid][i][Amount] >= amount
        && InventoryData[playerid][i][Durable] >= durable
        && InventoryData[playerid][i][GunAmmo] >= gunammo
        && InventoryData[playerid][i][MagAmmo] >= magammo)
        {
            GivePlayerItem(playerid, itemid, -amount, durable, 0, -InventoryData[playerid][i][MagAmmo]);
            if(!InventoryData[playerid][i][Amount]) {
                InventoryData[playerid][i][ItemID] = 0;
                InventoryData[playerid][i][Durable] = 0;
                InventoryData[playerid][i][GunAmmo] = 0;
                InventoryData[playerid][i][MagAmmo] = 0;
            }
            return 0;
        }
    }
}

SortPlayerInventory(playerid) {
    for(new i = 0; i < MAX_INV_ITEMS; i++) {
        for(new u = i+1; u < MAX_INV_ITEMS; u++) {
            if(InventoryData[playerid][i][ItemID]) {
                if(InventoryData[playerid][i][Durable] != InventoryData[playerid][u][Durable]) continue;
                if(IsGunItem(InventoryData[playerid][i][ItemID]) || IsGunItem(InventoryData[playerid][u][ItemID])) continue;
                if(InventoryData[playerid][i][MagAmmo] != InventoryData[playerid][u][MagAmmo]) continue;
                InventoryData[playerid][i][Amount] += InventoryData[playerid][u][Amount];
            }
            if(!InventoryData[playerid][i][ItemID] && InventoryData[playerid][u][ItemID]) {
                SwapInt(InventoryData[playerid][u][ItemID], InventoryData[playerid][i][ItemID]);
                SwapInt(InventoryData[playerid][u][Amount], InventoryData[playerid][i][Amount]);
                SwapFloat(InventoryData[playerid][u][Durable], InventoryData[playerid][i][Durable]);
                SwapInt(InventoryData[playerid][u][GunAmmo], InventoryData[playerid][i][GunAmmo]);
                SwapInt(InventoryData[playerid][u][MagAmmo], InventoryData[playerid][i][MagAmmo]);
            }
        }
    }
}

GetItemName(itemid) { return InvItemName[itemid]; }

IsPlayerHaveItem(playerid, itemid) {
    for(new i; i < MAX_INV_ITEMS; i++) {
        if(!InventoryData[playerid][i][ItemID]) continue;
        if(InventoryData[playerid][i][ItemID] == itemid)
        return true;
    }
    return false;
}

IsGunItem(itemid) {
    switch(itemid) {
        case 22..34: return true;
        default: return false;
    }
}

IsMagazineItem(itemid) {
    switch(itemid) {
        case 47..70: return true;
        default: return false;
    }
}

GetMagazineSize(itemid) {
    switch(itemid) {
        case 67..70: return 6;
        case 47, 53: return 7;
        case 49..52: return 7;
        case 48: return 17;
        case 56, 58, 60, 62: return 20;
        case 54: return 25;
        case 59, 61, 63, 64: return 30;
        case 65: return 32;
        case 57: return 40;
        case 55, 66: return 50;
        default: return 0;
    }
}

IsPlayerHaveGPS(playerid) { return IsPlayerHaveItem(playerid, 20); }
IsPlayerHaveWatch(playerid) { return IsPlayerHaveItem(playerid, 21); }
