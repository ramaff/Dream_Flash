 
 /*
	if shotlooping = 0 {
        if shotbursttype != 0 {
            dir = 90
            repeat(shotburstamount) {
                with instance_create(x,y,obj_Lesser_Soul_Shot) {
					shotlifespan = other.shotlifespan / 2;
                    scr_Duplicate_Shot_Stats();
                }
                dir += 360 / shotburstamount;
            }
            shotbursttype = 0;
        }
        }
		
		if global.A[7] > 0 and shotorigin = obj_Soul_Parent {
			scr_A07_Reset();	
		}
        
        if shotlooping = 0 {
        if shotphasing = 0 and shotbounce = 0 {
	        if shotimpacttype = 1 {
	            with (obj_Boss_Parent) {
	                if distance_to_object(other) < other.shotimpactsize {
	                    bosshealth -= other.shotimpactpower - bossdefense;
	                    //bosspoison += other.shotpoison * (other.shotimpactpower / other.shotpower);
	                    //bosspoisondown += other.shotpoisondown * (other.shotimpactpower / other.shotpower);
	                }
            
	            }
	            with instance_create(x,y,obj_Essence_Impact_Show) {
					sprite_index = spr_Explosion_Effect;
	                size = other.shotimpactsize / 150;
	                image_xscale = size;
	                image_yscale = size;
	            }
	        }
	        }
		}

        
if shotphasing = 0 and shotbounce = 0 and shotlooping = 0 and shotchain = 0 and shottimer > 1 {
    instance_destroy();
}

*/
if shotbounce >= 1 and shotairtarget = 0 and shotmelee = 0 {
    
    backSpeed = speed;

	/*
    var i;
    i = point_direction(other.x, other.y, x, y);
    x += lengthdir_x(backSpeed, i);
    y += lengthdir_y(backSpeed, i);
	*/
	
	if(place_meeting(x + hspeed, y, obj_The_Border)) {
	    direction = -direction + 180;
	}

	//Vertical bounce
	if(place_meeting(x, y + vspeed, obj_The_Border)) {
	    direction = -direction;
    }
	
	if shotspeed != 0 and speed != 0 {
		//shot_boss_id += instance_id_get( instance_count ) + global.instanceidincrementer;
		shot_boss_id = shot_boss_id + global.instanceidincrementer;
	
		global.instanceidincrementer++;
	}
	
	if shotlooping = 0 {
		scr_Soul_Outside_Check();
	}
	shotbounce--;
}
/*
if shotchain >= 1 and shotbounce = 0 and shotmelee = 0 {
    shotchain--;
    target = noone
    x = other.x;
    y = other.y;
    with obj_Boss_Parent {
        dis = distance_to_object(other);
        var hit_again = ds_list_find_index(projectile_hits, other.shot_id);
        if hit_again = -1
        if other.target == noone || dis < other.target.dis
        if collision_circle(other.x, other.y, other.shotchainrange, id, true, false)
        other.target = id;
    }
    if target != noone {
        move_towards_point(target.x,target.y,shotchainspeed);
    } else {
        instance_destroy();
    }
}

*/