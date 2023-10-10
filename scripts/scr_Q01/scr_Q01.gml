// Soul Parent Alarm 6

function scr_Q01() {
	
	if global.Q[1] > 0 {
		
		var _c_wp = global.currentweapon
		
		if scr_Non_Projectile_Weapon(_c_wp) {
			exit;	
		}
		
		current_weapon_stats = json_parse(json_stringify(variable_struct_get(global.weapon_stats, string(_c_wp))))
		
		scr_Default_Weapon_Stats();
		
		var _delay = current_weapon_stats.Delay / scr_Class_Stat_Firerate_Multiplier();
		
		global.no_brainer += global.Q[1] * 3 / _delay
		
		while global.no_brainer >= 1 {
			
			global.no_brainer -= 1;
		
			current_weapon_stats.Shot_Mouse = 0;
			current_weapon_stats.Shot_Direction = random(360);
			//current_weapon_stats.Shot_Forward = 0;
			current_weapon_stats.Shot_Lifespan = current_weapon_stats.Shot_Lifespan * 2.5
			current_weapon_stats.Shot_Lobbing = true
			current_weapon_stats.Shot_Speed = current_weapon_stats.Shot_Speed / (1.75 + random(0.75))
			current_weapon_stats.Shot_Homing_Type = 1;
			current_weapon_stats.Shot_Homing_Range = 500;
			current_weapon_stats.Shot_Homing_Speed = 1.5;
		
			//current_weapon_stats.Shot_Lobbing_Tilt = -10;

			scr_setup_weapon_stats(current_weapon_stats);
		
			scr_Hard_Coded_Weapon_Stats(_c_wp);
		
			Shot_Stats.Shot_Height += 20
			Shot_Stats.Shot_Fall_Speed = -0.2
			
			var _dist = Shot_Stats.Shot_Height;
			var _time = Shot_Stats.Shot_Lifespan;
			var _vel = Shot_Stats.Shot_Fall_Speed;
			
			// velocity is backwards
	        Shot_Stats.Shot_Gravity = ((2 * _dist) / (_time * _time)) + (_vel / _time)
		
			scr_Shot_Creation();
		}
		
	}

}
