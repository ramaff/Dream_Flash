// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Weapon_Output(_spawn_projectile = spawnProjectile, _minion = minion) {

	if _spawn_projectile {
		
		if !_minion {
			scr_Shot_Creation();
			scr_Q03(false);
		} else {
			scr_Soul_Spawn();
			scr_Q03(true);
		}
		
		if Shot_Extra != false {
			
			var i = 0
			for(i = 0; i < array_length(Shot_Extra); i++) {
			
				//current_weapon_stats = Shot_Extra[i]
			
				scr_Setup_Weapon_Stats(Shot_Extra[i])
				scr_Hard_Coded_Weapon_Stats(current_weapon_stats.Weapon_Number);
		
				if !_minion {
					scr_Shot_Creation();
					scr_Q03(false);
				} else {
					scr_Soul_Spawn();
					scr_Q03(true);
				}
			}
		}
		
	}

}