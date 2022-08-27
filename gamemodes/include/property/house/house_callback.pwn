
hook function ResetGlobalVars() {

    for(new hid = 0; hid < MAX_HOUSES; hid++) {

        if(HouseData[hid][Created]) House_SaveData(hid);

        HouseData[hid][ID] = -1;
        HouseData[hid][Created] = 0;
        HouseData[hid][Owned] = 0;
        format(HouseData[hid][Owner], 25, "");
        HouseData[hid][Locked] = 0;
        HouseData[hid][Alarm] =  0;
        HouseData[hid][Level] =  1;
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

        for(new i = 0; i < MAX_HOUSE_INV; i++) {
            HouseInventory[hid][i][ItemID] = 0;
            HouseInventory[hid][i][Amount] = 0;
            HouseInventory[hid][i][Durable] = 0;
            HouseInventory[hid][i][MagType] = 0;
            HouseInventory[hid][i][MagAmmo] = 0;
            HouseInventory[hid][i][ExData] = -1;
        }

        format(HouseData[hid][Address], MAX_MAP_ZONE_NAME, "");

        DestroyDynamicPickup(HouseData[hid][ExtPickup]);
        DestroyDynamicPickup(HouseData[hid][IntPickup]);

    }

    continue();
}

hook OnPlayerPickUpDynPickup(playerid, STREAMER_TAG_PICKUP:pickupid) {
    if(!IsPlayerInGame(playerid)) return 0;

    static hid;
    if((hid = House_Nearest(playerid)) != -1) {
        if(House_IsPlayerOutside(playerid, hid)) {
            switch(HouseData[hid][Owned]) {
                case 0: ShowTDNx(playerid, 7000, "Nha so %d, %s~n~Gia tien: $%s~n~/xemnha - xem noi that.", hid, HouseData[hid][Address], fNumber(HouseData[hid][Price]));
                case 1: ShowTDNx(playerid, 7000, "Nha so %d, %s~n~Chu so huu: %s~n~/enter de di vao trong.", hid, HouseData[hid][Address], HouseData[hid][Owner]);
            }
        }
        if(House_IsPlayerNearExt(playerid, hid)) ShowTDNx(playerid, 3000, "/exit de ra ngoai.");
        if(House_IsPlayerNearLocker(playerid, hid) && House_IsOwner(playerid, hid)) ShowTDNx(playerid, 3000, "/tudo, /hlocker");
    }
    return 1;
}

Dialog:HouseAdminMenu(playerid, response, listitem, inputtext[]) {
    if(response) {
        switch(listitem) {
            case 0: Dialog_Show(playerid, HouseAdminCreateIntID, DS_INPUT, "TAO MOT can nha", "\\cHay nhap id interior cho can nha:", "Xong", "Quay lai");
            case 1: Dialog_Show(playerid, HouseAdminEditID, DS_INPUT, "CHINH SUA can nha", "\\cNhap ID cua can nha ma ban muon chinh sua:", "Xong", "Quay lai");
            case 2: Dialog_Show(playerid, HouseAdminDeleteID, DS_INPUT, "XOA MOT can nha", "\\cNhap ID cua can nha ma ban muon xoa:", "Xong", "Quay lai");
            case 3: Dialog_Show(playerid, HouseAdminGotoID, DS_INPUT, "DICH CHUYEN DEN MOT can nha", "\\cNhap ID cua can nha ma ban muon den:", "Xong", "Quay lai");
        }
    }
    return 1;
}

Dialog:HouseAdminGotoID(playerid, response, listitem, inputtext[]) {
    if(!response) return Dialog_Show(playerid, HouseAdminMenu, DS_LIST, "ADMIN HOUSE MENU", "Tao mot can nha\nChinh sua mot can nha\nXoa mot can nha\nDich chuyen den mot can nha", "Chon", "Dong");
    if(!IsNumeric(inputtext) || strval(inputtext) == -1) return ErrorMsg(playerid, "ID cua can nha khong hop le.");
    static id; id = strval(inputtext);
    static title[32], caption[256];
    if(!HouseData[id][Created]) return ErrorMsg(playerid, "can nha nay khong ton tai.");
    SetPlayerCompensatedPos(playerid, HouseData[id][ExteriorX], HouseData[id][ExteriorY], HouseData[id][ExteriorZ], HouseData[id][ExteriorA], 3000, HouseData[id][ExteriorWorld], HouseData[id][ExteriorInt]);
}

