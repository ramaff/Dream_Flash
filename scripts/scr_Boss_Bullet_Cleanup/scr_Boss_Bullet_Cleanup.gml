// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Bullet_Cleanup(){
	if soulshotblock > 0 {
		if ds_exists(projectile_hits, ds_type_list) {
			ds_list_destroy(projectile_hits);
		}
	}
}