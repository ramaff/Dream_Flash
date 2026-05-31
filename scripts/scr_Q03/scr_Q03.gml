// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// Weapon Use


function scr_Q03(_minion = false, _cw = current_weapon_stats){

	var _shot_output = []
   if global.Q[3] > 0 {
	
		var room_center = room_width / 2;
		var effect_diameter = global.roomSizeX + 256;
	
		while (global.Q3count >= 3) and global.currentweapon < 700 and global.currentweapon > 0 {
			_cw.Shot_XX = room_center - (effect_diameter / 2) + random(effect_diameter) - x;
		    _cw.Shot_YY = room_center - (effect_diameter / 2) + random(effect_diameter) - y;
		
			// This script is called within weapon output, so no need to do all the modification/setup
			if !_minion {
				_shot_output = scr_Shot_Creation(_cw);
			} else {
				scr_Soul_Spawn(_cw);
			}
		
			global.Q3count -= 4;
		}
		if _cw.Shot_Beam = 2 {
			global.Q3count += global.Q[3] / 3;
		} else {
			global.Q3count += global.Q[3];
		}
   }
   return _shot_output;
}