Dialog:HouseAdminDeleteID(playerid, response, listitem, inputtext[]) {
    if(!response) return Dialog_Show(playerid, HouseAdminMenu, DS_LIST, "ADMIN HOUSE MENU", "Tao mot can nha\nChinh sua mot can nha\nXoa mot can nha\nDich chuyen den mot can nha", "Chon", "Dong");
    if(!IsNumeric(inputtext) || strval(inputtext) == -1) return ErrorMsg(playerid, "ID cua can nha khong hop le.");
    static hid; hid = strval(inputtext);
    static title[32], caption[256];
    if(!HouseData[hid][Created]) return ErrorMsg(playerid, "can nha nay khong ton tai.");

    CharacterData[playerid][HouseAdminID] = hid;

    SuccessMsg(playerid, "Da xoa thanh cong can nha tai dia chi %d, %s", HouseData[hid][ID], HouseData[hid][Address]);

    if(HouseData[hid][Created]) {
		printf("House ID %d, DbID %d deleted.", hid, HouseData[hid][ID]);
		mysql_update(Database, "DELETE FROM `houses` WHERE `ID` = '%d'", HouseData[hid][ID]);

		if (IsValidDynamicPickup(HouseData[hid][IntPickup]))
		    DestroyDynamicPickup(HouseData[hid][IntPickup]);

		if (IsValidDynamicPickup(HouseData[hid][ExtPickup]))
		    DestroyDynamicPickup(HouseData[hid][ExtPickup]);

		HouseData[hid][ID] = -1;
        HouseData[hid][Created] = 0;
        HouseData[hid][Owned] = 0;
        format(HouseData[hid][Owner], 25, "");
        HouseData[hid][Locked] = 0;
        HouseData[hid][Alarm] =  0;
        HouseData[hid][Level] =  1;
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

        for(new i = 0; i < MAX_HOUSE_INV; i++) {
            HouseInventory[hid][i][ItemID] = 0;
            HouseInventory[hid][i][Amount] = 0;
            HouseInventory[hid][i][Durable] = 0;
            HouseInventory[hid][i][MagType] = 0;
            HouseInventory[hid][i][MagAmmo] = 0;
            HouseInventory[hid][i][ExData] = -1;
        }

        format(HouseData[hid][Address], MAX_MAP_ZONE_NAME, "");
	}
    CharacterData[playerid][HouseAdminID] = -1;
    return 1;
}

Dialog:HouseAdminCreateIntID(playerid, response, listitem, inputtext[]) {
    if(!response) return Dialog_Show(playerid, HouseAdminMenu, DS_LIST, "ADMIN HOUSE MENU", "Tao mot can nha\nChinh sua mot can nha\nXoa mot can nha\nDich chuyen den mot can nha", "Chon", "Dong");
    if(strval(inputtext) >= sizeof(arrHouseInteriors) || !IsNumeric(inputtext)) {
        ErrorMsg(playerid, "Interior ID phai tu 0 - %d.", sizeof(arrHouseInteriors)-1);
        return dialog_HouseAdminMenu(playerid, true, 0, "");
    }
    CharacterData[playerid][HouseCreateIntID] = strval(inputtext);
    Dialog_Show(playerid, HouseAdminCreatePrice, DS_INPUT, "TAO MOT can nha", "\\cHay nhap gia tien cho can nha:", "Xong", "Quay lai");
    return 1;
}

Dialog:HouseAdminCreatePrice(playerid, response, listitem, inputtext[]) {
    if(!response) {
        CharacterData[playerid][HouseCreateIntID] = -1;
        return dialog_HouseAdminMenu(playerid, true, 0, "");
    }
    static str[64]; format(str, sizeof str, "%d", CharacterData[playerid][HouseCreateIntID]);
    if(strval(inputtext) < 1 || !IsNumeric(inputtext)) {
        ErrorMsg(playerid, "Gia tien cua can nha phai lon hon 0.");
        return dialog_HouseAdminCreateIntID(playerid, true, 0, str);
    }
    CharacterData[playerid][HouseCreatePrice] = strval(inputtext);

    static Float:x, Float:y, Float:z, Float:angle;

	if(GetPlayerPos(playerid, x, y, z) && GetPlayerFacingAngle(playerid, angle)) {
		for(new i = 0; i < MAX_HOUSES; i++) {
	    	if(!HouseData[i][Created] && i != -1) {
				HouseData[i][ID] = i;
    	        HouseData[i][Created] = 1;
        	    HouseData[i][Owned] = 0;
				format(HouseData[i][Owner], MAX_PLAYER_NAME, "None");
                HouseData[i][Level] = 1;
				HouseData[i][Lights] = 0;
				HouseData[i][Locked] = 0;
            	HouseData[i][Price] = CharacterData[playerid][HouseCreatePrice];
            	HouseData[i][Cash] = 0;

				GetMapZoneName(GetMapZoneAtPoint(x, y, z), HouseData[i][Address]);
    	        HouseData[i][ExteriorX] = x;
    	        HouseData[i][ExteriorY] = y;
    	        HouseData[i][ExteriorZ] = z;
    	        HouseData[i][ExteriorA] = angle;
				HouseData[i][ExteriorInt] = GetPlayerInterior(playerid);
				HouseData[i][ExteriorWorld] = GetPlayerVirtualWorld(playerid);

				HouseData[i][IntID] = CharacterData[playerid][HouseCreateIntID];
				HouseData[i][InteriorX] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][X];
				HouseData[i][InteriorY] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][Y];
				HouseData[i][InteriorZ] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][Z];
				HouseData[i][InteriorA] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][A];
				HouseData[i][InteriorInt] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][Int];
				HouseData[i][InteriorWorld] = i+1;

                HouseData[i][LockerX] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][LX];
                HouseData[i][LockerY] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][LY];
                HouseData[i][LockerZ] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][LZ];

				House_Refresh(i);
				mysql_update(Database, "INSERT INTO `houses` (`ID`) VALUES (%d)", HouseData[i][ID]);
				House_SaveData(i);

				printf("House ID %d, DbID %d created.", i, HouseData[i][ID]);

                CharacterData[playerid][HouseCreateIntID] = -1;
                CharacterData[playerid][HouseCreatePrice] = 0;
				return i;
			}
		}
	}
    return 1;
}

