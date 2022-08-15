
hook function ResetPlayerVars(playerid) {
	for(new i = 0; i < MAX_INV_ITEMS; i++) {
        InventoryData[playerid][i][ItemID] = 0;
        InventoryData[playerid][i][Amount] = 0;
        InventoryData[playerid][i][Durable] = 0;
        InventoryData[playerid][i][IsEquipped] = 0;
		InventoryData[playerid][i][MagAmmo] = 0;
    }
	continue(playerid);
}

LoadInventoryData(playerid) {
    // function: LoadCharacterData
    for(new i = 0; i < MAX_INV_ITEMS; i++) {
        static str[64];
		format(str, sizeof str, "Item%d", i);
		sscanf(cache_value_string(0, str), "ddfdd", InventoryData[playerid][i][ItemID], InventoryData[playerid][i][Amount],
		InventoryData[playerid][i][Durable], InventoryData[playerid][i][IsEquipped], InventoryData[playerid][i][MagAmmo]);
	}
    return 1;
}

GivePlayerItem(playerid, itemid, amount, Float:durable, gunammo = 0, magtype = 0, magammo = 0) {
    for(new i = 0; i < MAX_INV_ITEMS; i++) {
        if(InventoryData[playerid][i][ItemID]) {
            if(InventoryData[playerid][i][Durable] != 100) continue;
            if(IsGunItem(InventoryData[playerid][i][ItemID])) continue;
            if(InventoryData[playerid][i][MagAmmo] != magammo) continue;
            InventoryData[playerid][i][Amount] += amount;
        }
        if(!InventoryData[playerid][i][ItemID]) {
            InventoryData[playerid][i][ItemID] = itemid;
            InventoryData[playerid][i][Amount] = amount;
            InventoryData[playerid][i][Durable] = durable;
            if(InventoryData[playerid][i][GunAmmo]) {
                InventoryData[playerid][i][GunAmmo] = gunammo;
                InventoryData[playerid][i][MagType] = magtype;
            }
            if(magammo) {
                if(magammo <= GetMagazineSize(InventoryData[playerid][i][ItemID])) InventoryData[playerid][i][MagAmmo] = magammo;
                if(magammo > GetMagazineSize(InventoryData[playerid][i][ItemID])) InventoryData[playerid][i][MagAmmo] = GetMagazineSize(InventoryData[playerid][i][ItemID]);
            }
            return 1;
        }
    }
    return -1;
}

TakePlayerItem(playerid, itemid, amount) {
    for(new i = 0; i < MAX_INV_ITEMS; i++) {
        if(InventoryData[playerid][i][ItemID] == itemid && InventoryData[playerid][i][Amount] >= amount) {
            InventoryData[playerid][i][Amount] -= amount;
            if(InventoryData[playerid][i][Amount] <= 0) {
                InventoryData[playerid][i][ItemID] = 0;
                InventoryData[playerid][i][Amount] = 0;
                InventoryData[playerid][i][Durable] = 0;
				InventoryData[playerid][i][IsEquipped] = 0;
                InventoryData[playerid][i][MagAmmo] = 0;
            }
            return 1;
        }
    }
    return 0;
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
				SwapInt(InventoryData[playerid][u][IsEquipped], InventoryData[playerid][i][IsEquipped]);
                SwapInt(InventoryData[playerid][u][MagAmmo], InventoryData[playerid][i][MagAmmo]);
            }
        }
    }
}

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
        case 47..72: return true;
        default: return false;
    }
}

GetMagazineSize(itemid) {
    switch(itemid) {
        case 69..72: return 6;
        case 47, 53..55: return 7;
        case 49..52: return 7;
        case 48: return 17;
        case 58, 60, 62, 64: return 20;
        case 56: return 25;
        case 61, 63, 65, 66: return 30;
        case 67: return 32;
        case 59: return 40;
        case 57, 68: return 50;
        default: return 0;
    }
}

IsPlayerHaveGPS(playerid) { return IsPlayerHaveItem(playerid, 20); }
IsPlayerHaveWatch(playerid) { return IsPlayerHaveItem(playerid, 21); }

OnPlayerUseItem(playerid, itemid, amount) {
    static sel;
    sel = InvSelectedItem[playerid];
    if(!itemid) return 0;
    if(!amount) return 0;
    if(IsGunItem(itemid)) {
        if(InventoryData[playerid][sel][IsEquipped]) {
			
		}
    }
    if(IsMagazineItem(itemid)) {

        /*
        if(itemid == 47 || itemid == 48) {
            static magammo; magammo = InventoryData[playerid][sel][MagAmmo];
            if(weapons[i][1] + magammo <= GetMagazineSize(itemid)) {
                SetPlayerAmmo(playerid, weapons[i][0], GetMagazineSize(itemid));
                InventoryData[playerid][sel][MagAmmo] = 0;
        }
        if(weapons[i][1] + magammo > GetMagazineSize(itemid)) {
            if(weapons[i][1] >= GetMagazineSize(itemid)) return ErrorMsg(playerid, "Bang dan cua khau sung da day (%d vien)", GetMagazineSize(itemid));
            else {
                SetPlayerAmmo(playerid, weapons[i][0], GetMagazineSize(itemid));
                InventoryData[playerid][sel][MagAmmo] -= (GetMagazineSize(itemid)-weapons[i][1]);
            }
        }
        if(InventoryData[playerid][sel][MagAmmo] <= 0) InventoryData[playerid][sel][MagAmmo] = 0;
        */
    }
    return 1;
}
