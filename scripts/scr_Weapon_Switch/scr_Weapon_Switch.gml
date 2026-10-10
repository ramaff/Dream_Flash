function scr_Weapon_Switch(_direction = 1) {

	scr_U03_Off();
	
	if instance_exists(obj_Soul_Parent) {
		obj_Soul_Parent.sWeaponWarmUp = 0;
	}

	for (var _i = 1; _i < global.weaponslots; _i++) {
		var _temp_weap = Soul_Weapons_Control.weapon[_i]
		var _j = _i
		
		while (1) {
            var _k = _j + _direction;
            if (_k >= global.weaponslots) {
                _k = _k - global.weaponslots;
			}
			if (_k < 0) {
				_k = global.weaponslots - 1;
			}

            if (_k == _i) {
                break;
			}

            Soul_Weapons_Control.weapon[_j] = Soul_Weapons_Control.weapon[_k];
            _j = _k;
        }
        Soul_Weapons_Control.weapon[_j] = _temp_weap;
	
	}
    
	global.currentweapon = Soul_Weapons_Control.weapon[0].weapon_id;

	if global.currentweapon = 0 {
	    scr_Weapon_Switch(_direction);
	}
	
	Soul_Weapons_Control.angular_rotation -= (360 / global.weaponslots) * _direction;
	scr_Weapon_Slot_Info_Update(Soul_Weapons_Control.weapon_slot_info)

}
