// Soul Parent Alarm 6

function scr_V05() {
	
	if global.V[5] > 0 {
		
		global.no_brainer += 0.25 * global.V[5]
		
		while global.no_brainer >= 1 {
			
			global.no_brainer -= 1;
		
			var _c_wp = global.currentweapon
		
			current_weapon_stats = json_parse(json_stringify(variable_struct_get(global.weapon_stats, string(_c_wp))))
		
			scr_Default_Weapon_Stats();
		
			current_weapon_stats.Shot_Mouse = 0;
			current_weapon_stats.Shot_Direction = random(360);
			//current_weapon_stats.Shot_Forward = 0;
			current_weapon_stats.Shot_Lifespan = current_weapon_stats.Shot_Lifespan * 2
			current_weapon_stats.Shot_Lobbing = true
		
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
