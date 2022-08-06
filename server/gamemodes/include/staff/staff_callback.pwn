
Cmd:sduty(playerid, params[]) {
	// test
	if(!IsHelper(playerid)) return NotAdminMsg(playerid);
	SetStaffDuty(playerid, true);
	return 1;
}
