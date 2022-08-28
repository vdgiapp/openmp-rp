
hook function ResetPlayerVars(playerid) {
	for(new i = 0; i < MAX_INV_ITEMS; i++) {
        InventoryData[playerid][i][ItemID] = 0;
        InventoryData[playerid][i][Amount] = 0;
        InventoryData[playerid][i][Durable] = 0;
        InventoryData[playerid][i][IsEquipped] = 0;
		InventoryData[playerid][i][MagType] = 0;
		InventoryData[playerid][i][MagAmmo] = 0;
		InventoryData[playerid][i][ExData] = -1;
    }
	continue(playerid);
}

Inventory_LoadData(playerid) {
    // function: LoadCharacterData
    for(new i = 0; i < MAX_INV_ITEMS; i++) {
        static str[64];
		format(str, sizeof str, "Item%d", i);
		sscanf(cache_value_string(0, str), "ddfdddd", InventoryData[playerid][i][ItemID], InventoryData[playerid][i][Amount],
		InventoryData[playerid][i][Durable], InventoryData[playerid][i][IsEquipped], InventoryData[playerid][i][MagType],
		InventoryData[playerid][i][MagAmmo], InventoryData[playerid][i][ExData]);
	}
    return 1;
}

Inventory_SaveData(playerid) {
	static str[1024], weapondata[13][2];
	for(new i = 0; i < MAX_INV_ITEMS; i++) {
		if(Inventory_IsWeapon(InventoryData[playerid][i][ItemID]) && InventoryData[playerid][i][IsEquipped]) {
			for(new u = 0; u < 13; u++) {
				GetPlayerWeaponData(playerid, u, weapondata[u][0], weapondata[u][1]);
				if(GetWeaponSlot(InventoryData[playerid][i][ItemID]) == u) {
					mysql_update(Database, "UPDATE `characters` SET `Item%d` = '%d %d %f 0 %d %d %d' WHERE `Name` = '%s' AND `Slot` = '%d'", i,
					InventoryData[playerid][i][ItemID], InventoryData[playerid][i][Amount], InventoryData[playerid][i][Durable],
					InventoryData[playerid][i][MagType], weapondata[u][1], InventoryData[playerid][i][ExData],
					CharacterData[playerid][Name], AuthData[playerid][Selected]);
				}
			}
		}
		else {
			mysql_update(Database, "UPDATE `characters` SET `Item%d` = '%d %d %f %d %d %d %d' WHERE `Name` = '%s' AND `Slot` = '%d'", i,
			InventoryData[playerid][i][ItemID], InventoryData[playerid][i][Amount], InventoryData[playerid][i][Durable],
			InventoryData[playerid][i][IsEquipped], InventoryData[playerid][i][MagType], InventoryData[playerid][i][MagAmmo],
			InventoryData[playerid][i][ExData],	CharacterData[playerid][Name], AuthData[playerid][Selected]);
		}
	}
}

Inventory_ItemName(itemid) {
	new str[128];
	for(new i = 0; i < sizeof(ItemInfo); i++) {
		if(ItemInfo[i][ItemID] == itemid) {
			format(str, sizeof str, "%s", ItemInfo[i][Name]);
			return str;
		}
	}
}
Float:Inventory_ItemWeight(itemid) { for(new i = 0; i < sizeof(ItemInfo); i++) if(ItemInfo[i][ItemID] == itemid) return ItemInfo[i][Weight]; }
Inventory_ItemModel(itemid) { for(new i = 0; i < sizeof(ItemInfo); i++) if(ItemInfo[i][ItemID] == itemid) return ItemInfo[i][Model]; }

Float:Inventory_TotalWeight(playerid) {
	new Float:total = 0.0;
	for(new i = 0; i < MAX_INV_ITEMS; i++) {
		new itemid = InventoryData[playerid][i][ItemID],
			amount = InventoryData[playerid][i][Amount],
			isequip = InventoryData[playerid][i][IsEquipped],
			magtype = InventoryData[playerid][i][MagType],
			magammo = InventoryData[playerid][i][MagAmmo];
		if(Inventory_IsMagazine(itemid)) {
			total += (((Inventory_ItemWeight(itemid) * magammo) + 0.3) * amount); // 0.3 is magazine's weight
			continue;
		}
		if(Inventory_IsWeapon(itemid)) {
			if(isequip) {
				new wd[13][2];
				for(new u; u < 13; u++) GetPlayerWeaponData(playerid, u, wd[u][0], wd[u][1]);
				total += Inventory_ItemWeight(itemid) + (Inventory_ItemWeight(magtype) * wd[GetWeaponSlot(itemid)][1]) + 0.3;
			}
			else total += Inventory_ItemWeight(itemid) + (Inventory_ItemWeight(magtype) * magammo) + 0.3;
			continue;
		}
		total += Inventory_ItemWeight(itemid) * amount;
		continue;
	}
    return total;
}

