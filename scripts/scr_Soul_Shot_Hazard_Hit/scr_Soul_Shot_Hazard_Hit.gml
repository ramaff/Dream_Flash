// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Shot_Hazard_Hit(){

	if shot_stats.Shot_Damage {

		if other.soulshotblock = 1 {
		    var hit_again = variable_struct_exists(other.projectile_hits, shot_id)
			if !hit_again and shot_stats.Shot_Pierce >= 0 {
		         //ds_list_add(other.projectile_hits, shot_id);
				 variable_struct_set(other.projectile_hits, shot_id, shot_id)
		         other.bulletpower -= (shot_stats.Shot_Power / 10);
		         if other.bulletpower <= 0 {
		            instance_destroy(other);
		         }
		         shot_stats.Shot_Pierce--;
		         if shot_stats.Shot_Pierce <= 0 {
		            instance_destroy();
		         }
		    }   
		}
	
	}

}