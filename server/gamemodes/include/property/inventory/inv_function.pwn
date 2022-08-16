
hook function ResetPlayerVars(playerid) {
	for(new i = 0; i < MAX_INV_ITEMS; i++) {
        InventoryData[playerid][i][ItemID] = 0;
        InventoryData[playerid][i][Amount] = 0;
        InventoryData[playerid][i][Durable] = 0;
        InventoryData[playerid][i][IsEquipped] = 0;
		InventoryData[playerid][i][MagType] = 0;
		InventoryData[playerid][i][MagAmmo] = 0;
    }
	continue(playerid);
}

LoadInventoryData(playerid) {
    // function: LoadCharacterData
    for(new i = 0; i < MAX_INV_ITEMS; i++) {
        static str[64];
		format(str, sizeof str, "Item%d", i);
		sscanf(cache_value_string(0, str), "ddfddd", InventoryData[playerid][i][ItemID], InventoryData[playerid][i][Amount],
		InventoryData[playerid][i][Durable], InventoryData[playerid][i][IsEquipped], InventoryData[playerid][i][MagType], InventoryData[playerid][i][MagAmmo]);
	}
    return 1;
}

SaveInventoryData(playerid) {
	static str[1024], weapondata[13][2];
	for(new i = 0; i < MAX_INV_ITEMS; i++) {
		if(IsWeaponItem(InventoryData[playerid][i][ItemID]) && InventoryData[playerid][i][IsEquipped]) {
			for(new u; u < 13; u++) {
				GetPlayerWeaponData(playerid, u, weapondata[u][0], weapondata[u][1]);
				if(GetWeaponSlot(InventoryData[playerid][i][ItemID]) == u) {
					mysql_format(Database, str, sizeof str, "UPDATE `characters` SET `Item%d` = '%d %d %f 0 %d %d' WHERE `Name` = '%s' AND `Slot` = '%d'", i,
					InventoryData[playerid][i][ItemID], InventoryData[playerid][i][Amount], InventoryData[playerid][i][Durable],
					InventoryData[playerid][i][MagType], weapondata[u][1], CharacterData[playerid][Name], AuthData[playerid][Selected]);
					mysql_tquery(Database, str);
				}
			}
		}
		else {
			mysql_format(Database, str, sizeof str, "UPDATE `characters` SET `Item%d` = '%d %d %f %d %d %d' WHERE `Name` = '%s' AND `Slot` = '%d'", i,
			InventoryData[playerid][i][ItemID], InventoryData[playerid][i][Amount], InventoryData[playerid][i][Durable],
			InventoryData[playerid][i][IsEquipped], InventoryData[playerid][i][MagType], InventoryData[playerid][i][MagAmmo], CharacterData[playerid][Name], AuthData[playerid][Selected]);
			mysql_tquery(Database, str);
		}
	}
}