Float:Inventory_MaxWeight(playerid) {
	new Float:max = MAX_CARRIED_WEIGHT;
	if(Inventory_HasItem(playerid, 37, 1) != -1) max += 10;
	if(Inventory_HasItem(playerid, 38, 1) != -1) max += 21;
	if(Inventory_HasItem(playerid, 39, 1) != -1) max += 35;
    return max;
}

Inventory_GiveItem(playerid, itemid, amount, Float:durable = 100.0, exdata = -1, magtype = 0, magammo = 0) {
    for(new i = 0; i < MAX_INV_ITEMS; i++) {
		if(Inventory_IsWeapon(itemid) && Inventory_TotalWeight(playerid) + (Inventory_ItemWeight(itemid) + (Inventory_ItemWeight(magtype) * magammo) + 0.3) > Inventory_MaxWeight(playerid)) return -1;
		if(Inventory_IsMagazine(itemid) && Inventory_TotalWeight(playerid) + (((Inventory_ItemWeight(itemid) * magammo) + 0.3) * amount) > Inventory_MaxWeight(playerid)) return -1;
		if(Inventory_TotalWeight(playerid) + (Inventory_ItemWeight(itemid) * amount) > Inventory_MaxWeight(playerid)) return -1;
        if(InventoryData[playerid][i][ItemID] == itemid) {
            if(InventoryData[playerid][i][Durable] != 100.00) continue;
            if(Inventory_IsWeapon(itemid)) continue;
            if(InventoryData[playerid][i][MagAmmo] != magammo) continue;
			if(InventoryData[playerid][i][ExData] != exdata) continue;
            InventoryData[playerid][i][Amount] += amount;
			return 1;
        }
        if(!InventoryData[playerid][i][ItemID]) {
            InventoryData[playerid][i][ItemID] = itemid;
            InventoryData[playerid][i][Amount] = amount;
            InventoryData[playerid][i][Durable] = durable;
			InventoryData[playerid][i][ExData] = exdata;
            if(Inventory_IsWeapon(itemid) && magammo) {
                InventoryData[playerid][i][MagAmmo] = magammo;
                InventoryData[playerid][i][MagType] = magtype;
            }
            if(Inventory_IsMagazine(itemid) && magammo) {
                if(magammo <= Inventory_GetMagSize(itemid)) InventoryData[playerid][i][MagAmmo] = magammo;
                if(magammo > Inventory_GetMagSize(itemid)) InventoryData[playerid][i][MagAmmo] = Inventory_GetMagSize(itemid);
            }
            return 1;
        }
    }
    return -1;
}

Inventory_DestroyItem(playerid, itemid, amount, exdata = -1) {
    for(new i = 0; i < MAX_INV_ITEMS; i++) {
        if(InventoryData[playerid][i][ItemID] == itemid
		&& InventoryData[playerid][i][Amount] >= amount
		&& InventoryData[playerid][i][ExData] == exdata) {
            InventoryData[playerid][i][Amount] -= amount;
			if(Inventory_IsWeapon(itemid) && InventoryData[playerid][i][IsEquipped]) RemovePlayerWeapon(playerid, itemid);
            return 1;
        }
    }
    return 0;
}