Dialog:HouseAdminEditID(playerid, response, listitem, inputtext[]) {
    if(!response) return Dialog_Show(playerid, HouseAdminMenu, DS_LIST, "ADMIN HOUSE MENU", "Tao mot can nha\nChinh sua mot can nha\nXoa mot can nha\nDich chuyen den mot can nha", "Chon", "Dong");
    if(!IsNumeric(inputtext) || strval(inputtext) == -1) return ErrorMsg(playerid, "ID cua can nha khong hop le.");
    static house; house = strval(inputtext);
    static title[32], caption[256];
    if(!HouseData[house][Created]) return ErrorMsg(playerid, "can nha nay khong ton tai.");
    CharacterData[playerid][HouseAdminID] = house;
    format(title, sizeof title, "House ID %d", CharacterData[playerid][HouseAdminID]);
    format(caption, sizeof caption, "Interior ID: \t%d\nGia tien:\t$%s\nVi tri loi vao\nVi tri loi ra\nVi tri locker", HouseData[house][IntID], fNumber(HouseData[house][Price]));
    Dialog_Show(playerid, HouseAdminEdit, DS_TABLIST, title, caption, "Chon", "Thoat");
}

Dialog:HouseAdminEdit(playerid, response, listitem, inputtext[]) {
    if(response) {
        switch(listitem) {
            case 0: Dialog_Show(playerid, HouseAEdit_IntID, DS_INPUT, "INTERIOR ID", "\\cNhap interior id cho can nha nay:", "Xong", "Quay lai");
            case 1: Dialog_Show(playerid, HouseAEdit_Price, DS_INPUT, "GIA TIEN", "\\cNhap gia tien mua nha cho can nha nay:", "Xong", "Quay lai");
            case 2: Dialog_Show(playerid, HouseAEdit_Ext, DS_MSGBOX, "VI TRI LOI VAO", "\\cBan co muon dat vi tri loi vao la vi tri hien tai cua ban khong?", "Co", "Khong");
            case 3: Dialog_Show(playerid, HouseAEdit_Int, DS_MSGBOX, "VI TRI LOI RA", "\\cBan co muon dat vi tri loi ra la vi tri hien tai cua ban khong?", "Co", "Khong");
            case 4: Dialog_Show(playerid, HouseAEdit_Locker, DS_MSGBOX, "VI TRI LOCKER", "\\cBan co muon dat vi tri locker la vi tri hien tai cua ban khong?", "Co", "Khong");
        }
    }
    if(!response) {
        CharacterData[playerid][HouseAdminID] = -1;
    	CharacterData[playerid][HouseCreateIntID] = -1;
    	CharacterData[playerid][HouseCreatePrice] = 0;
        return Dialog_Show(playerid, HouseAdminMenu, DS_LIST, "ADMIN HOUSE MENU", "Tao mot can nha\nChinh sua mot can nha\nXoa mot can nha\nDich chuyen den mot can nha", "Chon", "Dong");
    }
    return 1;
}

Dialog:HouseAEdit_IntID(playerid, response, listitem, inputtext[]) {
    new str[32], intid = strval(inputtext);
    new house = CharacterData[playerid][HouseAdminID];
    if(!response) {
        format(str, sizeof str, "%d", house);
        return dialog_HouseAdminEditID(playerid, true, 0, str);
    }
    if(intid >= sizeof(arrHouseInteriors) || !IsNumeric(inputtext)) {
        ErrorMsg(playerid, "Interior ID phai tu 0 - %d.", sizeof(arrHouseInteriors)-1);
        return dialog_HouseAdminEdit(playerid, true, 0, "");
    }

    HouseData[house][IntID] = intid;
    HouseData[house][InteriorX] = arrHouseInteriors[intid][X];
    HouseData[house][InteriorY] = arrHouseInteriors[intid][Y];
    HouseData[house][InteriorZ] = arrHouseInteriors[intid][Z];
    HouseData[house][InteriorA] = arrHouseInteriors[intid][A];
    HouseData[house][InteriorInt] = arrHouseInteriors[intid][Int];

    HouseData[house][LockerX] = arrHouseInteriors[intid][LX];
    HouseData[house][LockerY] = arrHouseInteriors[intid][LY];
    HouseData[house][LockerZ] = arrHouseInteriors[intid][LZ];

    House_Refresh(house);
    House_SaveData(house);

    format(str, sizeof str, "%d", house);
    dialog_HouseAdminEditID(playerid, true, 0, str);
    return 1;
}

