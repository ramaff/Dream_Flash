
global.currentweapon = variable_struct_get(weapon[0], "weapon_id");

if angular_rotation != 0 {
	scr_Weapon_Slot_Info_Update(Soul_Weapons_Control.weapon_slot_info)	
}

if keyboard_check_pressed(ord(global.gameWeaponSwapDown)) {
	scr_Weapon_Switch(1);
}
if keyboard_check_pressed(ord(global.gameWeaponSwapUp)) {
	scr_Weapon_Switch(-1);
}
