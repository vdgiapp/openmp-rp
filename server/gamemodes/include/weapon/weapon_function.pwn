
GivePlayerWeaponEx(playerid, weaponid, ammo, magtype) {
    if(IsPlayerHaveWeaponEx(playerid, weaponid)) return 0;
    if(IsWeaponSlotUsedEx(playerid, GetWeaponSlotEx(weaponid))) return -1;
    WeaponDataEx[playerid][GetWeaponSlotEx(weaponid)][0] = weaponid;
    WeaponDataEx[playerid][GetWeaponSlotEx(weaponid)][1] = ammo;
    WeaponDataEx[playerid][GetWeaponSlotEx(weaponid)][2] = magtype;
    if(magtype) GivePlayerWeapon(playerid, weaponid, ammo);
    if(!magtype) GivePlayerWeapon(playerid, weaponid, 0);
    return 1;
}

GivePlayerAmmoEx(playerid, weaponid, ammo) {
    if(IsPlayerHaveWeaponEx(playerid, weaponid)) {
        WeaponDataEx[playerid][GetWeaponSlotEx(weaponid)][1] += ammo;
        SetPlayerAmmo(playerid, weaponid, GetPlayerAmmoEx(playerid, weaponid)+ammo);
        return 1;
    }
    return 0;
}

IsWeaponSlotUsedEx(playerid, slot) {
    if(WeaponDataEx[playerid][slot][0]) return true;
    return false;
}

IsPlayerHaveWeaponEx(playerid, weaponid) {
    if(WeaponDataEx[playerid][GetWeaponSlotEx(weaponid)][0] == weaponid) return true;
    return false;
}

SetPlayerAmmoEx(playerid, weaponid, ammo) {
    if(IsPlayerHaveWeaponEx(playerid, weaponid)) {
        if(ammo) WeaponDataEx[playerid][GetWeaponSlotEx(weaponid)][1] = ammo;
        if(!ammo) {
            WeaponDataEx[playerid][GetWeaponSlotEx(weaponid)][1] = 0;
            WeaponDataEx[playerid][GetWeaponSlotEx(weaponid)][2] = 0;
        }
        SetPlayerAmmo(playerid, weaponid, ammo);
        return 1;
    }
    SetPlayerAmmo(playerid, 0, 0);
    return 0;
}

SetPlayerArmedWeaponEx(playerid, weaponid) {
    if(IsPlayerHaveWeaponEx(weaponid)) {
        SetPlayerArmedWeapon(playerid, weaponid);
        return 1;
    }
    return 0;
}

RemovePlayerWeaponEx(playerid, weaponid) {
    if(IsPlayerHaveWeaponEx(playerid, weaponid)) {
        WeaponDataEx[playerid][GetWeaponSlotEx(weaponid)][0] = 0;
        WeaponDataEx[playerid][GetWeaponSlotEx(weaponid)][1] = 0;
        WeaponDataEx[playerid][GetWeaponSlotEx(weaponid)][2] = 0;
        RemovePlayerWeapon(playerid, weaponid);
        return 1;
    }
    return 0;
}

GetWeaponSlotEx(weaponid) {
    static slot; slot = GetWeaponSlot(weaponid);
    if(slot == 0) return 0;
    if(slot == 1) return 1;
    if(1 < slot < 9) return 2;
    if(slot == 9) return 3;
    if(slot == 11) return 4;
    return -1;
}

GetWeaponInSlotEx(playerid, slot) {
    return WeaponDataEx[playerid][slot][0];
}

GetPlayerWeaponEx(playerid, slot) {
    return WeaponDataEx[playerid][slot][0];
}

GetPlayerAmmoEx(playerid, weaponid) {
    return WeaponDataEx[playerid][GetWeaponSlotEx(weaponid)][1];
}

GetWeaponMagType(playerid, weaponid) {
    return WeaponDataEx[playerid][GetWeaponSlotEx(weaponid)][2];
}
