// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Soul Alarm 4

function scr_P08(){

	if global.P[8] > 0 {
		
		var _c_wp = global.currentweapon

		if scr_Non_Projectile_Weapon(_c_wp) {
			exit;	
		}
		
		var _current_weapon_stats = scr_Setup_Default_Weapon_Stats(_c_wp)
		scr_Modify_Current_Weapon_Stats(_current_weapon_stats);
		
		//current_weapon_stats = scr_Setup_Default_Shot_Stats();
		
		var _delay = _current_weapon_stats.Delay;
		if _current_weapon_stats.Shot_Beam = 2 {
			_delay = _delay * 3;	
		}
		
		global.trailing_off += (global.P[8] * 2) / _delay
		
		while global.trailing_off >= 1 {
			
			global.trailing_off -= 1;
		
			_current_weapon_stats.Shot_Speed = 0
			_current_weapon_stats.Shot_Forward = 0;
			
			if _current_weapon_stats.Shot_Beam = 1 {
				_current_weapon_stats.Shot_Direction = scr_Wave(0, 360, 2, 0);
				_current_weapon_stats.Shot_Size = _current_weapon_stats.Shot_Size * 0.5;
				_current_weapon_stats.Shot_Mouse = 0;
			}
			if _current_weapon_stats.Shot_Beam = 2 {
				_current_weapon_stats.Shot_Frame = global.essencebeamtime / 5
				_current_weapon_stats.Shot_Frame = clamp(_current_weapon_stats.Shot_Frame, 0, 3);	
				_current_weapon_stats.Shot_Life_Span = 5;
			}
		
			var _weapon_meta_data = scr_Hard_Coded_Weapon_Stats(_current_weapon_stats);
			
			scr_Weapon_Output_Item_Mods(_current_weapon_stats, _weapon_meta_data, _c_wp)
		
			if _current_weapon_stats.Shot_Beam = 0 {
				_current_weapon_stats.Shot_Lobbing = true;
				_current_weapon_stats.Shot_Life_Span = _current_weapon_stats.Shot_Life_Span * 2
				_current_weapon_stats.Shot_Height += 20
				_current_weapon_stats.Shot_Fall_Speed = -0.4
			
				var _dist = _current_weapon_stats.Shot_Height;
				var _time = _current_weapon_stats.Shot_Life_Span;
				var _vel = _current_weapon_stats.Shot_Fall_Speed;

		        _current_weapon_stats.Shot_Gravity = scr_Accel_From_DTV(_dist, _time, _vel)
			}
			
			scr_Weapon_Output(_weapon_meta_data.spawnProjectile, _weapon_meta_data.minion, _current_weapon_stats)
		
		}
		
	}
}