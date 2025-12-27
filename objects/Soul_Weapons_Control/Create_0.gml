//weapon #
for(var _i = 0; _i < 20; _i++) {
	weapon[_i] = {
		"slot": _i,
		"weapon_id": 0
	}
}
weapon[0].weapon_id = 1;

weapon_slot_info = []

angular_rotation = 0;
check_time = 0;

scr_Weapon_Slot_Info_Update(weapon_slot_info)	
