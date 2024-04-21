//scr_Room_Depth(0);

/*
if shot_stats.Shot_Air_Target = 0 and shot_stats.Shot_Melee = 0 {
	//scr_Projectile_Border();
}*/

scr_A14();
scr_OA06_Damage();

shot_stats.Shot_Exist_Time++;

//shot_stats.Shot_Melee = 1;
if shot_stats.Shot_Movement = 0 {
	speed = 0;	
}

if shot_stats.Shot_Ground = true {
	shot_stats.Shot_Lobbing = false;
	shot_stats.Shot_Height = 0;
	shot_stats.Shot_Fall_Speed = 0;
	shot_stats.Shot_Gravity = 0;
	shot_stats.Shot_Lobbing = false;
}

if shot_stats.Shot_Suck > 0 {
	if shot_stats.Shot_Suck_Type = 1 {
		scr_Enemy_Bullet_Suck(shot_stats.Shot_Suck);	
	} else if shot_stats.Shot_Suck_Type = 2 {
		scr_Enemy_Bullet_Orbit_Suck(shot_stats.Shot_Suck);	
	}
}

if shot_stats.Shot_Bounce = 1 and shot_stats.Shot_Air_Target = 0 and shot_stats.Shot_Melee = 0 {
    scr_Wall_Bounce_Ext();
}

//scr_Weapon_Direction_List();
if shot_stats.Shot_Point_Angle = 1 {
	image_angle = direction;	
}

if shot_stats.Shot_Face_Direction = 1 {
	scr_Shot_Two_Face_Direction();	
}

//if shot_stats.Shot_Lobbing = true {
//	scr_Shot_Lobbing();
//}

//shot_stats.Shot_Timer--;

/*if alarm[0] <= shot_stats.Shot_Life_Span / 2 and shot_stats.Shot_Wander > 0 {
	shot_stats.Shot_Wander--;
	direction = random(360);
	var fac = (1 + random(1))
	shot_stats.Shot_Speed = shot_stats.Shot_Speed * fac;
	speed = speed * fac;
} */


if shot_stats.Shot_Shrink = 1 {
	shot_stats.Shot_Size -= shot_stats.Shot_Size_Max / shot_stats.Shot_Life_Span;
	image_xscale = shot_stats.Shot_Size;
	image_yscale = shot_stats.Shot_Size;
} else {
	if (alarm[0] <= (shot_stats.Shot_Life_Span / 10)) and shot_stats.Shot_Comeback = 0 and shot_stats.Shot_Lobbing = 0 {
	  shot_stats.Shot_Size_Relation = ((alarm[0] * 10) / shot_stats.Shot_Life_Span);
	}
}

if shot_stats.Shot_Fade = 1 {
	image_alpha -= 1 / shot_stats.Shot_Life_Span;	
}

image_angle += shot_stats.Image_Rotation_Speed;

//direction += shot_stats.Shot_Wave_Direction;
shot_stats.Shot_Wave_Direction -= shot_stats.Shot_Wave_Acceleration;

shot_stats.Shot_Speed -= shot_stats.Shot_Friction;
speed -= shot_stats.Shot_Friction;

shot_stats.Shot_Speed += shot_stats.Shot_Acceleration;
speed += shot_stats.Shot_Acceleration;

if shot_stats.Shot_Speed < shot_stats.Shot_Min_Speed {
    shot_stats.Shot_Speed = shot_stats.Shot_Min_Speed;
    speed = shot_stats.Shot_Min_Speed;
}

var oang = 90;
if shot_stats.Shot_Wave_Direction < 0 {
	oang = 270;	
}
{
	x += lengthdir_x(shot_stats.Shot_Wave_Direction,direction + 90);
	y += lengthdir_y(shot_stats.Shot_Wave_Direction,direction + 90);
}

if shot_stats.Shot_Mouse_Maintain = 1 {
    var targetdirection = point_direction(x,y,mouse_x,mouse_y) + shot_stats.Shot_Direction_Addition;
	
	direction = scr_Angle_Converge(direction, targetdirection, speed + 2);
	image_angle = direction
	
}
if shot_stats.Shot_Soul_Maintain = 1 {
	if instance_exists(shot_stats.Shot_Follow_Origin) {
	    x = shot_stats.Shot_Follow_Origin.x + shot_stats.Shot_X_Maintain;
	    y = shot_stats.Shot_Follow_Origin.y + shot_stats.Shot_Y_Maintain;
	}
}

if shot_stats.Shot_Excess_Essence > 0 {
	if scr_Chance(5) {
		var color = make_color_rgb(0, 170, 255)
		scr_Particle_Burst(obj_Friction_Part, spr_Soul_Big_Bit, color, color, 1, 4 + random(4), random(360), 0, 0, shot_stats.Shot_Size, 10 + random(5))
	}
	var fac = speed / 2;
	x += (random(1) - 0.5) * fac;
	y += (random(1) - 0.5) * fac;
}