Dialog:HouseAEdit_Price(playerid, response, listitem, inputtext[]) {
    new str[32];
    static house; house = CharacterData[playerid][HouseAdminID];
    if(!response) {
        format(str, sizeof str, "%d", house);
        return dialog_HouseAdminEditID(playerid, true, 0, str);
    }
    if(!IsNumeric(inputtext)) {
        dialog_HouseAdminEdit(playerid, true, 1, "");
        return ErrorMsg(playerid, "Gia tien khong hop le.");
    }
    if(strval(inputtext) <= 0) {
        dialog_HouseAdminEdit(playerid, true, 1, "");
        return ErrorMsg(playerid, "Gia tien cua can nha phai lon hon 0.");
    }
    HouseData[house][Price] = strval(inputtext);
    House_Refresh(house);
    House_SaveData(house);

    format(str, sizeof str, "%d", house);
    dialog_HouseAdminEditID(playerid, true, 0, str);
    return 1;
}

Dialog:HouseAEdit_Ext(playerid, response, listitem, inputtext[]) {
    new str[32];
    static house; house = CharacterData[playerid][HouseAdminID];
    if(!response) {
        format(str, sizeof str, "%d", house);
        dialog_HouseAdminEditID(playerid, true, 0, str);
        return 0;
    }
    GetPlayerPos(playerid, HouseData[house][ExteriorX], HouseData[house][ExteriorY], HouseData[house][ExteriorZ]);
    GetPlayerFacingAngle(playerid, HouseData[house][ExteriorA]);
    HouseData[house][ExteriorInt] = GetPlayerInterior(playerid);
    HouseData[house][ExteriorWorld] = GetPlayerVirtualWorld(playerid);
    House_Refresh(house);
    House_SaveData(house);
    SuccessMsg(playerid, "Dat vi tri loi vao cua house id %d thanh cong.", house);

    format(str, sizeof str, "%d", house);
    dialog_HouseAdminEditID(playerid, true, 0, str);
    return 1;
}

Dialog:HouseAEdit_Int(playerid, response, listitem, inputtext[]) {
    new str[32];
    static house; house = CharacterData[playerid][HouseAdminID];
    if(!response) {
        format(str, sizeof str, "%d", house);
        dialog_HouseAdminEditID(playerid, true, 0, str);
        return 0;
    }
    GetPlayerPos(playerid, HouseData[house][InteriorX], HouseData[house][InteriorY], HouseData[house][InteriorZ]);
    GetPlayerFacingAngle(playerid, HouseData[house][InteriorA]);
    HouseData[house][InteriorInt] = GetPlayerInterior(playerid);
    HouseData[house][InteriorWorld] = GetPlayerVirtualWorld(playerid);
    House_Refresh(house);
    House_SaveData(house);
    SuccessMsg(playerid, "Dat vi tri loi ra cua house id %d thanh cong.", house);
    format(str, sizeof str, "%d", house);
    dialog_HouseAdminEditID(playerid, true, 0, str);
    return 1;
}

Dialog:HouseAEdit_Locker(playerid, response, listitem, inputtext[]) {
    new str[32];
    static house; house = CharacterData[playerid][HouseAdminID];
    if(!response) {
        format(str, sizeof str, "%d", house);
        dialog_HouseAdminEditID(playerid, true, 0, str);
        return 0;
    }
    if(HouseData[house][InteriorInt] != GetPlayerInterior(playerid) || HouseData[house][InteriorWorld] != GetPlayerVirtualWorld(playerid)) return ErrorMsg(playerid, "Ban can phai o trong can nha do.");
    GetPlayerPos(playerid, HouseData[house][LockerX], HouseData[house][LockerY], HouseData[house][LockerZ]);
    House_Refresh(house);
    House_SaveData(house);
    SuccessMsg(playerid, "Dat vi tri locker cua house id %d thanh cong.", house);

    format(str, sizeof str, "%d", house);
    dialog_HouseAdminEditID(playerid, true, 0, str);
    return 1;
}

Alias:lockhouse("khoanha", "hlock", "houselock");
Cmd:lockhouse(playerid) {
    new id = -1;
    if((id = House_Nearest(playerid)) == -1) return ErrorMsg(playerid, "Ban khong dung gan can nha nao ca.");
    if(!(House_IsPlayerOutside(playerid, id) || House_IsPlayerNearExt(playerid, id))) return ErrorMsg(playerid, "Ban can phai dung o truoc loi ra vao cua can nha.");
    if(IsPlayerInAnyVehicle(playerid)) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong nay khi o tren mot phuong tien.");
    if(!HouseData[id][Owned]) return 0;
    if(!House_IsOwner(playerid, id)) return ErrorMsg(playerid, "Ban khong co chia khoa cua can nha nay.");
    PlayerPlaySound(playerid, 1145, 0, 0, 0);
    if(HouseData[id][Locked]) return HouseData[id][Locked] = 0, GameTextForPlayerf(playerid, 2000, 6, "~g~Mo khoa");
    if(!HouseData[id][Locked]) return HouseData[id][Locked] = 1, GameTextForPlayerf(playerid, 2000, 6, "~r~Da khoa");
    return 1;
}

