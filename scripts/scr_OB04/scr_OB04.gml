// Soul Parent Alarm 6

function scr_OB04() {
	
		
		var _c_wp = global.currentweapon
		
		if scr_Non_Projectile_Weapon(_c_wp) {
			exit;	
		}
		
		var _current_weapon_stats = scr_Setup_Default_Weapon_Stats(_c_wp)
		scr_Modify_Current_Weapon_Stats(_current_weapon_stats);
		
		var _delay = _current_weapon_stats.Delay * 2;
		
		cant_help += global.OB[4];
		
		while cant_help >= _delay {
			
			cant_help -= _delay
		
			_current_weapon_stats.Shot_Accuracy = 150;
			//_current_weapon_stats.Shot_Count = _current_weapon_stats.Shot_Count * global.OB[04]

			if _current_weapon_stats.Shot_Beam = 2 {
				_current_weapon_stats.Shot_Frame = global.essencebeamtime / 5
				_current_weapon_stats.Shot_Frame = clamp(_current_weapon_stats.Shot_Frame, 0, 3);	
				_current_weapon_stats.Shot_Life_Span = 5;
			}
			_current_weapon_stats.Shot_Speed = _current_weapon_stats.Shot_Speed * (0.75 + random(0.5))
		
			var _weapon_meta_data = scr_Hard_Coded_Weapon_Stats(_current_weapon_stats);
			scr_Weapon_Output_Item_Mods(_current_weapon_stats, _weapon_meta_data, _c_wp)
		
			if _current_weapon_stats.Shot_Beam = 0 {
				_current_weapon_stats.Shot_Life_Span = _current_weapon_stats.Shot_Life_Span * 0.75
				_current_weapon_stats.Shot_Lobbing = true;
				_current_weapon_stats.Shot_Height += 20
				_current_weapon_stats.Shot_Fall_Speed = -2
			
				var _dist = _current_weapon_stats.Shot_Height;
				var _time = _current_weapon_stats.Shot_Life_Span;
				var _vel = _current_weapon_stats.Shot_Fall_Speed;
			
				// velocity is backwards
		        _current_weapon_stats.Shot_Gravity = scr_Accel_From_DTV(_dist, _time, _vel)
			
			}
		
			scr_Weapon_Output(_weapon_meta_data.spawnProjectile, _weapon_meta_data.minion, _current_weapon_stats, false)
			
			var _cost = scr_Pre_Shoot_Weapon_Essence_Cost(_current_weapon_stats, scr_single_instance_weapon_active(_c_wp)) * 0.3
			_cost = scr_Post_Req_Weapon_Essence_Cost(_current_weapon_stats) 
			
			senergy -= _cost
		}
		

}
