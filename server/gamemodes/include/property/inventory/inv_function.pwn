
GivePlayerItem(playerid, itemid, amount, Float:durable, gunammo = 0, magammo = 0) {
    for(new i; i < MAX_INV_ITEMS; i++) {
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
            if(magammo <= GetMagazineSize(InventoryData[playerid][i][ItemID])) InventoryData[playerid][i][MagAmmo] = magammo;
        }
    }
    SortPlayerInventory(playerid);
}

TakePlayerItem(playerid, itemid, amount, Float:durable, gunammo = 0, magammo = 0) {
    for(new i; i < MAX_INV_ITEMS; i++) {
        if(!InventoryData[playerid][i][ItemID]) {
            if(InventoryData[playerid][i][ItemID] == itemid
            && InventoryData[playerid][i][Amount] >= amount
            && InventoryData[playerid][i][Durable] >= durable
            && InventoryData[playerid][i][GunAmmo] >= gunammo
            && InventoryData[playerid][i][MagAmmo] >= magammo)
            {
                InventoryData[playerid][i][Amount] -= amount;
                InventoryData[playerid][i][Durable] -= durable;
                InventoryData[playerid][i][GunAmmo] -= gunammo;
                InventoryData[playerid][i][MagAmmo] -= magammo;
                if(!InventoryData[playerid][i][Amount]) {
                    InventoryData[playerid][i][ItemID] = 0;
                    InventoryData[playerid][i][Durable] = 0;
                    InventoryData[playerid][i][GunAmmo] = 0;
                    InventoryData[playerid][i][MagAmmo] = 0;
                }
            }
        }
    }
    SortPlayerInventory(playerid);
}

SortPlayerInventory(playerid) {
    for(new i; i < MAX_INV_ITEMS; i++) {
        for(new u; u < MAX_INV_ITEMS; u++) {
            if(InventoryData[playerid][i][ItemID]) {
                if(InventoryData[playerid][i][Durable] != InventoryData[playerid][u][Durable]) continue;
                if(IsGunItem(InventoryData[playerid][i][ItemID]) || IsGunItem(InventoryData[playerid][u][ItemID])) continue;
                if(InventoryData[playerid][i][MagAmmo] != InventoryData[playerid][u][MagAmmo]) continue;
                InventoryData[playerid][i][Amount] += InventoryData[playerid][u][Amount];
            }
            if(!InventoryData[playerid][i][ItemID] && InventoryData[playerid][u][ItemID]) {
                SwapInt(InventoryData[playerid][u][ItemID], InventoryData[playerid][i][ItemID]);
                SwapInt(InventoryData[playerid][u][Amount], InventoryData[playerid][i][Amount]);
                SwapInt(InventoryData[playerid][u][Durable], InventoryData[playerid][i][Durable]);
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
