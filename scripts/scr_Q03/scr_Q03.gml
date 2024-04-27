// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// Weapon Use


function scr_Q03(_minion = false, _cw = current_weapon_stats){
	
   if global.Q[3] > 0 {
	
		var room_center = room_width / 2;
		var effect_diameter = global.roomSizeX + 256;
	
		while (global.Q3count >= 3) and global.currentweapon < 700 and global.currentweapon > 0 {
			_cw.Shot_XX = room_center - (effect_diameter / 2) + random(effect_diameter) - x;
		    _cw.Shot_YY = room_center - (effect_diameter / 2) + random(effect_diameter) - y;
		
			if !_minion {
				scr_Shot_Creation(_cw);
			} else {
				scr_Soul_Spawn(_cw);
			}
			//scr_Weapon_Output(true, _minion)
		
			global.Q3count -= 4;
		}
		if _cw.Shot_Beam = 2 {
			global.Q3count += global.Q[3] / 3;
		} else {
			global.Q3count += global.Q[3];
		}
   }
}