GivePlayerItem(playerid, itemid, amount, Float:durable, magtype = 0, magammo = 0) {
    for(new i = 0; i < MAX_INV_ITEMS; i++) {
        if(InventoryData[playerid][i][ItemID]) {
            if(InventoryData[playerid][i][Durable] != 100) continue;
            if(IsWeaponItem(InventoryData[playerid][i][ItemID])) continue;
            if(InventoryData[playerid][i][MagAmmo] != magammo) continue;
            InventoryData[playerid][i][Amount] += amount;
        }
        if(!InventoryData[playerid][i][ItemID]) {
            InventoryData[playerid][i][ItemID] = itemid;
            InventoryData[playerid][i][Amount] = amount;
            InventoryData[playerid][i][Durable] = durable;
            if(IsWeaponItem(itemid) && magammo) {
                InventoryData[playerid][i][MagAmmo] = magammo;
                InventoryData[playerid][i][MagType] = magtype;
            }
            if(IsMagazineItem(itemid) && magammo) {
                if(magammo <= GetMagazineSize(InventoryData[playerid][i][ItemID])) InventoryData[playerid][i][MagAmmo] = magammo;
                if(magammo > GetMagazineSize(InventoryData[playerid][i][ItemID])) InventoryData[playerid][i][MagAmmo] = GetMagazineSize(itemid);
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
			if(IsWeaponItem(itemid) && InventoryData[playerid][i][IsEquipped]) RemovePlayerWeapon(playerid, itemid);
            if(InventoryData[playerid][i][Amount] <= 0) {
                InventoryData[playerid][i][ItemID] = 0;
                InventoryData[playerid][i][Amount] = 0;
                InventoryData[playerid][i][Durable] = 0;
				InventoryData[playerid][i][IsEquipped] = 0;
				InventoryData[playerid][i][MagType] = 0;
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
                if(IsWeaponItem(InventoryData[playerid][i][ItemID]) || IsWeaponItem(InventoryData[playerid][u][ItemID])) continue;
                if(InventoryData[playerid][i][MagAmmo] != InventoryData[playerid][u][MagAmmo]) continue;
                InventoryData[playerid][i][Amount] += InventoryData[playerid][u][Amount];
            }
            if(!InventoryData[playerid][i][ItemID] && InventoryData[playerid][u][ItemID]) {
                SwapInt(InventoryData[playerid][u][ItemID], InventoryData[playerid][i][ItemID]);
                SwapInt(InventoryData[playerid][u][Amount], InventoryData[playerid][i][Amount]);
                SwapFloat(InventoryData[playerid][u][Durable], InventoryData[playerid][i][Durable]);
				SwapInt(InventoryData[playerid][u][IsEquipped], InventoryData[playerid][i][IsEquipped]);
				SwapInt(InventoryData[playerid][u][MagType], InventoryData[playerid][i][MagType]);
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

IsWeaponItem(itemid) {
    switch(itemid) {
        case 1..34: return true;
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

OnPlayerUseItem(playerid, sel, amount) {
    static itemid;
    itemid = InventoryData[playerid][sel][ItemID];
    if(!itemid) return 0;
    if(!amount) return 0;
    if(IsWeaponItem(itemid)) {
        if(InventoryData[playerid][sel][IsEquipped]) {
			SetPlayerArmedWeapon(playerid, itemid);
			InventoryData[playerid][sel][IsEquipped] = 0;
			InventoryData[playerid][sel][MagAmmo] = GetPlayerAmmo(playerid);
			RemovePlayerWeapon(playerid, itemid);
			return 1;
		}
		else {
			static weapondata[13][2];
			for(new i = 0; i < MAX_INV_ITEMS; i++) {
				for(new u = 0; u < 13; u++) {
					GetPlayerWeaponData(playerid, u, weapondata[u][0], weapondata[u][1]);
					if(GetWeaponSlot(InventoryData[playerid][i][ItemID]) == GetWeaponSlot(itemid) && GetWeaponSlot(itemid) == u
					&& GetWeaponSlot(InventoryData[playerid][i][ItemID]) == u && InventoryData[playerid][i][IsEquipped]) {
						InventoryData[playerid][i][IsEquipped] = 0;
						InventoryData[playerid][i][MagAmmo] = weapondata[u][1];
						RemovePlayerWeapon(playerid, InventoryData[playerid][i][ItemID]);

						InventoryData[playerid][sel][IsEquipped] = 1;
						GivePlayerWeapon(playerid, itemid, InventoryData[playerid][sel][MagAmmo]);
						return 1;
					}
				}
			}
			InventoryData[playerid][sel][IsEquipped] = 1;
			GivePlayerWeapon(playerid, itemid, InventoryData[playerid][sel][MagAmmo]);
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

OnPlayerViewItemInfo(playerid, sel) {

}

OnPlayerGiveItem(playerid, sel, targetid) {

}

OnPlayerDestroyItem(playerid, sel, amount) {

}
