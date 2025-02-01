// Soul Parent Alarm 6

function scr_OB04() {
	
	if global.OB[4] > 0 {
		
		var _c_wp = global.currentweapon
		
		if scr_Non_Projectile_Weapon(_c_wp) {
			exit;	
		}
		
		scr_Default_Weapon_Stats();
		
		current_weapon_stats = scr_Setup_Default_Weapon_Stats(_c_wp)
		scr_Modify_Current_Weapon_Stats();
		
		var _delay = current_weapon_stats.Delay / scr_Class_Stat_Firerate_Multiplier() * 2;
		
		cant_help += global.OB[4];
		
		while cant_help >= _delay {
			
			cant_help -= _delay
		
			current_weapon_stats.Shot_Accuracy = 150;
			//current_weapon_stats.Shot_Count = current_weapon_stats.Shot_Count * global.OB[04]

			if current_weapon_stats.Shot_Beam = 2 {
				current_weapon_stats.Shot_Frame = global.essencebeamtime / 5
				current_weapon_stats.Shot_Frame = clamp(current_weapon_stats.Shot_Frame, 0, 3);	
				current_weapon_stats.Shot_Life_Span = 5;
			}
			current_weapon_stats.Shot_Speed = current_weapon_stats.Shot_Speed * (0.75 + random(0.5))
			
			barrage = false;
			minion = false;
			spawnProjectile = true;
		
			scr_Hard_Coded_Weapon_Stats(current_weapon_stats);
		
			if current_weapon_stats.Shot_Beam = 0 {
				current_weapon_stats.Shot_Life_Span = current_weapon_stats.Shot_Life_Span * 0.75
				current_weapon_stats.Shot_Lobbing = true;
				current_weapon_stats.Shot_Height += 20
				current_weapon_stats.Shot_Fall_Speed = -2
			
				var _dist = current_weapon_stats.Shot_Height;
				var _time = current_weapon_stats.Shot_Life_Span;
				var _vel = current_weapon_stats.Shot_Fall_Speed;
			
				// velocity is backwards
		        current_weapon_stats.Shot_Gravity = scr_Accel_From_DTV(_dist, _time, _vel)
			
			}
		
			scr_Weapon_Output(spawnProjectile, minion)
			
			var _cost = scr_Pre_Shoot_Weapon_Essence_Cost(current_weapon_stats.Essence, _c_wp, scr_umbrella_active(_c_wp)) * 0.3
			_cost = scr_Post_Req_Weapon_Essence_Cost(_cost) 
			
			senergy -= _cost
		}
		
	}

}
