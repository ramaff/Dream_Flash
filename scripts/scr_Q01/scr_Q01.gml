// Soul Parent Alarm 6

function scr_Q01() {
	
	if global.Q[1] > 0 {
		
		var _c_wp = global.currentweapon
		
		if scr_Non_Projectile_Weapon(_c_wp) {
			exit;	
		}
		
		scr_Default_Weapon_Stats();
		
		current_weapon_stats = scr_Setup_Default_Weapon_Stats(_c_wp)
		scr_Modify_Current_Weapon_Stats();
		
		var _delay = current_weapon_stats.Delay / scr_Class_Stat_Firerate_Multiplier();
		if current_weapon_stats.Shot_Beam = 2 {
			_delay = _delay * 3;	
		}
		
		global.no_brainer += (global.Q[1] * (2 / 3)) / _delay
		
		while global.no_brainer >= 1 {
			
			global.no_brainer -= 1;
		
			current_weapon_stats.Shot_Mouse = 0;
			current_weapon_stats.Shot_Direction = random(360);

			if current_weapon_stats.Shot_Beam = 2 {
				current_weapon_stats.Shot_Frame = global.essencebeamtime / 5
				current_weapon_stats.Shot_Frame = clamp(current_weapon_stats.Shot_Frame, 0, 3);	
				current_weapon_stats.Shot_Life_Span = 5;
			}
			current_weapon_stats.Shot_Speed = current_weapon_stats.Shot_Speed / (1.75 + random(0.75))
			current_weapon_stats.Shot_Homing_Type = 1;
			current_weapon_stats.Shot_Homing_Range = 500;
			current_weapon_stats.Shot_Homing_Speed = 1.5;

			
			barrage = false;
			minion = false;
			spawnProjectile = true;
		
			scr_Hard_Coded_Weapon_Stats(current_weapon_stats);
		
			if current_weapon_stats.Shot_Beam = 0 {
				current_weapon_stats.Shot_Life_Span = current_weapon_stats.Shot_Life_Span * 2.5
				current_weapon_stats.Shot_Lobbing = true;
				current_weapon_stats.Shot_Height += 20
				current_weapon_stats.Shot_Fall_Speed = -0.4
			
				var _dist = current_weapon_stats.Shot_Height;
				var _time = current_weapon_stats.Shot_Life_Span;
				var _vel = current_weapon_stats.Shot_Fall_Speed;
			
				// velocity is backwards
		        current_weapon_stats.Shot_Gravity = scr_Accel_From_DTV(_dist, _time, _vel)
			
			}
		
			scr_Weapon_Output(spawnProjectile, minion)
		}
		
	}

}