Alias:viewhouse("xemnha", "hview", "houseview");
Cmd:viewhouse(playerid, params[]) {
    new id = -1;
    if((id = House_Nearest(playerid)) == -1) return ErrorMsg(playerid, "Ban khong dung gan can nha nao ca.");
    if(!House_IsPlayerOutside(playerid, id)) return 0;
    if(IsPlayerInAnyVehicle(playerid)) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong nay khi o tren mot phuong tien.");
    if(HouseData[id][Owned]) return 0;
    if(House_IsOwner(playerid, id)) return ErrorMsg(playerid, "Ban da so huu can nha nay, dung /enter de vao trong nha.");
    SetPlayerCompensatedPos(playerid, HouseData[id][InteriorX], HouseData[id][InteriorY], HouseData[id][InteriorZ], HouseData[id][InteriorA], 3000, HouseData[id][InteriorWorld], HouseData[id][InteriorInt]);
    if(HouseData[id][RadioOn] == 1) PlayAudioStreamForPlayer(playerid, HouseData[id][RadioURL]);
    return 1;
}

Alias:leavehouse("bonha", "hleave", "houseleave");
Cmd:leavehouse(playerid) {
    new id = -1;
    if((id = House_Nearest(playerid)) == -1) return ErrorMsg(playerid, "Ban khong dung gan can nha nao ca.");
    if(!House_IsPlayerOutside(playerid, id)) return ErrorMsg(playerid, "Ban can phai ra ben ngoai can nha truoc.");
    if(IsPlayerInAnyVehicle(playerid)) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong nay khi o tren mot phuong tien.");
    if(!House_IsOwner(playerid, id)) return ErrorMsg(playerid, "Ban khong phai chu so huu cua can nha nay.");

    PlayerPlaySound(playerid, 1055, 0, 0, 0);
    CharacterData[playerid][Cash] += floatround((HouseData[id][Price]*HouseData[id][Level])/10)+HouseData[id][Cash];
    SetPlayerMoney(playerid, CharacterData[playerid][Cash]);
    ShowTDNx(playerid, 3000, "+ $%s", fNumber(floatround((HouseData[id][Price]*HouseData[id][Level])/10)+HouseData[id][Cash]));

    SuccessMsg(playerid, "Ban da bo can nha tai dia chi %d, %s va duoc tra lai $%s",
    id, HouseData[id][Address], floatround((HouseData[id][Price]*HouseData[id][Level])/10)+HouseData[id][Cash]);

    HouseData[id][Owned] = 0;
    format(HouseData[id][Owner], 25, "None");
    HouseData[id][Locked] = 0;
    HouseData[id][Alarm] = 0;
    HouseData[id][Lights] = 0;
    HouseData[id][Level] = 1;
    HouseData[id][Cash] = 0;

    for(new i = 0; i < MAX_HOUSE_INV; i++) {
        HouseInventory[id][i][ItemID] = 0;
        HouseInventory[id][i][Amount] = 0;
        HouseInventory[id][i][Durable] = 0;
        HouseInventory[id][i][MagType] = 0;
        HouseInventory[id][i][MagAmmo] = 0;
        HouseInventory[id][i][ExData] = -1;
    }

    House_Refresh(playerid);
    House_SaveData(id);
    return 1;
}

Alias:upgradehouse("nangcapnha", "hupgrade", "houseupgrade");
Cmd:upgradehouse(playerid, params[]) {
    new id = -1;
    if((id = House_Nearest(playerid)) == -1) return ErrorMsg(playerid, "Ban khong dung gan can nha nao ca.");
    if(!House_IsPlayerInside(playerid, id)) return ErrorMsg(playerid, "Ban can phai vao ben trong can nha de nang cap.");
    if(IsPlayerInAnyVehicle(playerid)) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong nay khi o tren mot phuong tien.");
    if(!House_IsOwner(playerid, id)) return ErrorMsg(playerid, "Ban khong phai chu so huu cua can nha nay.");
    if(HouseData[id][Level] == 3) return ErrorMsg(playerid, "Can nha da dat cap do toi da 3");

    switch(HouseData[id][Level]) {
        case 1: {
            if(CharacterData[playerid][Cash] - HOUSE_UPGR_COST2 < 0) return ErrorMsg(playerid, "So tien yeu cau de nang cap can nha tu cap do 1 len cap do 2 la $%d.", fNumber(HOUSE_UPGR_COST2));
            CharacterData[playerid][Cash] -= HOUSE_UPGR_COST2;
            ShowTDNx(playerid, 3000, "- $%s", fNumber(HOUSE_UPGR_COST2));
            SuccessMsg(playerid, "Ban da nang cap can nha len cap do 2 (+%d slot locker)", HOUSE_LOCKER_SLOT2-HOUSE_LOCKER_SLOT1);
        }
        case 2: {
            if(CharacterData[playerid][Cash] - HOUSE_UPGR_COST3 < 0) return ErrorMsg(playerid, "So tien yeu cau de nang cap can nha tu cap do 2 len cap do 3 la $%d.", fNumber(HOUSE_UPGR_COST3));
            CharacterData[playerid][Cash] -= HOUSE_UPGR_COST3;
            ShowTDNx(playerid, 3000, "- $%s", fNumber(HOUSE_UPGR_COST3));
            SuccessMsg(playerid, "Ban da nang cap can nha len cap do 3 (+%d slot locker)", HOUSE_LOCKER_SLOT3-HOUSE_LOCKER_SLOT2);
        }
    }

    HouseData[id][Level]++;
    House_Refresh(playerid);
    House_SaveData(id);

    SetPlayerMoney(playerid, CharacterData[playerid][Cash]);
    PlayerPlaySound(playerid, 1133, 0, 0, 0);
    return 1;
}

