// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Weapon_Output(_spawn_projectile = spawnProjectile, _minion = minion, _cw_stats = current_weapon_stats) {

	if _spawn_projectile {
		
		if global.Q[5] > 0 {
			if scr_Chance(1 + (7 / global.Q[5])) {
				_cw_stats = scr_Q05(_cw_stats.Essence)
				_minion = false
			}
		}
		
		if !_minion {
			scr_Shot_Creation(_cw_stats);
			scr_Q03(false, _cw_stats);
		} else {
			scr_Soul_Spawn(_cw_stats);
			scr_Q03(true, _cw_stats);
		}
		
		if _cw_stats.Shot_Extra != false {
			
			var _og_stats = variable_clone(_cw_stats)
			var _size = array_length(_cw_stats.Shot_Extra)
			
			for(var _i = 0; _i < _size; _i++) {
				
				if is_struct(_cw_stats.Shot_Extra[_i]) {
				
					var _ex_stats = scr_Struct_Merge(_og_stats, _cw_stats.Shot_Extra[_i], false)

					scr_Hard_Coded_Weapon_Stats(_ex_stats);
		
					if !_minion {
						scr_Shot_Creation(_ex_stats);
						scr_Q03(false, _cw_stats);
					} else {
						scr_Soul_Spawn(_cw_stats);
						scr_Q03(true, _cw_stats);
					}
				}
			}
		}
		
	}

}