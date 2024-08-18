
global.currentweapon = variable_struct_get(weapon[0], "weapon_id");

if keyboard_check_pressed(ord(global.gameWeaponSwapDown)) {
	scr_Weapon_Switch(1);
}
if keyboard_check_pressed(ord(global.gameWeaponSwapUp)) {
	scr_Weapon_Switch(-1);
}