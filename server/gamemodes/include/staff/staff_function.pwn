
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
		printf("Staff data id %d loaded", id);
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

IsStaff(playerid, rank) {
	static id;
	if((id = GetStaffID(playerid)) != -1 && StaffData[id][Rank] >= rank) return true;
	return false;
}

IsStaffOnDuty(playerid) {
	static id;
	if((id = GetStaffID(playerid)) == -1) return -1;
	if((id = GetStaffID(playerid)) != -1 && StaffData[id][OnDuty]) return 1;
	if((id = GetStaffID(playerid)) != -1 && !StaffData[id][OnDuty]) return 0;
}

GetHelppedAmount(playerid) {
	static id;
	if((id = GetStaffID(playerid)) != -1 && IsStaff(playerid, HELPER_RANK)) return StaffData[id][Helped];
	return 0;
}

MsgToAdmin(color, msg[], va_args<>) {
	foreach(new p : Player) {
		if(IsStaff(p, TRIAL_ADMIN_RANK)) return ClientMsg(p, color, msg, va_start<2>);
	}
}

NoPermsMsg(playerid) {
	ErrorMsg(playerid, "Ban khong du tham quyen de su dung lenh nay.");
}

ToggleStaffNick(playerid, bool:toggle) {
	static id;
	if(!toggle) SetPlayerName(playerid, CharacterData[playerid][Name]);
	if(toggle) {
		if((id = GetStaffID(playerid)) != -1 && IsStaff(playerid, TRIAL_ADMIN_RANK)) {
			SetPlayerName(playerid, StaffData[id][Nick]);
			return true;
		}
		return false;
	}
}

ToggleStaffDuty(playerid) {
	static id, str[256];
	if((id = GetStaffID(playerid)) != -1 && IsStaff(playerid, HELPER_RANK)) {
		if(!StaffData[id][OnDuty]) {
			MsgToAdmin(COLOR_LIGHTRED, "STAFF > \"%s\" %s da on-duty.", GetStaffRankName(StaffData[id][Rank]), StaffData[id][Nick]);
			return StaffData[id][OnDuty] = true;
		}
		if(StaffData[id][OnDuty]) {
			MsgToAdmin(COLOR_LIGHTRED, "STAFF > \"%s\" %s da off-duty.", GetStaffRankName(StaffData[id][Rank]), StaffData[id][Nick]);
			return StaffData[id][OnDuty] = false;
		}
	}
}

ToggleStaffSetting(playerid, type[], bool:value) {
	static id;
	if((id = GetStaffID(playerid)) != -1 && IsStaff(playerid, HELPER_RANK)) {
		if(isequal(type, "togPM")) StaffData[id][togPM] = value;
		if(isequal(type, "togCMD")) StaffData[id][togCMD] = value;
		if(isequal(type, "togKill")) StaffData[id][togKill] = value;
		if(isequal(type, "togNewb")) StaffData[id][togNewb] = value;
	}
}

GetStaffSetting(playerid, type[]) {
	static id;
	if((id = GetStaffID(playerid)) != -1 && IsStaff(playerid, HELPER_RANK)) {
		if(isequal(type, "togPM")) return StaffData[id][togPM];
		if(isequal(type, "togCMD")) return StaffData[id][togCMD];
		if(isequal(type, "togKill")) return StaffData[id][togKill];
		if(isequal(type, "togNewb")) return StaffData[id][togNewb];
	}
}

SendStaffPM(from, to, text[]) {
	foreach(new p : Player) {
		static sid; sid = GetStaffID(p);
		if(sid == -1) continue;
		if(IsStaff(p, TRIAL_ADMIN_RANK) && GetStaffSetting(p, #togPM)) {
			static str[128];
			format(str, sizeof str, "@ (( PM tu %s [%d] den %s [%d]: %s ))", GetRoleplayName(PlayerName(from)), from, GetRoleplayName(PlayerName(to)), to, text);
			ClientMsg(p, COLOR_GREY, str);
		}
	}
}

SendStaffCMD(playerid, cmd[]) {
	foreach(new p : Player) {
		static sid; sid = GetStaffID(playerid);
		if(sid == -1) break;
		if(IsStaff(p, TRIAL_ADMIN_RANK) && GetStaffSetting(playerid, #togCMD)) {
			static str[128]; format(str, sizeof str, "@ \"%s\" %s da su dung lenh /%s", GetStaffRankName(StaffData[sid][Rank]), StaffData[sid][Nick], cmd);
			ClientMsg(p, COLOR_GREY, str);
		}
	}
}

SendStaffKill(killer, target, weapon) {
	foreach(new p : Player) {
		static sid; sid = GetStaffID(p);
		if(sid == -1) continue;
		if(IsStaff(p, TRIAL_ADMIN_RANK) && GetStaffSetting(playerid, #togKill)) {
			SendDeathMessage(killer, target, weapon);
		}
	}
}
