
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
        if(InventoryData[playerid][i][ItemID] == itemid) {
            if(InventoryData[playerid][i][Durable] != 100) continue;
            if(IsWeaponItem(itemid)) continue;
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
				if(InventoryData[playerid][i][ItemID] != InventoryData[playerid][u][ItemID]) continue;
                if(InventoryData[playerid][i][Durable] != InventoryData[playerid][u][Durable]) continue;
                if(IsWeaponItem(InventoryData[playerid][i][ItemID]) || IsWeaponItem(InventoryData[playerid][u][ItemID])) continue;
				//if(IsMagazineItem(InventoryData[playerid][i][ItemID]) || IsMagazineItem(InventoryData[playerid][u][ItemID])) continue;
                if(InventoryData[playerid][i][MagAmmo] != InventoryData[playerid][u][MagAmmo]) continue;
                InventoryData[playerid][i][Amount] += InventoryData[playerid][u][Amount];
				InventoryData[playerid][u][ItemID] = 0;
				InventoryData[playerid][u][Amount] = 0;
				InventoryData[playerid][u][IsEquipped] = 0;
				InventoryData[playerid][u][MagType] = 0;
				InventoryData[playerid][u][MagAmmo] = 0;
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
		if(InventoryData[playerid][i][Amount] <= 0) InventoryData[playerid][i][ItemID] = 0, InventoryData[playerid][i][Amount] = 0;
		if(IsWeaponItem(InventoryData[playerid][i][ItemID])) {
			if(!InventoryData[playerid][i][IsEquipped] && (InventoryData[playerid][i][MagAmmo] <= 0 || InventoryData[playerid][i][MagType] <= 0)) InventoryData[playerid][i][MagAmmo] = 0, InventoryData[playerid][i][MagType] = 0;
			if(InventoryData[playerid][i][IsEquipped]) {
				static weapondata[13][2];
				for(new u = 0; u < 13; u++) {
					GetPlayerWeaponData(playerid, u, weapondata[u][0], weapondata[u][1]);
					if(GetWeaponSlot(InventoryData[playerid][i][ItemID]) == u) {
						if(weapondata[u][0] <= 0 || weapondata[u][1] <= 0) {
							 InventoryData[playerid][i][MagAmmo] = 0;
							 InventoryData[playerid][i][MagType] = 0;
						}
					}
				}
			}
		}
		if(IsMagazineItem(InventoryData[playerid][i][ItemID])) {
			if(InventoryData[playerid][i][MagAmmo] <= 0) {
				InventoryData[playerid][i][ItemID] = 0;
                InventoryData[playerid][i][Amount] = 0;
                InventoryData[playerid][i][Durable] = 0;
				InventoryData[playerid][i][IsEquipped] = 0;
				InventoryData[playerid][i][MagType] = 0;
                InventoryData[playerid][i][MagAmmo] = 0;
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

IsFoodItem(itemid) {
	switch(itemid) {
		case 76..85: return true;
		default: return false;
	}
}

IsDrinkItem(itemid) {
	switch(itemid) {
		case 86..95: return true;
		default: return false;
	}
}

IsFoodDrinkItem(itemid) {
	switch(itemid) {
		case 76..95: return true;
		default: return false;
	}
}

GetRecoverFromItem(itemid, &Float:hunger, &Float:thirst) {
	hunger = 0;
	thirst = 0;
	switch(itemid) {
		case 76: hunger = 2.5, thirst = 1.5;
		case 77: hunger = 1.5, thirst = 2.5;
		case 78: hunger = 5, thirst = 2;
		case 79: hunger = 10, thirst = 1;
		case 80: hunger = 15;
		case 81: hunger = 7.5;
		case 82: hunger = 10;
		case 83: hunger = 17.5;
		case 84: hunger = 20;
		case 85: hunger = 12.5;
		case 86: thirst = 20;
		case 87: thirst = 15;
		case 88: hunger = 5, thirst = 7.5;
		case 89: thirst = 10;
		case 90: thirst = 7.5;
		case 91: thirst = 12.5;
		case 92: hunger = 7.5, thirst = 5;
		case 93: hunger = -1.5, thirst = 2.5;
		case 94: hunger = -1, thirst = 3;
		case 95: hunger = -2, thirst = 4;
		default: return 0;
	}
}

IsWeaponUseMag(wid, magid) {
	if((22 <= wid <= 23) && (47 <= magid <= 48 || magid == 0)) return true;
	if((wid == 24) && (49 <= magid <= 52 || magid == 0)) return true;
	if((25 <= wid <= 27) && (53 <= magid <= 55 || magid == 0)) return true;
	if((wid == 28) && (56 <= magid <= 59 || magid == 0)) return true;
	if((wid == 29) && (60 <= magid <= 63 || magid == 0)) return true;
	if((wid == 30) && (64 <= magid <= 65 || magid == 0)) return true;
	if((wid == 31) && (magid == 66)) return true;
	if((wid == 32) && (67 <= magid <= 68 || magid == 0)) return true;
	if((wid == 33) && (69 <= magid <= 70 || magid == 0)) return true;
	if((wid == 34) && (71 <= magid <= 72 || magid == 0)) return true;
	return false;
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

IsEatingOrDrinking(playerid) { return (536 <= GetPlayerAnimationIndex(playerid) <= 538 || 15 <= GetPlayerAnimationIndex(playerid) <= 16); }

IsPlayerHaveGPS(playerid) { return IsPlayerHaveItem(playerid, 20); }
IsPlayerHaveWatch(playerid) { return IsPlayerHaveItem(playerid, 21); }

OnPlayerUseItem(playerid, sel, amount) {
    static itemid, weapondata[13][2];
    itemid = InventoryData[playerid][sel][ItemID];
    if(!itemid) return 0;
    if(!amount) return 0;

    if(IsWeaponItem(itemid)) {
        if(InventoryData[playerid][sel][IsEquipped]) {
			for(new u = 0; u < 13; u++) {
				GetPlayerWeaponData(playerid, u, weapondata[u][0], weapondata[u][1]);
				if(GetWeaponSlot(itemid) == u) {
					InventoryData[playerid][sel][IsEquipped] = 0;
					InventoryData[playerid][sel][MagAmmo] = weapondata[u][1];
					RemovePlayerWeapon(playerid, itemid);
					SetPlayerAmmo(playerid, itemid, 0);
				}
			}
			return 1;
		}
		else {
			for(new i = 0; i < MAX_INV_ITEMS; i++) {
				for(new u = 0; u < 13; u++) {
					// error
					GetPlayerWeaponData(playerid, u, weapondata[u][0], weapondata[u][1]);
					if(GetWeaponSlot(InventoryData[playerid][i][ItemID]) == GetWeaponSlot(itemid) && GetWeaponSlot(itemid) == u
					&& GetWeaponSlot(InventoryData[playerid][i][ItemID]) == u && InventoryData[playerid][i][IsEquipped]) {
						if(weapondata[u][0] || InventoryData[playerid][i][ItemID] == itemid) return ErrorMsg(playerid, "Hay go trang bi cua vu khi %s truoc.", InvItemName[InventoryData[playerid][i][ItemID]]);

						InventoryData[playerid][i][IsEquipped] = 0;
						InventoryData[playerid][i][MagAmmo] = weapondata[u][1];
						RemovePlayerWeapon(playerid, InventoryData[playerid][i][ItemID]);

						InventoryData[playerid][sel][IsEquipped] = 1;
						GivePlayerWeapon(playerid, itemid, InventoryData[playerid][sel][MagAmmo]);
						SetPlayerAmmo(playerid, itemid, InventoryData[playerid][sel][MagAmmo]);
						return 1;
					}
				}
			}
			InventoryData[playerid][sel][IsEquipped] = 1;
			GivePlayerWeapon(playerid, itemid, InventoryData[playerid][sel][MagAmmo]);
			SetPlayerAmmo(playerid, itemid, InventoryData[playerid][sel][MagAmmo]);
			return 1;
		}
    }

    if(IsMagazineItem(itemid)) {
		if(!InventoryData[playerid][sel][MagAmmo]) return ErrorMsg(playerid, "So dan trong bang dan %s da het.", InvItemName[itemid]);
		for(new i = 0; i < MAX_INV_ITEMS; i++) {
			if((InventoryData[playerid][i][MagType] == itemid
			|| InventoryData[playerid][i][MagType] == 0)
			&& InventoryData[playerid][i][IsEquipped]
			&& IsWeaponItem(InventoryData[playerid][i][ItemID])) {
				for(new u = 0; u < 13; u++) {
					GetPlayerWeaponData(playerid, u, weapondata[u][0], weapondata[u][1]);
					if(IsWeaponUseMag(InventoryData[playerid][i][ItemID], InventoryData[playerid][i][MagType]) && GetWeaponSlot(InventoryData[playerid][i][ItemID]) == u) {
						if(weapondata[u][1] + InventoryData[playerid][sel][MagAmmo] <= GetMagazineSize(itemid)) {
							// work
							if(InventoryData[playerid][sel][Amount] > 1) {
								GivePlayerWeapon(playerid, InventoryData[playerid][i][ItemID], weapondata[u][1] + InventoryData[playerid][sel][MagAmmo]);
								SetPlayerAmmo(playerid, InventoryData[playerid][i][ItemID], weapondata[u][1] + InventoryData[playerid][sel][MagAmmo]);
								InventoryData[playerid][i][MagType] = itemid;
								InventoryData[playerid][sel][Amount]--;
								return 1;
							}
							else {
								GivePlayerWeapon(playerid, InventoryData[playerid][i][ItemID], weapondata[u][1] + InventoryData[playerid][sel][MagAmmo]);
								SetPlayerAmmo(playerid, InventoryData[playerid][i][ItemID], weapondata[u][1] + InventoryData[playerid][sel][MagAmmo]);
								InventoryData[playerid][i][MagType] = itemid;
								InventoryData[playerid][sel][MagAmmo] = 0;
								return 1;
							}
						}
						else {
							if(weapondata[u][1] >= GetMagazineSize(itemid)) return ErrorMsg(playerid, "Bang dan cua khau sung %s da day (%d vien)", InvItemName[InventoryData[playerid][i][ItemID]], GetMagazineSize(itemid));
				            else {
								if(InventoryData[playerid][sel][Amount] > 1) {
									// work
									GivePlayerWeapon(playerid, InventoryData[playerid][i][ItemID], GetMagazineSize(itemid));
									SetPlayerAmmo(playerid, InventoryData[playerid][i][ItemID], GetMagazineSize(itemid));
									InventoryData[playerid][sel][Amount]--;
									InventoryData[playerid][i][MagType] = itemid;
									GivePlayerItem(playerid, itemid, 1, 100, 0, InventoryData[playerid][sel][MagAmmo]-(GetMagazineSize(itemid)-weapondata[u][1]));
									return 1;
								}
								else {
									// work
				                	GivePlayerWeapon(playerid, InventoryData[playerid][i][ItemID], GetMagazineSize(itemid));
									SetPlayerAmmo(playerid, InventoryData[playerid][i][ItemID], GetMagazineSize(itemid));
									InventoryData[playerid][i][MagType] = itemid;
				                	InventoryData[playerid][sel][MagAmmo] -= (GetMagazineSize(itemid)-weapondata[u][1]);
									if(InventoryData[playerid][sel][MagAmmo] <= 0) InventoryData[playerid][sel][MagType] = 0, InventoryData[playerid][sel][MagAmmo] = 0;
									return 1;
								}
				            }
						}
					}
				}
			}
		}
	}

	if(IsFoodDrinkItem(itemid)) {
		if(IsEatingOrDrinking(playerid)) return ErrorMsg(playerid, "Vui long doi mot luc truoc thuc hien lai hanh dong nay.");
		InventoryData[playerid][sel][Amount]--;
		if(IsFoodItem(itemid)) {
			switch(random(2)) {
				case 0: ApplyAnimation(playerid, "FOOD", "EAT_Burger", 4.1, 0, 0, 0, 0, 0, 1);
			    case 1: ApplyAnimation(playerid, "FOOD", "EAT_Chicken", 4.1, 0, 0, 0, 0, 0, 1);
			    case 2: ApplyAnimation(playerid, "FOOD", "EAT_Pizza", 4.1, 0, 0, 0, 0, 0, 1);
			}
		}
		if(IsDrinkItem(itemid)) {
			switch(CharacterData[playerid][Gender]) {
				case 1: ApplyAnimation(playerid, "Bar", "dnk_stndM_loop", 4.1, 0, 0, 0, 0, 0, 1);
				case 2: ApplyAnimation(playerid, "Bar", "dnk_stndF_loop", 4.1, 0, 0, 0, 0, 0, 1);
			}
		}
		static Float:hunger, Float:thirst;
		GetRecoverFromItem(itemid, hunger, thirst);
		CharacterData[playerid][Hunger] += hunger;
		CharacterData[playerid][Thirst] += thirst;
		if(CharacterData[playerid][Hunger] >= MAX_PLAYER_HUNGER) CharacterData[playerid][Hunger] = MAX_PLAYER_HUNGER;
		if(CharacterData[playerid][Thirst] >= MAX_PLAYER_THIRST) CharacterData[playerid][Thirst] = MAX_PLAYER_THIRST;
	}

    return 1;
}

OnPlayerViewItemInfo(playerid, sel) {
	
}

OnPlayerGiveItem(playerid, sel, targetid) {

}

OnPlayerDestroyItem(playerid, sel, amount) {

}
