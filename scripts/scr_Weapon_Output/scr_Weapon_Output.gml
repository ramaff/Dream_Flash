// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Weapon_Output(_spawn_projectile = spawnProjectile, _minion = minion){

	if _spawn_projectile {
		if !_minion {
			scr_Shot_Creation();
		} else {
			scr_Soul_Spawn();	
		}
		scr_Q03();
	}

}