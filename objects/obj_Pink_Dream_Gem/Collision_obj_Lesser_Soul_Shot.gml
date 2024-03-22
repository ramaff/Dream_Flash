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
        speed = shot_stats.Shot_Speed;
        shot_stats.Shot_Speed += 1.5;
        speed += 1.5;
        /*
        if shot_stats.Shot_Homing_Type = 0 {
            shot_stats.Shot_Homing_Type = 1;
        }
        if shot_stats.Shot_Homing_Range < 60 {
            shot_stats.Shot_Homing_Range = 60;
        } */
        if speed < 10 {
            shot_stats.Shot_Speed = 10;
            speed = 10;
        }
		if shot_stats.Shot_Size > 1 {
			shot_stats.Shot_Size = 1;
			image_xscale = shot_stats.Shot_Size;
			image_yscale = shot_stats.Shot_Size;
		}
        sprite_index = spr_Pink_Gem_Shot;
        if instance_exists(obj_Boss_Parent) {    
            move_towards_point(instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y,shot_stats.Shot_Speed)
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
                move_towards_point(target.x,target.y,shot_stats.Shot_Speed);
                if object_get_parent(target.object_index) = obj_Gem_Parent {
                    speed = shot_stats.Shot_Speed * 2;
                } else {
                    speed = shot_stats.Shot_Speed;
                }
            }
        }
        shotfriction = 0;
        duplicate = irandom(7);
        
        dir = 0;
        var oshotid = shot_id;
        if duplicate = 7 {
        with instance_create(x,y,obj_Lesser_Soul_Shot) {
            shothitagain = 1;
            //image = 1;
            scr_Duplicate_Shot_Stats();
			shot_stats.Shot_Size = other.shot_stats.Shot_Size;
			image_xscale = shot_stats.Shot_Size;
			image_yscale = shot_stats.Shot_Size;
			if shot_stats.Shot_Size > 1 {
				shot_stats.Shot_Size = 1;
				image_xscale = shot_stats.Shot_Size;
				image_yscale = shot_stats.Shot_Size;
			}
            shothitagain = 0;
            direction += 7.5;
            shot_stats.Shot_Power = other.shot_stats.Shot_Power;
            shotPowelLevel = other.shotPowerLevel;
            sprite_index = other.sprite_index;
            image_alpha = other.image_alpha;
            oshotid = shot_id;
			shotfriction = 0;
        }
		variable_struct_set(other.projectile_hits, oshotid, oshotid)
        //ds_list_add(other.projectile_hits, oshotid);  
        }
        direction -= 7.5;
    
    }
}