Alias:sellhouse("bannha", "hsell", "housesell");
Cmd:sellhouse(playerid, params[]) {
    new target, price, id = -1;
    if(sscanf(params, "ui", target, price)) return UsageMsg(playerid, "/hsell [ID nguoi choi] [gia tien]");
    if(target == playerid) return ErrorMsg(playerid, "Ban khong the tu ban nha cho chinh minh.");
    if(!IsPlayerInGame(target)) return ErrorMsg(playerid, "Nguoi choi do chua dang nhap vao tro choi.");
    if((id = House_Nearest(playerid)) == -1) return ErrorMsg(playerid, "Ban khong o gan can nha nao ca.");
    if(!IsPlayerInRangeOfPlayer(playerid, target)) return ErrorMsg(playerid, "Nguoi choi do khong o gan ban.");
    if(IsPlayerInAnyVehicle(playerid)) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong nay khi o tren mot phuong tien.");
    if(!House_IsPlayerOutside(playerid, id)) return ErrorMsg(playerid, "Ban can phai ra ben ngoai can nha truoc.");
    CharacterData[target][HouseOrderID] = id;
    CharacterData[target][HouseOrderWith] = playerid;
    CharacterData[target][HouseOrderPrice] = price;

    return 1;
}

Alias:buyhouse("muanha", "hbuy", "housebuy");
Cmd:buyhouse(playerid, params[]) {
    new id = -1;
    if((id = House_Nearest(playerid)) == -1) return ErrorMsg(playerid, "Ban khong o gan can nha nao ca.");
    if(!House_IsPlayerOutside(playerid, id)) return ErrorMsg(playerid, "Ban can phai ra ben ngoai can nha truoc.");
    if(IsPlayerInAnyVehicle(playerid)) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong nay khi o tren mot phuong tien.");
    if(House_IsOwner(playerid, id)) return ErrorMsg(playerid, "Ban da la chu so huu cua can nha nay roi.");
    if(HouseData[id][Owned]) return ErrorMsg(playerid, "Ban khong the mua can nha nay vi da co chu so huu.");
    if(CharacterData[playerid][Cash] < HouseData[id][Price]) {
        static banknum, bankbal;
        sscanf(CharacterData[playerid][Bank], "dd", banknum, bankbal);
        if(bankbal < HouseData[id][Price]) return ErrorMsg(playerid, "So du trong nguoi va so du trong tai khoan ngan hang khong du.");
        format(CharacterData[playerid][Bank], 32, "%d %d", banknum, bankbal-HouseData[id][Price]);
        BankMsg(playerid, "Tai khoan ngan hang da bi tru di $%s, li do: Mua nha dia chi %d, %s", fNumber(HouseData[id][Price]), id, HouseData[id][Address]);
    }
    if(CharacterData[playerid][Cash] >= HouseData[id][Price]) {
        CharacterData[playerid][Cash] -= HouseData[id][Price];
        SetPlayerMoney(playerid, CharacterData[playerid][Cash]);
    }
    PlayerPlaySound(playerid, 1054, 0, 0, 0);
    HouseData[id][Owned] = 1;
    format(HouseData[id][Owner], MAX_PLAYER_NAME, "%s", CharacterData[playerid][Name]);
    SuccessMsg(playerid, "Ban da mua thanh cong mot can nha tai dia chi %d, %s", id, HouseData[id][Address]);
    House_Refresh(id);
    return 1;
}

