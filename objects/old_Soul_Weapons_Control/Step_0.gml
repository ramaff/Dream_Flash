for (var i = 0; i < 5; i++) {
    if (weapon[i,1] = 0) {
        global.currentweapon = weapon[i,2];
    }
}

if keyboard_check_pressed(ord(global.gameWeaponSwapDown)) {
	scr_Weapon_Switch(1);
}
if keyboard_check_pressed(ord(global.gameWeaponSwapUp)) {
	scr_Weapon_Switch(0);
}