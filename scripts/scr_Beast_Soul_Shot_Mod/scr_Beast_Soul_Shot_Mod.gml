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
			_cw.Shot_Angle_Relative = 60;
			_cw.Shot_Angular_Velocity = -2;
		} else {
			_cw.Shot_Angle_Relative = -60;
			_cw.Shot_Angular_Velocity = 2;
		}
		
		_cw.Shot_State = "Beast";
		
		var _force = 1 + (1.5 * sqrt(_cw.Real_Essence_Cost));
		var _force_direction = point_direction(x, y, mouse_x, mouse_y) + _cw.Shot_Angle_Relative;
		var _force_angular_velocity = _cw.Shot_Angular_Velocity;
	
		scr_force_push(id, 20, _force, _force / 20, _force_direction, _force_angular_velocity)
		
		_cw.Real_Essence_Cost = _cw.Real_Essence_Cost * 2;
		_cw.Real_Weapon_Delay = _cw.Real_Weapon_Delay * 1.5;
		
	}

}