if shot_stats.Shot_Grow > 0 {
    image_xscale += (shot_stats.Shot_Size_Max - shot_stats.Shot_Grow_Size) / shot_stats.Shot_Grow_Time;
    image_yscale += (shot_stats.Shot_Size_Max - shot_stats.Shot_Grow_Size) / shot_stats.Shot_Grow_Time;
}
if image_xscale > shot_stats.Shot_Size_Max {
    image_xscale = shot_stats.Shot_Size_Max;
    image_yscale = shot_stats.Shot_Size_Max;
}

if !instance_exists(shot_stats.Shot_Target) {
    shot_stats.Shot_Target = obj_Soul_Parent;
}

if shot_stats.Shot_Air_Burst_Stats != false {
	var burstIndex = array_length(shot_stats.Shot_Air_Burst_Stats) - 1;
	var near_boss = noone;
	if instance_exists(obj_Boss_Parent) {
		near_boss = instance_nearest(x,y, obj_Boss_Parent).id
	}
	if instance_exists(near_boss) and burstIndex >= 0 and shot_stats.Shot_Air_Burst_Stats[burstIndex] != false {
		var sprd = shot_stats.Shot_Air_Burst_Stats[burstIndex].Spread
		if distance_to_object(near_boss) <= shot_stats.Shot_Air_Burst_Stats[burstIndex].Range {
			dir = -sprd / 2;
			shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span * 0.6;
			
			shot_stats.Shot_Air_Burst_Stats[burstIndex] = scr_Setup_Shot_Stats_Asset(shot_stats.Shot_Air_Burst_Stats[burstIndex]);
			
			var _obj = asset_get_index(shot_stats.Shot_Air_Burst_Stats[burstIndex].Shot_Type)
			
		    repeat(shot_stats.Shot_Air_Burst_Stats[burstIndex].Amount) {
				
				if sprd < 0 {
					dir = random(sprd) - (sprd / 2)
				}
				
		        with instance_create(x,y,_obj) {
		            scr_Duplicate_Shot_Stats();
						
					var _v_shot_air_burst_stats = other.shot_stats.Shot_Air_Burst_Stats[burstIndex]
					
					scr_Shot_Burst_Stats(_v_shot_air_burst_stats);
					
					shot_stats.Shot_Burst_Stats = other.shot_stats.Shot_Burst_Stats;
					shot_stats.Shot_Extra_Stats = other.shot_stats.Shot_Extra_Stats;
					
					if burstIndex > 0 {
						shot_stats.Shot_Air_Burst_Stats = [];
						for(var i = 0; i <= burstIndex-1; i++) {
							array_insert(shot_stats.Shot_Air_Burst_Stats,i,other.shot_stats.Shot_Air_Burst_Stats[i])
						}
					} else {
						shot_stats.Shot_Air_Burst_Stats = false;	
					}
					//array_delete(shot_stats.Shot_Air_Burst_Stats,burstIndex,1);
		        }
		        dir += shot_stats.Shot_Air_Burst_Stats[burstIndex].Spread;
		    }
			instance_destroy();
		}
	}	
} 

if shot_stats.Shot_Orbital_Type > 0 {
	if instance_exists(otarget) {

	    shot_stats.Shot_Center_X = otarget.x;
	    shot_stats.Shot_Center_Y = otarget.y;
    
	    shot_stats.Shot_Orbital_Angle += 1 + shot_stats.Shot_Speed;
    
	    if (shot_stats.Shot_Orbital_Angle >= 360) {
	        shot_stats.Shot_Orbital_Angle -= 360;
	    }

	    var _xx = lengthdir_x(shot_stats.Shot_Orbital_Range, shot_stats.Shot_Orbital_Angle) + shot_stats.Shot_Center_X;
	    var _yy = lengthdir_y(shot_stats.Shot_Orbital_Range, shot_stats.Shot_Orbital_Angle) + shot_stats.Shot_Center_Y;
		
		direction = point_direction(x, y, _xx, _yy)
		var _dist = point_distance(x, y, _xx, _yy)

		speed = min(_dist / 5, 4 + shot_stats.Shot_Speed * 4)
    
	    image_angle = shot_stats.Shot_Orbital_Angle + 90;
		
		if shot_stats.Shot_Orbital_Type = 3 {
			var _range = shot_stats.Shot_Orbital_Range;
			
			shot_stats.Shot_Orbital_Range += 100 / max(1, shot_stats.Shot_Orbital_Range)
			
			//shot_stats.Shot_Orbital_Range = sqrt((_range * _range) + (shot_stats.Shot_Speed * 5))
		}
	} else {
		direction = shot_stats.Shot_Orbital_Angle + 90;
		speed = shot_stats.Shot_Speed
	}
    
}

if shot_stats.Shot_Shield_Type = 1 || shot_stats.Shot_Continue = 1 { 
    var size = shot_stats.Shot_Size * (shot_stats.Shot_Power / shot_stats.Shot_Power_Max);
    image_xscale = size;
    image_yscale = size;
}

