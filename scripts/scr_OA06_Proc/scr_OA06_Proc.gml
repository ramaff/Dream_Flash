// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OA06_Proc(){
	if shotmiracle > 0 {
		var dist = 100
		var dam = 1 + (other.shotpower / 4);
		
		with(obj_Bullet_Parent) {
		    if distance_to_object(other) <= dist {
		        bulletspeed = bulletspeed / 1.5;
		        speed = speed / 1.5;
				
				bulletpower -= dam
				bulletsize = (bulletpower / bulletpowermax);
				image_xscale = bulletsize;
				image_yscale = bulletsize;
				
				if bulletsize < 0.05 {
					bulletsize = 0.05;	
				}
				if bulletpower < 1 {
					instance_destroy();	
				}
		    }
		}
	}
}