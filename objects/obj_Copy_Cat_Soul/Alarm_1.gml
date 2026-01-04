senergy = 100;
sdelay = 0;
bi = 0;

image_index = 0;

if instance_exists(obj_Boss_Parent) {
	soulshotmouse = 0;
	if instance_exists(obj_Boss_Parent) {
		soulshotdirection = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
	} else {
		soulshotdirection = point_direction(x,y,obj_Astral_Indicator.x,obj_Astral_Indicator.y);	
	}
	scr_Weapon_Use();   
}

if sdelay = 0 {
sdelay = sfirerate;
}

alarm[0] = max(1, (sdelay * 3) - 15);

if global.N[3] > 0 {
	var _soul_juggle_list = variable_struct_get(global.WeaponJugglingDelay, string(id))
	
	var _delay = 999;
	var _weap_slot = 0;
	var _juggle_regen = (0.4 + (global.N[3] / 10))
	for(_weap_slot = 0; _weap_slot < global.weaponslots; _weap_slot++) {
		if _soul_juggle_list[_weap_slot] > 0 {
			_delay = min((_soul_juggle_list[_weap_slot] / _juggle_regen) - 15, _delay);
		}
	}
	alarm[0] = max(1, _delay)
	//alarm[1] = alarm[0] + (15)
	//Print_DF(alarm[1])
}