if shot_stats.Shot_Aura = 1 {
	if instance_exists(obj_Boss_Parent) {
		with(obj_Boss_Parent) {
			if distance_to_object(other) <= other.shot_stats.Shot_Aura_Range {
			    dmg = other.shot_stats.Shot_Aura_Power / 60;
			    bosshealth -= dmg;
			}
		}
	}
}

if shot_stats.Shot_Homing_Type = 1 {
    var _target = noone
	var _max_dis = 9999;
	if instance_exists(obj_Boss_Parent) {
	    with(obj_Boss_Parent) {
	        var dis = distance_to_object(other);
		    var hit_again = variable_struct_exists(projectile_hits, other.shot_boss_id)
			if !hit_again and dis < other.shot_stats.Shot_Homing_Range and dis < _max_dis {
				_target = id;
			}
	    }
	}
    if _target != noone {
    
        im = direction;

        speed = min(speed + 0.5,shot_stats.Shot_Speed);
        
        var pointDir = point_direction(x,y,_target.x,_target.y);
        im += sin(degtorad(pointDir - im)) * shot_stats.Shot_Homing_Speed;
        direction = im;
    }

}

if shot_stats.Shot_Homing_Type = 2 {
    var _target = noone
	var _max_dis = 9999;
	if instance_exists(obj_Boss_Parent) {
	    with obj_Boss_Parent {
	        var dis = distance_to_object(other);
		    var hit_again = variable_struct_exists(projectile_hits, other.shot_boss_id)
			if !hit_again and dis < other.shot_stats.Shot_Homing_Range and dis < _max_dis {
				_target = id;
			}
	    }
	}
    if _target != noone {
		var dist = point_distance(_target.x, _target.y, x, y);
		if dist > shot_stats.Shot_Speed {
			move_towards_point(_target.x,_target.y,shot_stats.Shot_Speed);
		} else {
			move_towards_point(_target.x,_target.y,dist);
		}
    }

}

if shot_stats.Shot_Homing_Type = 3 {
    var _target = noone
	var _max_dis = 9999;
	if instance_exists(obj_Boss_Parent) {
	    with obj_Boss_Parent {
	        var dis = point_distance(x, y, other.x, other.y);
		    var hit_again = variable_struct_exists(projectile_hits, other.shot_boss_id)
			if !hit_again and dis < other.shot_stats.Shot_Homing_Range and dis < _max_dis {
				_target = id;
			}
	    }
	}
    if _target != noone {
		var _tdir = point_direction(x, y, _target.x,_target.y) + 67.5;
		direction = scr_Angle_Converge(direction, _tdir, shot_stats.Shot_Homing_Speed)
    }

}

if shot_stats.Shot_Snake_Move = 2 {
	var _target = noone
	if instance_exists(obj_Boss_Parent) {
		var mdist = 10000;
		var dis = 0;
	    with obj_Boss_Parent {
	        dis = distance_to_object(other);
	        if _target == noone || dis < mdist {
				if collision_circle(other.x, other.y, 10000, id, true, false) {
					_target = id;
					mdist = dis;
				}
			}
	    }
	}
	
	if _target != noone {
		if (abs(x - _target.x) < 20) || (abs(y - _target.y) < 20){
			direction = point_direction(x,y,_target.x, _target.y);
		}
		if distance_to_point(_target.x, _target.y) < 50 {
			shot_stats.Shot_Snake_Move = 1;	
		}
	} else {
		if (abs(x - shot_stats.Shot_Target_X) < 20) || (abs(y - shot_stats.Shot_Target_Y) < 20){
			direction = point_direction(x,y,shot_stats.Shot_Target_X, shot_stats.Shot_Target_Y);
		}
		if distance_to_point(shot_stats.Shot_Target_X, shot_stats.Shot_Target_Y) < 50 {
			shot_stats.Shot_Snake_Move = 1;	
		}
	}
	
}

if shot_stats.Shot_Snake_Move > 0 {
	direction = scr_Angle_Converge(direction, round(direction / 90) * 90, 10)
}

if instance_exists(followtarget) {
	var setdist = shot_stats.Shot_Speed * 5;
	var dis = point_distance(x, y, followtarget.x, followtarget.y)
	var follow_dir = point_direction(x, y, followtarget.x, followtarget.y)
	if dis > setdist {
		speed = min(dis - setdist, shot_stats.Shot_Speed * 2);
		direction = follow_dir;
	} 
} 

if shot_stats.Shot_Angular_Velocity != 0 {
	direction += shot_stats.Shot_Angular_Velocity;
}

scr_OB02();

image_angle += shot_stats.Shot_Wave_Direction;

if shot_stats.Shot_Looping > 0 and shot_stats.Shot_Air_Target = 0 and shot_stats.Shot_Melee = 0 {
    scr_Room_Loop_Everywhere_Ext();
}

