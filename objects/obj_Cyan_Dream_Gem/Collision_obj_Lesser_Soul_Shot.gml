if other.shotsouldamage > 0 {
	exit;	
}

var hit_again = variable_struct_exists(projectile_hits, other.shot_id)
if !hit_again and other.shotmelee = 0 {
	variable_struct_set(projectile_hits, other.shot_id, other.shot_id)
    
    with(other) {
        x = other.x;
        y = other.y;
        if shotorbitaltype = 1 {
			shotorbitaltype = 0;
		}
        shotphasing = 1;
		shotgem++;
        /*
        if shothomingtype = 0 {
            shothomingtype = 1;
        }
        if shothomingrange < 60 {
            shothomingrange = 60;
        } */
        speed = shotspeed;
        shotspeed += 1.5;
        speed += 1.5;
        if speed < 10 {
            shotspeed = 10;
            speed = 10;
        }
        sprite_index = spr_Cyan_Gem_Shot;
        if shotbursttype = 0 {
            shotbursttype = 1;
            shothitagain = 0;
            image = 1;
            shotduplicatesprite = sprite_index;
			if shotburstamount < 3 {
	            shotburstamount = 3;
	        }
	        if shotburstpower < 3 {
	            shotburstpower = 3;
	        }
        }
		if shotbursttype = 0 {
			shotbursttype = 1;
	        if shotburstamount < 3 {
	            shotburstamount = 3;
	        }
	        if shotburstpower < 3 {
	            shotburstpower = 3;
	        }
			}
		
		if shotsize > 1 {
			shotsize = 1;
			image_xscale = shotsize;
			image_yscale = shotsize;
		}
		
        if instance_exists(obj_Boss_Parent) {    
            move_towards_point(instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y,shotspeed)
        }
        var target = noone;
		var dis = 9999;
        if instance_exists(obj_Gem_Parent) {
	        with(obj_Gem_Parent) {
				var cdis = distance_to_object(other);
	            var hit_again = variable_struct_exists(projectile_hits, other.shot_id)
				if !hit_again
	            if target == noone || dis < cdis {
					target = id;
					dis = cdis;
				}
	        }
            if target != noone {
                move_towards_point(target.x,target.y,shotspeed);
                if object_get_parent(target.object_index) = obj_Gem_Parent {
                    speed = shotspeed * 2;
                } else {
                    speed = shotspeed;
                }
            }
        }
    
    }
}

