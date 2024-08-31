function scr_Beast_Soul_Shot_Mod(_cw) {
	// Location: Shot Creation Script
	if scr_State_Active_Check("Beast") and _cw.Shot_Off_State = 0 {

		_cw.Shot_Count = _cw.Shot_Count * (3 * global.soulstateformboost);
		
		if frac(_cw.Shot_Count) > 0 {
			if scr_Chance(1 / frac(_cw.Shot_Count)) {
				_cw.Shot_Count = ceil(_cw.Shot_Count)	
			}
		}
		
		_cw.Shot_Speed = _cw.Shot_Speed * (1.8 * global.soulstateformboost);
		if _cw.Shot_Life_Span > 20 {
			_cw.Shot_Life_Span = 20 + ((_cw.Shot_Life_Span - 20) / 4);
		}
		
		if sWeaponTicker mod 2 = 0 {
			_cw.Shot_Angle_Relative = 40;
			_cw.Shot_Angular_Velocity = -1.5;
		} else {
			_cw.Shot_Angle_Relative = -40;
			_cw.Shot_Angular_Velocity = 1.5;
		}
		
		_cw.Shot_State = "Beast";
		
		with instance_create(x, y, obj_Force_Push) {
			target = other.id
			alarm[0] = 20;

			force = 1 + (1.5 * sqrt(_cw.Real_Essence_Cost));
			force_friction = force / alarm[0];
			force_direction = point_direction(target.x, target.y, mouse_x, mouse_y) + _cw.Shot_Angle_Relative;
			force_angular_velocity = _cw.Shot_Angular_Velocity;
		}
		
		weaponCost = weaponCost * 2;
		weaponDelay = weaponDelay * 1.5;
		
	}

}
