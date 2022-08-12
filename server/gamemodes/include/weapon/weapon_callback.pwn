
hook function ResetPlayerVars(playerid) {
	for(new i = 0; i < 13; i++) {
        WeaponDataEx[playerid][i][0] = 0;
        WeaponDataEx[playerid][i][1] = 0;
        WeaponDataEx[playerid][i][2] = 0;
    }
	continue(playerid);
}

Cmd:weaponexdebug(playerid) {
    ClientMsg(playerid, -1, " ");
    ClientMsg(playerid, -1, "Cur weap slot: %d", GetWeaponSlot(GetPlayerWeapon(playerid)));
    ClientMsg(playerid, -1, "Cur weap id: %d", WeaponDataEx[playerid][GetWeaponSlot(GetPlayerWeapon(playerid))][0]);
    ClientMsg(playerid, -1, "Cur weap ammo: %d", WeaponDataEx[playerid][GetWeaponSlot(GetPlayerWeapon(playerid))][1]);
    ClientMsg(playerid, -1, "Cur weap mag type: %s", InvItemName[WeaponDataEx[playerid][GetWeaponSlot(GetPlayerWeapon(playerid))][2]]);
    return 1;
}

OnPlayerWeaponShotEx(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ)
{
    WeaponDataEx[playerid][GetWeaponSlot(weaponid)][1]--;
    if(WeaponDataEx[playerid][GetWeaponSlot(weaponid)][1] <= 0) {
        WeaponDataEx[playerid][GetWeaponSlot(weaponid)][1] = 0;
        WeaponDataEx[playerid][GetWeaponSlot(weaponid)][2] = 0;
    }
    if(IsGunItem(weaponid) && !WeaponDataEx[playerid][GetWeaponSlot(weaponid)][2]) return 0;
    return 1;
}
