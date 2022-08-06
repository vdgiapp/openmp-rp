
Cmd:sduty(playerid, params[]) {
	// test
	if(!IsHelper(playerid)) return NotAdminMsg(playerid);
	ToggleStaffDuty(playerid);
	return 1;
}

Cmd:study(playerid, params[]) {
	// test
	if(!IsHelper(playerid)) return NotAdminMsg(playerid);
	ErrorMsg(playerid, "La /sduty chu khong phai /study nha ~ baka =))");
	return 1;
}
