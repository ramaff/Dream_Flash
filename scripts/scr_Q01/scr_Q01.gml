// Soul Parent Alarm 6

function scr_Q01() {
	
	if global.Q[1] > 0 {
		
		var _c_wp = global.currentweapon
		
		if scr_Non_Projectile_Weapon(_c_wp) {
			exit;	
		}
		
		var _current_weapon_stats = scr_Setup_Default_Shot_Stats();
		
		_current_weapon_stats = scr_Setup_Default_Weapon_Stats(_c_wp)
		scr_Modify_Current_Weapon_Stats(_current_weapon_stats);
		
		var _delay = _current_weapon_stats.Delay / scr_Class_Stat_Firerate_Multiplier();
		if _current_weapon_stats.Shot_Beam = 2 {
			_delay = _delay * 3;	
		}
		
		global.no_brainer += (global.Q[1] * (2 / 3)) / _delay
		
		while global.no_brainer >= 1 {
			
			global.no_brainer -= 1;
		
			_current_weapon_stats.Shot_Mouse = 0;
			_current_weapon_stats.Shot_Direction = random(360);

			if _current_weapon_stats.Shot_Beam = 2 {
				_current_weapon_stats.Shot_Frame = global.essencebeamtime / 5
				_current_weapon_stats.Shot_Frame = clamp(_current_weapon_stats.Shot_Frame, 0, 3);	
				_current_weapon_stats.Shot_Life_Span = 5;
			}
			_current_weapon_stats.Shot_Speed = _current_weapon_stats.Shot_Speed / (1.75 + random(0.75))
			_current_weapon_stats.Shot_Homing_Type = 1;
			_current_weapon_stats.Shot_Homing_Range = 500;
			_current_weapon_stats.Shot_Homing_Speed = 1.5;

			
			var barrage = false;
			var minion = false;
			var spawnProjectile = true;
		
			var _weapon_meta_data = scr_Hard_Coded_Weapon_Stats(_current_weapon_stats);
		
			if _current_weapon_stats.Shot_Beam = 0 {
				_current_weapon_stats.Shot_Life_Span = _current_weapon_stats.Shot_Life_Span * 2.5
				_current_weapon_stats.Shot_Lobbing = true;
				_current_weapon_stats.Shot_Height += 20
				_current_weapon_stats.Shot_Fall_Speed = -0.4
			
				var _dist = _current_weapon_stats.Shot_Height;
				var _time = _current_weapon_stats.Shot_Life_Span;
				var _vel = _current_weapon_stats.Shot_Fall_Speed;
			
				// velocity is backwards
		        _current_weapon_stats.Shot_Gravity = scr_Accel_From_DTV(_dist, _time, _vel)
			
			}
			
			_current_weapon_stats.Real_Essence_Cost = 0;
		
			scr_Weapon_Output(_weapon_meta_data.spawnProjectile, _weapon_meta_data.minion, _current_weapon_stats, false)
		}
		
	}

}
