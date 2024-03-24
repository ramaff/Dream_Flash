 
 /*
	if shot_stats.Shot_Looping = 0 {
        if shotbursttype != 0 {
            dir = 90
            repeat(shotburstamount) {
                with instance_create(x,y,obj_Lesser_Soul_Shot) {
					shot_stats.Shot_Life_Span = other.shot_stats.Shot_Life_Span / 2;
                    scr_Duplicate_Shot_Stats();
                }
                dir += 360 / shotburstamount;
            }
            shotbursttype = 0;
        }
        }
		
		if global.A[7] > 0 and shot_stats.Shot_Origin = obj_Soul_Parent {
			scr_A07_Reset();	
		}
        
        if shot_stats.Shot_Looping = 0 {
        if shotphasing = 0 and shot_stats.Shot_Bounce = 0 {
	        if shot_stats.Shot_Impact_Type = 1 {
	            with (obj_Boss_Parent) {
	                if distance_to_object(other) < other.shot_stats.Shot_Impact_Size {
	                    bosshealth -= other.shot_stats.Shot_Impact_Power - bossdefense;
	                    //bosspoison += other.shot_stats.Shot_Poison * (other.shot_stats.Shot_Impact_Power / other.shot_stats.Shot_Power);
	                    //bosspoisondown += other.shot_stats.Shot_Poisondown * (other.shot_stats.Shot_Impact_Power / other.shot_stats.Shot_Power);
	                }
            
	            }
	            with instance_create(x,y,obj_Essence_Impact_Show) {
					sprite_index = spr_Explosion_Effect;
	                size = other.shot_stats.Shot_Impact_Size / 150;
	                image_xscale = size;
	                image_yscale = size;
	            }
	        }
	        }
		}

        
if shotphasing = 0 and shot_stats.Shot_Bounce = 0 and shot_stats.Shot_Looping = 0 and shot_stats.Shot_Chain = 0 and shot_stats.Shot_Timer > 1 {
    instance_destroy();
}

*/
if shot_stats.Shot_Bounce >= 1 and shot_stats.Shot_Air_Target = 0 and shot_stats.Shot_Melee = 0 {
    
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
	
	if shot_stats.Shot_Speed != 0 and speed != 0 {
		//shot_boss_id += instance_id_get( instance_count ) + global.instanceidincrementer;
		shot_boss_id = shot_boss_id + global.instanceidincrementer;
	
		global.instanceidincrementer++;
	}
	
	if shot_stats.Shot_Looping = 0 {
		scr_Soul_Outside_Check();
	}
	shot_stats.Shot_Bounce--;
}
/*
if shot_stats.Shot_Chain >= 1 and shot_stats.Shot_Bounce = 0 and shot_stats.Shot_Melee = 0 {
    shot_stats.Shot_Chain--;
    target = noone
    x = other.x;
    y = other.y;
    with obj_Boss_Parent {
        dis = distance_to_object(other);
        var hit_again = ds_list_find_index(projectile_hits, other.shot_id);
        if hit_again = -1
        if other.target == noone || dis < other.target.dis
        if collision_circle(other.x, other.y, other.shot_stats.Shot_Chain_Range, id, true, false)
        other.target = id;
    }
    if target != noone {
        move_towards_point(target.x,target.y,shot_stats.Shot_Chain_Speed);
    } else {
        instance_destroy();
    }
}

*/