Alias:houselocker("tudo", "hlocker");
Cmd:houselocker(playerid) {
    new id = -1;
    if((id = House_Nearest(playerid)) == -1) return ErrorMsg(playerid, "Ban khong o gan can nha nao ca.");
    if(!House_IsPlayerNearLocker(playerid, id)) return ErrorMsg(playerid, "Ban khong dung gan locker nao ca.");
    if(!House_IsOwner(playerid, id)) return ErrorMsg(playerid, "Ban khong phai la chu o huu cua can nha nay.");
    if(IsPlayerInAnyVehicle(playerid)) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong nay khi o tren mot phuong tien.");
    CharacterData[playerid][HouseSelectedItem] = -1;
    // Sort
    for(new i = 0; i < MAX_HOUSE_INV; i++) {
        for(new u = i+1; u < MAX_HOUSE_INV; u++) {
            if(HouseInventory[id][i][ItemID]) {
				if(HouseInventory[id][i][ItemID] != HouseInventory[id][u][ItemID]) continue;
                if(HouseInventory[id][i][Durable] != HouseInventory[id][u][Durable]) continue;
                if(Inventory_IsWeapon(HouseInventory[id][i][ItemID]) || Inventory_IsWeapon(HouseInventory[id][u][ItemID])) continue;
				if(HouseInventory[id][i][ExData] != HouseInventory[id][u][ExData]) continue;
                if(HouseInventory[id][i][MagAmmo] != HouseInventory[id][u][MagAmmo]) continue;
                HouseInventory[id][i][Amount] += HouseInventory[id][u][Amount];
				HouseInventory[id][u][ItemID] = 0;
				HouseInventory[id][u][Amount] = 0;
				HouseInventory[id][u][MagType] = 0;
				HouseInventory[id][u][MagAmmo] = 0;
				HouseInventory[id][u][ExData] = -1;
            }
            if(!HouseInventory[id][i][ItemID] && HouseInventory[id][u][ItemID]) {
                SwapInt(HouseInventory[id][u][ItemID], HouseInventory[id][i][ItemID]);
                SwapInt(HouseInventory[id][u][Amount], HouseInventory[id][i][Amount]);
                SwapFloat(HouseInventory[id][u][Durable], HouseInventory[id][i][Durable]);
				SwapInt(HouseInventory[id][u][MagType], HouseInventory[id][i][MagType]);
                SwapInt(HouseInventory[id][u][MagAmmo], HouseInventory[id][i][MagAmmo]);
				SwapInt(HouseInventory[id][u][ExData], HouseInventory[id][i][ExData]);
            }
        }
		if(HouseInventory[id][i][Amount] <= 0) HouseInventory[id][i][ItemID] = 0, HouseInventory[id][i][Amount] = 0;
		if(Inventory_IsWeapon(HouseInventory[id][i][ItemID])) {
			if(HouseInventory[id][i][MagAmmo] <= 0 || HouseInventory[id][i][MagType] <= 0) {
                HouseInventory[id][i][MagAmmo] = 0;
                HouseInventory[id][i][MagType] = 0;
            }
		}
		if(Inventory_IsMagazine(HouseInventory[id][i][ItemID])) {
			if(HouseInventory[id][i][MagAmmo] <= 0) {
				HouseInventory[id][i][ItemID] = 0;
                HouseInventory[id][i][Amount] = 0;
                HouseInventory[id][i][Durable] = 0;
				HouseInventory[id][i][MagType] = 0;
                HouseInventory[id][i][MagAmmo] = 0;
				HouseInventory[id][i][ExData] = -1;
			}
		}
    }
    ClearDialogListitems(playerid);
    AddDialogListitem(playerid, " Vat pham\tDo ben\t_");
    AddDialogListitem(playerid, ""COL_YELLOW" KET SAT: $%s", fNumber(HouseData[id][Cash]));
    for(new i = 0; i < MAX_HOUSE_INV; i++) {
        // Level 3 = remain
        if(HouseInventory[id][i][ItemID]) {
            static weapondata[13][2], exdata, string[4096] = "";
            static itemname[64], itemid, amount, Float:durable, magtype, magammo;
            itemid = HouseInventory[id][i][ItemID];
            amount = HouseInventory[id][i][Amount];
            durable = HouseInventory[id][i][Durable];
            magtype = HouseInventory[id][i][MagType];
            magammo = HouseInventory[id][i][MagAmmo];
            exdata = HouseInventory[id][i][ExData];
            format(itemname, sizeof itemname, "%s", ItemInfo[itemid][Name]);
            for(new u = 0; u < 13; u++) { GetPlayerWeaponData(playerid, u, weapondata[u][0], weapondata[u][1]); }
            format(string, sizeof string, ""COL_WHITE" %s", Inventory_ItemName(itemid));
            switch(exdata) {
                case -1: { }
                default: format(string, sizeof string, "%s %d", string, exdata);
            }
            switch(amount) {
                case 1: { }
                default: format(string, sizeof string, "%s [x%s]", string, fNumber(amount));
            }
            format(string, sizeof string, "%s\t"COL_WHITE"%.1f", string, durable);
            if(Inventory_IsMagazine(itemid)) format(string, sizeof string, "%s\t"COL_WHITE"%d / %d", string, magammo, Inventory_GetMagSize(itemid));
            if(Inventory_IsWeapon(itemid)) format(string, sizeof string, "%s\t"COL_WHITE"%d / %d (%s)", string, magammo, Inventory_GetMagSize(magtype), Inventory_ItemName(magtype));
            AddDialogListitem(playerid, string);
        }
	}
	ShowPlayerDialogPages(playerid, #HouseInventoryMain, DS_HEADERS, ""COL_AQUA"HOUSE LOCKER", "Chon", "Dong", 12, "{F5D400}TRANG SAU", "{F5D400}TRANG TRUOC");
    return 1;
}

DialogPages:HouseInventoryMain(playerid, response, listitem) {
    if(response) {
        new id = -1, str[128];
        if(!IsPlayerInAnyVehicle(playerid) && (id = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, id)) {
            switch(listitem) {
                case 0: {
                    format(str, sizeof str, ""COL_AQUA"HOUSE'S SAFE: "COL_YELLOW"$%s", fNumber(HouseData[id][Cash]));
                    Dialog_Show(playerid, HouseInventorySafe, DS_LIST, str, "CAT TIEN VAO KET SAT\nRUT TIEN TU KET SAT", "Chon", "Quay lai");
                }
                default: {
                    new i;
                    CharacterData[playerid][HouseSelectedItem] = listitem-1;
                    i = CharacterData[playerid][HouseSelectedItem];
                    if(!HouseInventory[id][i][ItemID]) return callcmd::houselocker(playerid);
                    format(str, sizeof str, ""COL_AQUA"HOUSE LOCKER > %s", Inventory_ItemName(HouseInventory[id][i][ItemID]));
                    Dialog_Show(playerid, HouseInventoryItem, DS_LIST, str, "LAY VAT PHAM\nTHONG TIN VAT PHAM", "Chon", "Quay lai");
                }
            }
        }
    }
	return 1;
}

Dialog:HouseInventorySafe(playerid, response, listitem, inputtext[]) {
    new id = -1, str[128];
    if(!response) return callcmd::houselocker(playerid);
    if(!IsPlayerInAnyVehicle(playerid) && (id = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, id)) {
        switch(listitem) {
            case 0: {
                format(str, sizeof str, "\\c"COL_YELLOW"So tien hien tai: $%s\n \\c"COL_WHITE"Nhap so tien ma ban muon cat vao:", fNumber(HouseData[id][Cash]));
                Dialog_Show(playerid, HouseInventorySaveCash, DS_INPUT, ""COL_AQUA"CAT TIEN VAO KET SAT", str, "Cat vao", "Quay lai");
            }
            case 1: {
                format(str, sizeof str, "\\c"COL_YELLOW"So tien hien tai: $%s\n \\c"COL_WHITE"Nhap so tien ma ban muon rut ra:", fNumber(HouseData[id][Cash]));
                Dialog_Show(playerid, HouseInventoryWdCash, DS_INPUT, ""COL_AQUA"RUT TIEN TU KET SAT", str, "Rut ra", "Quay lai");
            }
        }
    }
    return 1;
}

Dialog:HouseInventoryItem(playerid, response, listitem, inputtext[]) {
    new id = -1,
        sel = CharacterData[playerid][HouseSelectedItem];
    if(!response) return callcmd::houselocker(playerid);
    if(!IsPlayerInAnyVehicle(playerid) && (id = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, id)) {
        switch(listitem) {
            case 0: {
                if(HouseInventory[id][sel][Amount] > 1) {
                    
                }
                else House_LockerTakeItem(playerid, id, sel, 1);
            }
            case 1: {

            }
        }
    }
    return 1;
}

Dialog:HouseInventorySaveCash(playerid, response, listitem, inputtext[]) {
    new id = -1, cash = strval(inputtext);
    if(!response) return ndpD_HouseInventoryMain(playerid, true, 0);
    if(!IsNumeric(inputtext)) {
        ErrorMsg(playerid, "So tien cat vao khong hop le.");
        return dialog_HouseInventorySafe(playerid, true, 0, "");
    }
    if(cash <= 0) {
        ErrorMsg(playerid, "So tien cat vao phai lon hon 0.");
        return dialog_HouseInventorySafe(playerid, true, 0, "");
    }
    if(!IsPlayerInAnyVehicle(playerid) && (id = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, id)) {
        if(CharacterData[playerid][Cash] < cash) {
            ErrorMsg(playerid, "So tien tren nguoi cua ban nho hon $%s.", fNumber(cash));
            return dialog_HouseInventorySafe(playerid, true, 0, "");
        }
        CharacterData[playerid][Cash] -= cash;
        SetPlayerMoney(playerid, CharacterData[playerid][Cash]);
        HouseData[id][Cash] += cash;

        SuccessMsg(playerid, "Ban da cat so tien $%s vao trong ket sat.", fNumber(cash));
        return dialog_HouseInventorySafe(playerid, false, 0, "");
    }
    return 1;
}

Dialog:HouseInventoryWdCash(playerid, response, listitem, inputtext[]) {
    new id = -1, cash = strval(inputtext);
    if(!response) return ndpD_HouseInventoryMain(playerid, true, 0);
    if(!IsNumeric(inputtext)) {
        ErrorMsg(playerid, "So tien rut ra khong hop le.");
        return dialog_HouseInventorySafe(playerid, true, 1, "");
    }
    if(cash <= 0) {
        ErrorMsg(playerid, "So tien rut ra phai lon hon 0.");
        return dialog_HouseInventorySafe(playerid, true, 1, "");
    }
    if(!IsPlayerInAnyVehicle(playerid) && (id = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, id)) {
        if(HouseData[id][Cash] < cash) {
            ErrorMsg(playerid, "So tien trong ket sat cua can nha nho hon $%s.", fNumber(cash));
            return dialog_HouseInventorySafe(playerid, true, 1, "");
        }
        CharacterData[playerid][Cash] += cash;
        SetPlayerMoney(playerid, CharacterData[playerid][Cash]);
        HouseData[id][Cash] -= cash;

        SuccessMsg(playerid, "Ban da rut so tien $%s vao trong ket sat.", fNumber(cash));
        return dialog_HouseInventorySafe(playerid, false, 0, "");
    }
    return 1;
}
