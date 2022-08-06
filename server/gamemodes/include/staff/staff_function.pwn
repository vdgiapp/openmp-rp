
Staff_OnGameModeInit() {
	for(new id = 0; id < MAX_STAFF_ID; id++) {
		static str[128]; format(str, sizeof str, "SELECT * FROM `staff` WHERE `SID` = '%d'", id);
		mysql_tquery(Database, str, "OnGetAdminData", "i", id);
	}
	return 1;
}

function OnGetAdminData(id) {
	if(cache_num_rows()) {
		format(StaffData[id][Account], 25, "%s", cache_value_string(0, "Account"));
		format(StaffData[id][Nick], 25, "%s", cache_value_string(0, "Nick"));
		StaffData[id][Rank] = cache_value_int(0, "Rank");
		StaffData[id][Helped] = cache_value_int(0, "Helped");
		printf("Get Staff Data - ID: %d", id);
	}
	return 1;
}

GetStaffID(playerid) {
	for(new id = 0; id < MAX_STAFF_ID; id++) {
		if(isequal(StaffData[id][Account], AuthData[playerid][Account])) return id;
	}
	return -1;
}

GetStaffRankName(rank) {
	static name[32];
	switch(rank) {
		case HELPER_RANK : name = "Helper";
 		case TRIAL_ADMIN_RANK : name = "Trial Admin";
 		case OFFICAL_ADMIN_RANK : name = "Administrator";
 		case JUNIOR_ADMIN_RANK : name = "Junior Admin";
 		case SENIOR_ADMIN_RANK : name = "Senior Admin";
 		case LEAD_ADMIN_RANK : name = "Lead Admin";
 		case HEAD_ADMIN_RANK : name = "Head Admin";
 		case MANAGER_RANK : name = "Management";
 		case DEVELOPER_RANK : name = "Developer";
 		case FOUNDER_RANK : name = "Founder";
	}
	return name;
}

IsAdmin(playerid) {
	static id;
	if((id = GetStaffID(playerid)) != -1 && StaffData[id][Rank] >= TRIAL_ADMIN_RANK) return true;
	return false;
}

IsHelper(playerid) {
	static id;
	if((id = GetStaffID(playerid)) != -1 && StaffData[id][Rank] >= HELPER_RANK) return true;
	return false;
}

GetHelppedAmount(playerid) {
	static id;
	if((id = GetStaffID(playerid)) != -1 && IsHelper(playerid)) return StaffData[playerid][Helped];
	return 0;
}

MsgToAdmin(color, msg[], va_args<>) {
	foreach(new p : Player) {
		if(IsAdmin(p)) return ClientMsg(p, color, msg, va_start<2>);
	}
}

NotAdminMsg(playerid) {
	ErrorMsg(playerid, "Ban khong co quyen de su dung lenh nay.");
}

ToggleStaffNick(playerid, bool:toggle) {
	static id;
	if(!toggle) SetPlayerName(playerid, CharacterData[playerid][Name]);
	if(toggle) {
		if((id = GetStaffID(playerid)) != -1 && IsAdmin(playerid)) {
			SetPlayerName(playerid, StaffData[id][Nick]);
			return true;
		}
		return false;
	}
}

SetStaffDuty(playerid, bool:status) {
	static id, str[256];
	if((id = GetStaffID(playerid)) != -1 && IsHelper(playerid)) {
		StaffData[id][OnDuty] = status;
		if(status) {
			SetPlayerName(playerid, StaffData[id][Nick]);
			MsgToAdmin(COLOR_LIGHTRED, "STAFF > [%s] %s da on-duty.", GetStaffRankName(StaffData[id][Rank]), StaffData[id][Nick]);
		}
		if(!status) {
			SetPlayerName(playerid, CharacterData[playerid][Name]);
			MsgToAdmin(COLOR_LIGHTRED, "STAFF > [%s] %s da off-duty.", GetStaffRankName(StaffData[id][Rank]), StaffData[id][Nick]);
		}
	}
}

ToggleStaffSettings(playerid, type[], bool:value) {
	static id;
	if((id = GetStaffID(playerid)) != -1 && IsHelper(playerid)) {
		if(isequal(type, "togPM")) StaffData[id][togPM] = value;
		if(isequal(type, "togCMD")) StaffData[id][togCMD] = value;
		if(isequal(type, "togKill")) StaffData[id][togKill] = value;
		if(isequal(type, "togNewb")) StaffData[id][togNewb] = value;
	}
}

GetStaffSettings(playerid, type[]) {
	static id;
	if((id = GetStaffID(playerid)) != -1 && IsHelper(playerid)) {
		if(isequal(type, "togPM")) return StaffData[id][togPM];
		if(isequal(type, "togCMD")) return StaffData[id][togCMD];
		if(isequal(type, "togKill")) return StaffData[id][togKill];
		if(isequal(type, "togNewb")) return StaffData[id][togNewb];
	}
}
