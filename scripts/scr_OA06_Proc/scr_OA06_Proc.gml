// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OA06_Proc(){
	if shot_stats.Shot_Miracle > 0 {
		var dist = 100
		var dam = 1 + (other.shot_stats.Shot_Power / 4);
		
		with(obj_Bullet_Parent) {
		    if distance_to_object(other) <= dist {
		        bulletspeed = bulletspeed / 1.5;
		        speed = speed / 1.5;
				
				scr_Bullet_Dampen(dam)
		    }
		}
		with(obj_bullet_parent_v2) {
		    if distance_to_object(other) <= dist {
		        bullet_stats.bullet_speed = bullet_stats.bullet_speed / 1.5;
		        speed = speed / 1.5;
				
				scr_bullet_dampen_v2(dam, bullet_stats)
		    }
		}
	}
}