function scr_Weapon_Switch(_direction = 1) {

	scr_U03_Off();
	
	if instance_exists(obj_Soul_Parent) {
		obj_Soul_Parent.sWeaponWarmUp = 0;
	}

	//global.weaponslots = 4;

	//if _direction = 1 {
		for (var _i = 1; _i < global.weaponslots; _i++) {
			var _temp_weap = weapon[_i]
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

	            weapon[_j] = weapon[_k];
	            _j = _k;
	        }
	        weapon[_j] = _temp_weap;
		
		}
		
		/*var _prev_weap = weapon[0]
		var _cur_weap = weapon[1]
		for (var _i = 1; _i < global.weaponslots; _i++) {
			weapon[_i] = _prev_weap
			_prev_weap = weapon[_i];
			_cur_weap = weapon[_i + 1];
		}
		_weapon[0] = _cur_weap;
		*/
	//}
    
	global.currentweapon = weapon[0].weapon_id;

	if global.currentweapon = 0 {
	    scr_Weapon_Switch(-1);
	}


}
