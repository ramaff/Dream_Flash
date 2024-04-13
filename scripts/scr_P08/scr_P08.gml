// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Soul Alarm 4

function scr_P08(){

	if global.P[8] > 0 {
		
		var _c_wp = global.currentweapon

		if scr_Non_Projectile_Weapon(_c_wp) {
			exit;	
		}
		
		current_weapon_stats = scr_Setup_Default_Weapon_Stats(_c_wp)
		scr_Modify_Current_Weapon_Stats();
		
		//scr_Default_Weapon_Stats();
		
		var _delay = current_weapon_stats.Delay / scr_Class_Stat_Firerate_Multiplier();
		if current_weapon_stats.Shot_Beam = 2 {
			_delay = _delay * 3;	
		}
		
		global.trailing_off += (global.P[8] * 2) / _delay
		
		while global.trailing_off >= 1 {
			
			global.trailing_off -= 1;
		
			current_weapon_stats.Shot_Speed = 0
			current_weapon_stats.Shot_Forward = 0;
			
			if current_weapon_stats.Shot_Beam = 0 {
				current_weapon_stats.Shot_Life_Span = current_weapon_stats.Shot_Life_Span * 2
				current_weapon_stats.Shot_Lobbing = true
			} else {
				current_weapon_stats.Shot_Direction = scr_Wave(0, 360, 2, 0);
				current_weapon_stats.Shot_Size = current_weapon_stats.Shot_Size * 0.5;
				current_weapon_stats.Shot_Mouse = 0;
			}
			if current_weapon_stats.Shot_Beam = 2 {
				current_weapon_stats.Shot_Frame = global.essencebeamtime / 5
				current_weapon_stats.Shot_Frame = clamp(current_weapon_stats.Shot_Frame, 0, 3);	
				current_weapon_stats.Shot_Life_Span = 5;
			}
			
			current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
			
			barrage = false;
			minion = false;
			spawnProjectile = true;
		
			scr_Hard_Coded_Weapon_Stats(_c_wp);
		
			if current_weapon_stats.Shot_Beam = 0 {
				current_weapon_stats.Shot_Height += 20
				current_weapon_stats.Shot_Fall_Speed = -0.2
			
				var _dist = current_weapon_stats.Shot_Height;
				var _time = current_weapon_stats.Shot_Life_Span;
				var _vel = current_weapon_stats.Shot_Fall_Speed;
			
				// velocity is backwards
		        current_weapon_stats.Shot_Gravity = ((2 * _dist) / (_time * _time)) + (_vel / _time)
			}
			
			scr_Weapon_Output(spawnProjectile, minion)
		
		}
		
	}
}