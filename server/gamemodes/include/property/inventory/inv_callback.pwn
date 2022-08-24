
hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
    if(newkeys & KEY_CTRL_BACK) { // Key H
        static Float:depth, Float:pdepth;
        if(!IsPlayerInAnyVehicle(playerid)) callcmd::inventory(playerid);
    }
    return 1;
}

Alias:inventory("inv");
Cmd:inventory(playerid) {
    static str[128];
    CharacterData[playerid][InvSelectedItem] = -1;
    ClearDialogListitems(playerid);
    AddDialogListitem(playerid, ""COL_GREY" Vat pham\tDo ben\tCan nang: %.2fkg", Inventory_TotalWeight(playerid));
    Inventory_Sort(playerid);
	for(new i = 0; i < MAX_INV_ITEMS; i++) {
        if(InventoryData[playerid][i][ItemID]) {
            static weapondata[13][2], exdata;
            static itemname[64], itemid, amount, Float:durable, isequip, magtype, magammo;
            itemid = InventoryData[playerid][i][ItemID];
            amount = InventoryData[playerid][i][Amount];
            durable = InventoryData[playerid][i][Durable];
            isequip = InventoryData[playerid][i][IsEquipped];
            magtype = InventoryData[playerid][i][MagType];
            magammo = InventoryData[playerid][i][MagAmmo];
            exdata = InventoryData[playerid][i][ExData];
            format(itemname, sizeof itemname, "%s", ItemInfo[itemid][Name]);
            for(new u = 0; u < 13; u++) { GetPlayerWeaponData(playerid, u, weapondata[u][0], weapondata[u][1]); }
            if(amount > 1) {
                if(Inventory_IsMagazine(itemid)) AddDialogListitem(playerid, " %s [x%d]\t \t%d / %d", itemname, amount, magammo, Inventory_GetMagSize(itemid));
                else if(Inventory_IsFoodDrink(itemid)) AddDialogListitem(playerid, " %s [x%d]", itemname, amount);
                else if(exdata != -1) AddDialogListitem(playerid, " %s %d [x%d]", itemname, exdata, amount);
                else AddDialogListitem(playerid, " %s [x%d]\t%.2f\t", itemname, amount, durable);
            }
            else {
                if(Inventory_IsWeapon(itemid)) {
                    if(!isequip) AddDialogListitem(playerid, " %s\t%.2f\t%d / %d (%s)", itemname, durable, magammo, Inventory_GetMagSize(magtype), ItemInfo[magtype][Name]);
                    else AddDialogListitem(playerid, " %s "COL_YELLOW"(DANG TRANG BI)\t%.2f\t%d / %d (%s)", itemname, durable, weapondata[GetWeaponSlot(itemid)][1], Inventory_GetMagSize(magtype), ItemInfo[magtype][Name]);
                }
                else if(Inventory_IsMagazine(itemid)) AddDialogListitem(playerid, " %s\t \t%d / %d", itemname, magammo, Inventory_GetMagSize(itemid));
                else if(Inventory_IsFoodDrink(itemid)) AddDialogListitem(playerid, " %s", itemname);
                else if(exdata != -1) AddDialogListitem(playerid, " %s %d", itemname, exdata);
                else AddDialogListitem(playerid, " %s\t%.2f\t", itemname, durable);
            }
        }
	}
    format(str, sizeof str, ""COL_AQUA"TUI DO NHAN VAT - "COL_YELLOW"So du: $%s", fNumber(CharacterData[playerid][Cash]));
    ShowPlayerDialogPages(playerid, #InventoryMain, DS_HEADERS, str, "Chon", "Dong", 12, "{F5D400}TRANG SAU", "{F5D400}TRANG TRUOC");
    return 1;
}

DialogPages:InventoryMain(playerid, response, listitem) {
    if(response) {
        new i, str[128], excap[1024] = "", hid = -1;

        if(!IsPlayerInAnyVehicle(playerid) && (hid = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, hid) && House_IsOwner(playerid, hid)) format(excap, sizeof excap, "%s\n"COL_YELLOW"Cat vao trong nha (ID: %d)", excap, hid);

        CharacterData[playerid][InvSelectedItem] = listitem;
        i = CharacterData[playerid][InvSelectedItem];
        if(!InventoryData[playerid][i][ItemID]) return callcmd::inventory(playerid);
        format(str, sizeof str, ""COL_AQUA"TUI DO > %s", ItemInfo[InventoryData[playerid][i][ItemID]][Name]);
        if(Inventory_IsWeapon(InventoryData[playerid][i][ItemID])) {
            if(!InventoryData[playerid][i][IsEquipped]) {
                format(excap, sizeof excap, "Trang bi vu khi\nThong tin vu khi\nDua vu khi\nPha huy vu khi\nVut bo vu khi%s", excap);
                return Dialog_Show(playerid, InventoryInteract, DS_LIST, str, excap, "Chon", "Quay lai");
            }
            else {
                format(excap, sizeof excap, "Go trang bi vu khi\nThong tin vu khi\nDua vu khi\nPha huy vu khi\nVut bo vu khi%s", excap);
                return Dialog_Show(playerid, InventoryInteract, DS_LIST, str, excap, "Chon", "Quay lai");
            }
        }
        if(Inventory_IsMagazine(InventoryData[playerid][i][ItemID])) {
            format(excap, sizeof excap, "Nap dan vao vu khi\nThong tin bang dan\nDua bang dan\nPha huy bang dan\nVut bo bang dan%s", excap);
            return Dialog_Show(playerid, InventoryInteract, DS_LIST, str, excap, "Chon", "Quay lai");
        }
        format(excap, sizeof excap, "Su dung vat pham\nThong tin vat pham\nDua vat pham\nTieu huy vat pham\nVut bo vat pham%s", excap);
        Dialog_Show(playerid, InventoryInteract, DS_LIST, str, excap, "Chon", "Quay lai");
    }
	return 1;
}

Dialog:InventoryInteract(playerid, response, listitem, inputtext[]) {
    static sel; sel = CharacterData[playerid][InvSelectedItem];
    if(!response) return callcmd::inventory(playerid);
    switch(listitem) {
        case 0: {
            static str[64];
            format(str, sizeof str, ""COL_AQUA"TUI DO > %s > Su dung (SL: %d)", ItemInfo[InventoryData[playerid][sel][ItemID]][Name], InventoryData[playerid][sel][Amount]);
            if(InventoryData[playerid][sel][Amount] > 1) {
                if(Inventory_IsMagazine(InventoryData[playerid][sel][ItemID])) Inventory_PlayerUseItem(playerid, sel, 1);
                else if(Inventory_IsFoodDrink(InventoryData[playerid][sel][ItemID])) Inventory_PlayerUseItem(playerid, sel, 1);
                else Dialog_Show(playerid, InventoryUseAmount, DS_INPUT, str, "\\cNhap so luong ma ban muon su dung:", "Su dung", "Quay lai");
            }
            else Inventory_PlayerUseItem(playerid, sel, 1);
        }
        case 1: Inventory_PlayerViewInfoItem(playerid, sel);
        //case 2: Inventory_PlayerGiveItem(playerid, sel, targetid);
        //case 3: Inventory_PlayerDestroyItem(playerid, sel, amount);
        case 4: {
            static str[64];
            format(str, sizeof str, ""COL_AQUA"TUI DO > %s > Vut bo (SL: %d)", ItemInfo[InventoryData[playerid][sel][ItemID]][Name], InventoryData[playerid][sel][Amount]);
            if(InventoryData[playerid][sel][Amount] > 1) Dialog_Show(playerid, InventoryDropAmount, DS_INPUT, str, "\\cNhap so luong ma ban muon vut bo:", "Vut bo", "Quay lai");
            else Inventory_PlayerDropItem(playerid, sel, 1);
        }
    }
    return 1;
}

Dialog:InventoryUseAmount(playerid, response, listitem, inputtext[]) {
    static sel; sel = CharacterData[playerid][InvSelectedItem];
    if(!response) return ndpD_InventoryMain(playerid, true, sel);
    if(!IsNumeric(inputtext)) return ErrorMsg(playerid, "So luong su dung khong hop le."), dialog_InventoryInteract(playerid, true, 0, "");
    if(InventoryData[playerid][sel][Amount] < strval(inputtext) || strval(inputtext) == 0) return ErrorMsg(playerid, "So luong su dung khong hop le."), dialog_InventoryInteract(playerid, true, 0, "");
    Inventory_PlayerUseItem(playerid, sel, strval(inputtext));
    return 1;
}

Dialog:InventoryDropAmount(playerid, response, listitem, inputtext[]) {
    static sel; sel = CharacterData[playerid][InvSelectedItem];
    if(!response) return ndpD_InventoryMain(playerid, true, sel);
    if(!IsNumeric(inputtext)) return ErrorMsg(playerid, "So luong vut bo khong hop le."), dialog_InventoryInteract(playerid, true, 4, "");
    if(InventoryData[playerid][sel][Amount] < strval(inputtext) || strval(inputtext) == 0) return ErrorMsg(playerid, "So luong vut bo khong hop le."), dialog_InventoryInteract(playerid, true, 4, "");
    Inventory_PlayerDropItem(playerid, sel, strval(inputtext));
    return 1;
}

Dialog:InventoryViewInfo(playerid, response, listitem, inputtext[]) { ndpD_InventoryMain(playerid, true, CharacterData[playerid][InvSelectedItem]); }
