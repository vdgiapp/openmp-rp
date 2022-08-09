
Staff_OnGameModeInit() {
	for(new id = 0; id < MAX_STAFF_ID; id++) {
		static str[128]; format(str, sizeof str, "SELECT * FROM `staff` WHERE `SID` = '%d'", id);
		mysql_tquery(Database, str, "OnGetStaffData", "i", id);
	}
	return 1;
}

function OnGetStaffData(id) {
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

IsStaffSpectating(playerid) {
	static id;
	if((id = GetStaffID(playerid)) == -1) return -1;
	if((id = GetStaffID(playerid)) != -1 && StaffData[id][Spectating]) return 1;
	if((id = GetStaffID(playerid)) != -1 && !StaffData[id][Spectating]) return 0;
}

MsgToAdmin(color, msg[], va_args<>) {
	foreach(new p : Player) {
		if(IsStaff(p, TRIAL_ADMIN_RANK)) return ClientMsg(p, color, msg, va_start<2>);
	}
}

NoPermsMsg(playerid) {
	ErrorMsg(playerid, "Ban khong du tham quyen de su dung lenh nay.");
}

GetStaffSetting(playerid, type[]) {
	static id;
	if((id = GetStaffID(playerid)) != -1 && IsStaff(playerid, HELPER_RANK)) {
		if(isequal(type, #logPM)) return StaffData[id][logPM];
		if(isequal(type, #logCMD)) return StaffData[id][logCMD];
		if(isequal(type, #logKill)) return StaffData[id][logKill];
		if(isequal(type, #logNewb)) return StaffData[id][logNewb];
	}
}

SendPMLog(from, to, text[]) {
	foreach(new p : Player) {
		static sid; sid = GetStaffID(p);
		if(sid == -1) continue;
		if(IsStaff(p, TRIAL_ADMIN_RANK) && GetStaffSetting(p, #logPM)) {
			ClientMsg(p, COLOR_GREY, "@ (( PM tu %s [%d] den %s [%d]: %s ))", GetRoleplayName(PlayerName(from)), from, GetRoleplayName(PlayerName(to)), to, text);
		}
	}
	flog(PM_LOG_FILE, "PM tu %s den %s: %s", GetRoleplayName(PlayerName(from)), GetRoleplayName(PlayerName(to)), text);
}

SendStaffCMDLog(playerid, cmd[]) {
	static sid; sid = GetStaffID(playerid);
	foreach(new p : Player) {
		if(sid == -1) break;
		if(IsStaff(p, TRIAL_ADMIN_RANK) && GetStaffSetting(playerid, #logCMD)) {
			ClientMsg(p, COLOR_GREY, "@ %s %s da su dung lenh: %s", GetStaffRankName(StaffData[sid][Rank]), StaffData[sid][Nick], cmd);

		}
	}
	flog(ADM_LOG_FILE, "%s %s [AID: %d] da su dung lenh: %s", GetStaffRankName(StaffData[sid][Rank]), StaffData[sid][Nick], sid, cmd);
}

SendKillLog(killer, target, weapon) {
	foreach(new p : Player) {
		static sid; sid = GetStaffID(p);
		if(sid == -1) continue;
		if(IsStaff(p, TRIAL_ADMIN_RANK) && GetStaffSetting(playerid, #logKill)) {
			SendDeathMessage(killer, target, weapon);
		}
	}
	flog(DMG_LOG_FILE, "%s da giet %s bang vu khi %d", GetRoleplayName(CharacterData[killer][Name]), GetRoleplayName(CharacterData[target][Name]), WeaponName(weapon));
}
