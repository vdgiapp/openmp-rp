
GivePlayerWeaponEx(playerid, weaponid, ammo, magtype) {
    if(WeaponDataEx[playerid][GetWeaponSlot(weaponid)][0]) return 0;
    WeaponDataEx[playerid][GetWeaponSlot(weaponid)][0] = weaponid;
    WeaponDataEx[playerid][GetWeaponSlot(weaponid)][1] = ammo;
    WeaponDataEx[playerid][GetWeaponSlot(weaponid)][2] = magtype;
    if(magtype) GivePlayerWeapon(playerid, weaponid, ammo);
    if(!magtype) GivePlayerWeapon(playerid, weaponid, 1);
    return 1;
}

IsWeaponSlotUsedEx(playerid, slot) {
    if(WeaponDataEx[playerid][slot][0]) return true;
    return false;
}

IsPlayerHaveWeapon(playerid, weaponid) {
    if(WeaponDataEx[playerid][GetWeaponSlot(weaponid)][0] == weaponid) return true;
    return false;
}

SetPlayerAmmoEx(playerid, weaponid, ammo) {
    if(WeaponDataEx[playerid][GetWeaponSlot(weaponid)][0] == weaponid) {
        if(ammo) WeaponDataEx[playerid][GetWeaponSlot(weaponid)][1] = ammo;
        if(!ammo) {
            WeaponDataEx[playerid][GetWeaponSlot(weaponid)][1] = 0;
            WeaponDataEx[playerid][GetWeaponSlot(weaponid)][2] = 0;
        }
    }
    return SetPlayerAmmo(playerid, weaponid, ammo);
}

GetPlayerAmmoEx(playerid, weaponid) {
    return WeaponDataEx[playerid][GetWeaponSlot(weaponid)][1];
}

GetPlayerWeaponMagType(playerid, weaponid) {
    return WeaponDataEx[playerid][GetWeaponSlot(weaponid)][2];
}

SetPlayerArmedWeaponEx(playerid, weaponid) {
    return SetPlayerArmedWeapon(playerid, WeaponDataEx[playerid][GetWeaponSlot(weaponid)][0]);
}

GetPlayerWeaponDataEx(playerid, slot, &weapons, &ammo, &magtypeid) {
    weapons = WeaponDataEx[playerid][slot][0];
    ammo = WeaponDataEx[playerid][slot][1];
    magtypeid = WeaponDataEx[playerid][slot][2];
}

RemovePlayerWeaponEx(playerid, weaponid) {
    WeaponDataEx[playerid][GetWeaponSlot(weaponid)][0] = 0;
    WeaponDataEx[playerid][GetWeaponSlot(weaponid)][1] = 0;
    WeaponDataEx[playerid][GetWeaponSlot(weaponid)][2] = 0;
    return RemovePlayerWeapon(playerid, weaponid);
}
