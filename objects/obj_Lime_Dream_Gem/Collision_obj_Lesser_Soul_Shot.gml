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
        if shot_stats.Shot_Homing_Type = 0 {
            shot_stats.Shot_Homing_Type = 1;
        }
        if shot_stats.Shot_Homing_Range < 60 {
            shot_stats.Shot_Homing_Range = 60;
        } */
        speed = shot_stats.Shot_Speed;
        shot_stats.Shot_Speed += 1.5;
        speed += 1.5;
        if speed < 10 {
            shot_stats.Shot_Speed = 10;
            speed = 10;
        }
		if shot_stats.Shot_Size > 1 {
			shot_stats.Shot_Size = 1;
			image_xscale = shot_stats.Shot_Size;
			image_yscale = shot_stats.Shot_Size;
		}
        shotPowerLevel = shot_stats.Shot_Power * 1.05;
        shot_stats.Shot_Power = shot_stats.Shot_Power * 1.05;
        shotknockback += 10;
        sprite_index = spr_Lime_Gem_Shot;
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
    
    }
}