Inventory_Sort(playerid) {
    for(new i = 0; i < MAX_INV_ITEMS; i++) {
        for(new u = i+1; u < MAX_INV_ITEMS; u++) {
            if(InventoryData[playerid][i][ItemID]) {
				if(InventoryData[playerid][i][ItemID] != InventoryData[playerid][u][ItemID]) continue;
                if(InventoryData[playerid][i][Durable] != InventoryData[playerid][u][Durable]) continue;
                if(Inventory_IsWeapon(InventoryData[playerid][i][ItemID]) || Inventory_IsWeapon(InventoryData[playerid][u][ItemID])) continue;
				if(InventoryData[playerid][i][ExData] != InventoryData[playerid][u][ExData]) continue;
                if(InventoryData[playerid][i][MagAmmo] != InventoryData[playerid][u][MagAmmo]) continue;
                InventoryData[playerid][i][Amount] += InventoryData[playerid][u][Amount];
				InventoryData[playerid][u][ItemID] = 0;
				InventoryData[playerid][u][Amount] = 0;
				InventoryData[playerid][u][IsEquipped] = 0;
				InventoryData[playerid][u][MagType] = 0;
				InventoryData[playerid][u][MagAmmo] = 0;
				InventoryData[playerid][u][ExData] = -1;
            }
            if(!InventoryData[playerid][i][ItemID] && InventoryData[playerid][u][ItemID]) {
                SwapInt(InventoryData[playerid][u][ItemID], InventoryData[playerid][i][ItemID]);
                SwapInt(InventoryData[playerid][u][Amount], InventoryData[playerid][i][Amount]);
                SwapFloat(InventoryData[playerid][u][Durable], InventoryData[playerid][i][Durable]);
				SwapInt(InventoryData[playerid][u][IsEquipped], InventoryData[playerid][i][IsEquipped]);
				SwapInt(InventoryData[playerid][u][MagType], InventoryData[playerid][i][MagType]);
                SwapInt(InventoryData[playerid][u][MagAmmo], InventoryData[playerid][i][MagAmmo]);
				SwapInt(InventoryData[playerid][u][ExData], InventoryData[playerid][i][ExData]);
            }
        }
		if(InventoryData[playerid][i][Amount] <= 0) {
			InventoryData[playerid][i][ItemID] = 0;
			InventoryData[playerid][i][Amount] = 0;
			InventoryData[playerid][i][Durable] = 0;
			InventoryData[playerid][i][IsEquipped] = 0;
			InventoryData[playerid][i][MagType] = 0;
			InventoryData[playerid][i][MagAmmo] = 0;
			InventoryData[playerid][i][ExData] = -1;
		}
		if(Inventory_IsWeapon(InventoryData[playerid][i][ItemID])) {
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
		if(Inventory_IsMagazine(InventoryData[playerid][i][ItemID])) {
			if(InventoryData[playerid][i][MagAmmo] <= 0) {
				InventoryData[playerid][i][ItemID] = 0;
                InventoryData[playerid][i][Amount] = 0;
                InventoryData[playerid][i][Durable] = 0;
				InventoryData[playerid][i][IsEquipped] = 0;
				InventoryData[playerid][i][MagType] = 0;
                InventoryData[playerid][i][MagAmmo] = 0;
				InventoryData[playerid][i][ExData] = -1;
			}
		}
    }
}

Inventory_HasItem(playerid, itemid, isequip = 0, exdata = -1) {
    for(new i = 0; i < MAX_INV_ITEMS; i++) {
        if(!InventoryData[playerid][i][ItemID]) continue;
        if(InventoryData[playerid][i][ItemID] == itemid
		&& InventoryData[playerid][i][ExData] == exdata
		&& InventoryData[playerid][i][IsEquipped] == isequip) return i;
    }
    return -1;
}

Inventory_IsInteracting(playerid) {
	return (536 <= GetPlayerAnimationIndex(playerid) <= 538
		|| 15 <= GetPlayerAnimationIndex(playerid) <= 16
		|| GetPlayerAnimationIndex(playerid) == 163
		|| GetPlayerAnimationIndex(playerid) == 164);
}

IsPlayerCrouching(playerid) { return (GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_DUCK); }

Inventory_ReloadAnimWeapon(playerid, itemid) {
	if(IsPlayerCrouching(playerid)) {
		switch(itemid) {
			case 22: ApplyAnimation(playerid, "COLT45", "colt45_crouchreload", 4.1, 0, 0, 0, 0, 0, 1);
			case 23: ApplyAnimation(playerid, "SILENCED", "CrouchReload", 4.1, 0, 0, 0, 0, 0, 1);
			case 24: ApplyAnimation(playerid, "PYTHON", "python_crouchreload", 4.1, 0, 0, 0, 0, 0, 1);
			case 25: ApplyAnimation(playerid, "BUDDY", "buddy_crouchreload", 4.1, 0, 0, 0, 0, 0, 1);
			case 26: ApplyAnimation(playerid, "COLT45", "colt45_crouchreload", 4.1, 0, 0, 0, 0, 0, 1);
			case 27: ApplyAnimation(playerid, "BUDDY", "buddy_crouchreload", 4.1, 0, 0, 0, 0, 0, 1);
			case 28: ApplyAnimation(playerid, "UZI", "UZI_crouchreload", 4.1, 0, 0, 0, 0, 0, 1);
			case 29: ApplyAnimation(playerid, "RIFLE", "RIFLE_crouchload", 4.1, 0, 0, 0, 0, 0, 1);
			case 30: ApplyAnimation(playerid, "RIFLE", "RIFLE_crouchload", 4.1, 0, 0, 0, 0, 0, 1);
			case 31: ApplyAnimation(playerid, "RIFLE", "RIFLE_crouchload", 4.1, 0, 0, 0, 0, 0, 1);
			case 32: ApplyAnimation(playerid, "TEC", "TEC_crouchreload", 4.1, 0, 0, 0, 0, 0, 1);
			case 33: ApplyAnimation(playerid, "RIFLE", "RIFLE_crouchload", 4.1, 0, 0, 0, 0, 0, 1);
			case 34: ApplyAnimation(playerid, "RIFLE", "RIFLE_crouchload", 4.1, 0, 0, 0, 0, 0, 1);
		}
	}
	else {
		switch(itemid) {
			case 22: ApplyAnimation(playerid, "COLT45", "colt45_reload", 4.1, 0, 0, 0, 0, 0, 1);
			case 23: ApplyAnimation(playerid, "SILENCED", "Silence_reload", 4.1, 0, 0, 0, 0, 0, 1);
			case 24: ApplyAnimation(playerid, "PYTHON", "python_reload", 4.1, 0, 0, 0, 0, 0, 1);
			case 25: ApplyAnimation(playerid, "BUDDY", "buddy_reload", 4.1, 0, 0, 0, 0, 0, 1);
			case 26: ApplyAnimation(playerid, "COLT45", "sawnoff_reload", 4.1, 0, 0, 0, 0, 0, 1);
			case 27: ApplyAnimation(playerid, "BUDDY", "buddy_reload", 4.1, 0, 0, 0, 0, 0, 1);
			case 28: ApplyAnimation(playerid, "UZI", "UZI_reload", 4.1, 0, 0, 0, 0, 0, 1);
			case 29: ApplyAnimation(playerid, "RIFLE", "RIFLE_load", 4.1, 0, 0, 0, 0, 0, 1);
			case 30: ApplyAnimation(playerid, "RIFLE", "RIFLE_load", 4.1, 0, 0, 0, 0, 0, 1);
			case 31: ApplyAnimation(playerid, "RIFLE", "RIFLE_load", 4.1, 0, 0, 0, 0, 0, 1);
			case 32: ApplyAnimation(playerid, "TEC", "TEC_reload", 4.1, 0, 0, 0, 0, 0, 1);
			case 33: ApplyAnimation(playerid, "RIFLE", "RIFLE_load", 4.1, 0, 0, 0, 0, 0, 1);
			case 34: ApplyAnimation(playerid, "RIFLE", "RIFLE_load", 4.1, 0, 0, 0, 0, 0, 1);
		}
	}
	PlayerPlaySound(playerid, 1131, 0, 0, 0);
}

Inventory_IsWeapon(itemid) {
    switch(itemid) {
        case 1..9, 14..18, 22..34: return true;
        default: return false;
    }
}

Inventory_IsMagazine(itemid) {
    switch(itemid) {
        case 47..72: return true;
        default: return false;
    }
}

Inventory_IsFood(itemid) {
	switch(itemid) {
		case 76..85: return true;
		default: return false;
	}
}

Inventory_IsDrink(itemid) {
	switch(itemid) {
		case 86..95: return true;
		default: return false;
	}
}

Inventory_IsFoodDrink(itemid) {
	switch(itemid) {
		case 76..95: return true;
		default: return false;
	}
}

Inventory_GetRecover(itemid, &Float:hunger, &Float:thirst) {
	hunger = 0;
	thirst = 0;
	switch(itemid) {
		case 76: hunger = 2.5, thirst = 1.5;
		case 77: hunger = 1.5, thirst = 2.5;
		case 78: hunger = 1, thirst = 3;
		case 79: hunger = 7.5;
		case 80: hunger = 15;
		case 81: hunger = 10;
		case 82: hunger = 20;
		case 83: hunger = 17.5;
		case 84: hunger = 20;
		case 85: hunger = 2.5;
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

Inventory_IsWeapUseMag(wid, magid) {
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
	//if((1 <= wid <= 18 || wid == 35 || 40 <= wid <= 46) && magid == 0) return true;
	return false;
}

Inventory_GetMagSize(itemid) {
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

Inventory_PlayerUseItem(playerid, sel, amount) {
    static itemid, weapondata[13][2], str[256];
    itemid = InventoryData[playerid][sel][ItemID];

    if(Inventory_IsWeapon(itemid)) {
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
		for(new i = 0; i < MAX_INV_ITEMS; i++) {
			for(new u = 0; u < 13; u++) {
				// error
				GetPlayerWeaponData(playerid, u, weapondata[u][0], weapondata[u][1]);
				if(GetWeaponSlot(InventoryData[playerid][i][ItemID]) == GetWeaponSlot(itemid) && GetWeaponSlot(itemid) == u
				&& GetWeaponSlot(InventoryData[playerid][i][ItemID]) == u && InventoryData[playerid][i][IsEquipped]) {
					if(weapondata[u][0] || InventoryData[playerid][i][ItemID] == itemid) return ErrorMsg(playerid, "Hay go trang bi cua vu khi %s truoc.", Inventory_ItemName(InventoryData[playerid][i][ItemID]));
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

    if(Inventory_IsMagazine(itemid)) {
		if(!InventoryData[playerid][sel][MagAmmo]) return ErrorMsg(playerid, "So dan trong bang dan %s da het.", Inventory_ItemName(itemid));
		for(new i = 0; i < MAX_INV_ITEMS; i++) {
			if(InventoryData[playerid][i][IsEquipped] && Inventory_IsWeapon(InventoryData[playerid][i][ItemID])) {
				if(InventoryData[playerid][i][MagType] == itemid || InventoryData[playerid][i][MagType] == 0) {
					for(new u = 0; u < 13; u++) {
						GetPlayerWeaponData(playerid, u, weapondata[u][0], weapondata[u][1]);
						if(Inventory_IsWeapUseMag(InventoryData[playerid][i][ItemID], InventoryData[playerid][i][MagType]) && GetWeaponSlot(InventoryData[playerid][i][ItemID]) == u) {
							if(weapondata[u][1] + InventoryData[playerid][sel][MagAmmo] <= Inventory_GetMagSize(itemid)) {
								// work
								if(InventoryData[playerid][sel][Amount] > 1) {
									GivePlayerWeapon(playerid, InventoryData[playerid][i][ItemID], weapondata[u][1] + InventoryData[playerid][sel][MagAmmo]);
									SetPlayerAmmo(playerid, InventoryData[playerid][i][ItemID], weapondata[u][1] + InventoryData[playerid][sel][MagAmmo]);
									InventoryData[playerid][i][MagType] = itemid;
									InventoryData[playerid][sel][Amount]--;
									Inventory_ReloadAnimWeapon(playerid, InventoryData[playerid][i][ItemID]);
									return ShowTDNx(playerid, 5000, "Da nap dan %s vao vu khi %s", Inventory_ItemName(itemid), Inventory_ItemName(InventoryData[playerid][i][ItemID]));
								}
								GivePlayerWeapon(playerid, InventoryData[playerid][i][ItemID], weapondata[u][1] + InventoryData[playerid][sel][MagAmmo]);
								SetPlayerAmmo(playerid, InventoryData[playerid][i][ItemID], weapondata[u][1] + InventoryData[playerid][sel][MagAmmo]);
								InventoryData[playerid][i][MagType] = itemid;
								InventoryData[playerid][sel][MagAmmo] = 0;
								Inventory_ReloadAnimWeapon(playerid, InventoryData[playerid][i][ItemID]);
								return ShowTDNx(playerid, 5000, "Da nap dan %s vao vu khi %s", Inventory_ItemName(itemid), Inventory_ItemName(InventoryData[playerid][i][ItemID]));
							}
							if(weapondata[u][1] >= Inventory_GetMagSize(itemid)) return ErrorMsg(playerid, "Bang dan cua khau sung %s da day (%d vien)", Inventory_ItemName(InventoryData[playerid][i][ItemID]), Inventory_GetMagSize(itemid));
							if(InventoryData[playerid][sel][Amount] > 1) {
								if(Inventory_GiveItem(playerid, itemid, 1, 100.0, -1, 0, InventoryData[playerid][sel][MagAmmo]-(Inventory_GetMagSize(itemid)-weapondata[u][1])) == -1) return ErrorMsg(playerid, "Hanh trang cua ban da day hoac qua nang.");
								GivePlayerWeapon(playerid, InventoryData[playerid][i][ItemID], Inventory_GetMagSize(itemid));
								SetPlayerAmmo(playerid, InventoryData[playerid][i][ItemID], Inventory_GetMagSize(itemid));
								InventoryData[playerid][sel][Amount]--;
								InventoryData[playerid][i][MagType] = itemid;
								Inventory_ReloadAnimWeapon(playerid, InventoryData[playerid][i][ItemID]);
								return ShowTDNx(playerid, 5000, "Da nap dan %s vao vu khi %s", Inventory_ItemName(itemid), Inventory_ItemName(InventoryData[playerid][i][ItemID]));
							}
		                	GivePlayerWeapon(playerid, InventoryData[playerid][i][ItemID], Inventory_GetMagSize(itemid));
							SetPlayerAmmo(playerid, InventoryData[playerid][i][ItemID], Inventory_GetMagSize(itemid));
							InventoryData[playerid][i][MagType] = itemid;
		                	InventoryData[playerid][sel][MagAmmo] -= (Inventory_GetMagSize(itemid)-weapondata[u][1]);
							Inventory_ReloadAnimWeapon(playerid, InventoryData[playerid][i][ItemID]);
							if(InventoryData[playerid][sel][MagAmmo] <= 0) InventoryData[playerid][sel][MagType] = 0, InventoryData[playerid][sel][MagAmmo] = 0;
							return ShowTDNx(playerid, 5000, "Da nap dan %s vao vu khi %s", Inventory_ItemName(itemid), Inventory_ItemName(InventoryData[playerid][i][ItemID]));
						}
					}
					return 1;
				}
				return ErrorMsg(playerid, "Loai dan %s khong phu hop hoac vu khi dang dung loai dan khac.", Inventory_ItemName(itemid));
			}
		}
	}

	if(Inventory_IsFoodDrink(itemid)) {
		if(Inventory_IsInteracting(playerid)) return ShowTDNx(playerid, 2000, "Vui long doi...");
		InventoryData[playerid][sel][Amount]--;
		if(Inventory_IsFood(itemid)) {
			//SetPlayerAttachedObject(playerid, 0, Inventory_ItemModel(itemid), 6);
			switch(random(2)) {
				case 0: ApplyAnimation(playerid, "FOOD", "EAT_Burger", 4.1, 0, 0, 0, 0, 0, 1);
			    case 1: ApplyAnimation(playerid, "FOOD", "EAT_Chicken", 4.1, 0, 0, 0, 0, 0, 1);
			    case 2: ApplyAnimation(playerid, "FOOD", "EAT_Pizza", 4.1, 0, 0, 0, 0, 0, 1);
			}
		}
		if(Inventory_IsDrink(itemid)) {
			//SetPlayerAttachedObject(playerid, 0, Inventory_ItemModel(itemid), 6);
			switch(CharacterData[playerid][Gender]) {
				case 1: ApplyAnimation(playerid, "Bar", "dnk_stndM_loop", 4.1, 0, 0, 0, 0, 0, 1);
				case 2: ApplyAnimation(playerid, "Bar", "dnk_stndF_loop", 4.1, 0, 0, 0, 0, 0, 1);
			}
		}
		static Float:hunger, Float:thirst;
		Inventory_GetRecover(itemid, hunger, thirst);
		CharacterData[playerid][Hunger] += hunger;
		CharacterData[playerid][Thirst] += thirst;
		if(CharacterData[playerid][Hunger] >= MAX_PLAYER_HUNGER) CharacterData[playerid][Hunger] = MAX_PLAYER_HUNGER;
		if(CharacterData[playerid][Thirst] >= MAX_PLAYER_THIRST) CharacterData[playerid][Thirst] = MAX_PLAYER_THIRST;
		if(hunger < 0) format(str, sizeof str, "%.1f kcal eq. (%.0f/%.0f)~n~", hunger, CharacterData[playerid][Hunger], MAX_PLAYER_HUNGER);
		if(hunger > 0) format(str, sizeof str, "+%.1f kcal eq. (%.0f/%.0f)~n~", hunger, CharacterData[playerid][Hunger], MAX_PLAYER_HUNGER);
		if(thirst < 0) format(str, sizeof str, "%s%.1f nuoc (%.0f/%.0f)", str, thirst, CharacterData[playerid][Thirst], MAX_PLAYER_THIRST);
		if(thirst > 0) format(str, sizeof str, "%s+%.1f nuoc (%.0f/%.0f)", str, thirst, CharacterData[playerid][Thirst], MAX_PLAYER_THIRST);
		ShowTDNx(playerid, 5000, str);
	}

	if(itemid == 20 || itemid == 21) {
		if(!InventoryData[playerid][sel][IsEquipped]) {
			InventoryData[playerid][sel][IsEquipped] = 1;
			switch(itemid) {
				case 20: callcmd::ame(playerid, "da bat dinh vi vi tri");
				case 21: callcmd::ame(playerid, "da deo mot chiec dong ho");
			}
			return 1;
		}
		if(InventoryData[playerid][sel][IsEquipped]) {
			InventoryData[playerid][sel][IsEquipped] = 0;
			switch(itemid) {
				case 20: callcmd::ame(playerid, "da tat dinh vi vi tri");
				case 21: callcmd::ame(playerid, "da thao dong ho ra");
			}
			return 1;
		}
	}

	if(itemid == 37 || itemid == 38 || itemid == 39) {
		/*
		if(InventoryData[playerid][sel][IsEquipped]) {
			InventoryData[playerid][sel][IsEquipped] = 0;
			return 1;
		}
		if(!InventoryData[playerid][sel][IsEquipped]) {
			InventoryData[playerid][sel][IsEquipped] = 1;
			return 1;
		}
		*/
	}

    return 1;
}

Inventory_PlayerViewInfoItem(playerid, sel) {
	static itemid, title[64], caption[1024];
	itemid = InventoryData[playerid][sel][ItemID];
	if(Inventory_IsWeapon(itemid)) {
		static weapondata[13][2], equiping[32], magammo[64], rightmag[256], weapdesc[256];
		for(new u = 0; u < 13; u++) { GetPlayerWeaponData(playerid, u, weapondata[u][0], weapondata[u][1]); }
		format(equiping, sizeof equiping, "None");
		format(magammo, sizeof magammo, "None");
		switch(InventoryData[playerid][sel][IsEquipped]) {
			case 0: {
				format(equiping, sizeof equiping, "Khong trang bi");
				format(magammo, sizeof magammo, "%d / %d", InventoryData[playerid][sel][MagAmmo], Inventory_GetMagSize(InventoryData[playerid][sel][MagType]));
			}
			case 1: {
				format(equiping, sizeof equiping, "Dang trang bi");
				format(magammo, sizeof magammo, "%d / %d", weapondata[GetWeaponSlot(itemid)][1], Inventory_GetMagSize(InventoryData[playerid][sel][MagType]));
			}
		}
		rightmag[0] = EOS;
		for(new a = 47; a < 73; a++) {
			if(Inventory_IsWeapUseMag(itemid, a)) {
				format(rightmag, sizeof rightmag, "%s%s | ", rightmag, Inventory_ItemName(a));
			}
		}
		format(weapdesc, sizeof weapdesc, "None");
		switch(itemid) {
			case 1: format(weapdesc, sizeof weapdesc, "La mot vu khi duoc su dung trong chien dau tay khong. Chung thuong duoc lam tu cac kim\n loai, nhua hoac soi carbon, duoc thiet ke de duy tri va tap trung luc vao mot cu dam.");
			case 22: format(weapdesc, sizeof weapdesc, "Colt M1911 la mot loai sung luc cua My do John Browning thiet ke tu nam 1905.\n Sung su dung loai dan .45 ACP hoac bang dan mo rong cua .45 ACP (.45 ACP .ext).");
			case 23: format(weapdesc, sizeof weapdesc, "Cung giong nhu Colt M1911 nhung duoc tich hop them giam thanh vao nong sung.\n Sung su dung loai dan .45 ACP hoac bang dan mo rong cua .45 ACP (.45 ACP .ext).");
		}
		format(title, sizeof title, ""COL_AQUA"VU KHI: %s", Inventory_ItemName(itemid));
		format(caption, sizeof caption, "Can nang: %.2fkg\nDo ben: %.2f\nTrang thai: %s\nBang dan: %s\nLoai dan hien tai: %s \
		\nCac loai dan thich hop: %s\nMo ta: %s\n",
		Inventory_ItemWeight(itemid), InventoryData[playerid][sel][Durable], equiping, magammo,
		Inventory_ItemName(InventoryData[playerid][sel][MagType]), rightmag, weapdesc);
		Dialog_Show(playerid, InventoryViewInfo, DS_MSGBOX, title, caption, "-", "");
	}
	return 1;
}

Inventory_PlayerGiveItem(playerid, sel, targetid) {

}

Inventory_PlayerDestroyItem(playerid, sel, amount) {

}

func DropItem_TimerRemove(i) {
	if(IsValidDynamicObject(DroppedItem[i][Object])) DestroyDynamicObject(DroppedItem[i][Object]);
	if(IsValidDynamic3DTextLabel(DroppedItem[i][Label])) DestroyDynamic3DTextLabel(DroppedItem[i][Label]);
	DroppedItem[i][Params][0] = EOS;
	KillTimer(DroppedItem[i][Timer]);
}

Inventory_PlayerDropItem(playerid, sel, amount) {
	new Float:x, Float:y, Float:z, Float:ang;
	new itemid = InventoryData[playerid][sel][ItemID],
		Float:durable = InventoryData[playerid][sel][Durable],
		magtype = InventoryData[playerid][sel][MagType],
    	magammo = InventoryData[playerid][sel][MagAmmo], // Bang dan / dan trong sung
    	exdata = InventoryData[playerid][sel][ExData];
	if(Inventory_IsInteracting(playerid)) return ShowTDNx(playerid, 2000, "Vui long doi...");
	GetPlayerPos(playerid, x, y, z);
	GetPlayerFacingAngle(playerid, ang);
	GetXYInFrontOfPlayer(playerid, x, y, 0.25);
	for(new i = 0; i < MAX_DROP_ITEMS; i++) {
		if(!IsValidDynamicObject(DroppedItem[i][Object]) && !IsValidDynamic3DTextLabel(DroppedItem[i][Label])) {
			static str[128]; format(str, sizeof str, ""COL_GREEN"%s [x%d]\n"COL_WHITE"Ngoi va bam Y de nhat.", Inventory_ItemName(itemid), amount);
			if(Inventory_IsWeapon(itemid)) {
				if(InventoryData[playerid][sel][IsEquipped]) {
					new wd[13][2];
					for(new u = 0; u < 13; u++) GetPlayerWeaponData(playerid, u, wd[u][0], wd[u][1]);
					magammo = wd[GetWeaponSlot(itemid)][1];
				}
				DroppedItem[i][Object] = CreateDynamicObject(Inventory_ItemModel(itemid), x, y, z-1, 93.7, 120.0, ang + 60.0, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
			}
			else DroppedItem[i][Object] = CreateDynamicObject(Inventory_ItemModel(itemid), x, y, z-1, 0, 0, 0, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
			DroppedItem[i][Label] = CreateDynamic3DTextLabel(str, -1, x, y, z-0.7, 4.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
			format(DroppedItem[i][Params], 128, "%d %d %f %d %d %d", itemid, amount, durable, magtype, magammo, exdata);
			DroppedItem[i][Timer] = SetTimerEx(#DropItem_TimerRemove, DROP_ITEM_TIME, 0, "i", i);
			ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.1, 0, 0, 0, 0, 0, 1);
			InventoryData[playerid][sel][Amount] -= amount;
			return 1;
		}
	}
	return 1;
}