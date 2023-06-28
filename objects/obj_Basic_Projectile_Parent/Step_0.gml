//scr_Room_Depth(0);

/*
if shotairtarget = 0 and shotmelee = 0 {
	//scr_Projectile_Border();
}*/

scr_A14();
scr_OA06_Damage();

shotexisttime++;

//shotmelee = 1;
if shotmovement = 0 {
	speed = 0;	
}

if shotsuck > 0 {
	scr_Enemy_Bullet_Suck(shotsuck);	
}

if shotbounce = 1 and shotairtarget = 0 and shotmelee = 0 {
    scr_Wall_Bounce_Ext();
}

//scr_Weapon_Direction_List();
if shotpointangle = 1 {
	image_angle = direction;	
}

if shotfacedirection = 1 {
	scr_Shot_Two_Face_Direction();	
}

if shotlobbing >= 1 {
	scr_Shot_Lobbing();
}

shottimer--;

/*if alarm[0] <= shotlifespan / 2 and shotwander > 0 {
	shotwander--;
	direction = random(360);
	var fac = (1 + random(1))
	shotspeed = shotspeed * fac;
	speed = speed * fac;
} */


if shotshrink = 1 {
	shotsize -= shotsizemax / shotlifespan;
	image_xscale = shotsize;
	image_yscale = shotsize;
} else {
	if (shottimer <= (shotlifespan / 10)) and shotcomeback = 0 and shotlobbing = 0 {
	  shotSizeRelation = ((shottimer * 10) / shotlifespan);
	}
}

if shotfade = 1 {
	image_alpha -= 1 / shotlifespan;	
}

image_angle += image_rotation_speed;

//direction += shotwavedirection;
shotwavedirection -= shotwaveacceleration;

shotspeed -= shotfriction;
speed -= shotfriction;

shotspeed += shotacceleration;
speed += shotacceleration;

if shotspeed < shotminspeed {
    shotspeed = shotminspeed;
    speed = shotminspeed;
}

var oang = 90;
if shotwavedirection < 0 {
	oang = 270;	
}
{
	x += lengthdir_x(shotwavedirection,direction + 90);
	y += lengthdir_y(shotwavedirection,direction + 90);
}

if shotmousemaintain = 1 {
    var targetdirection = point_direction(x,y,mouse_x,mouse_y) + shotdirectionaddition;
	
	direction = scr_Angle_Converge(direction, targetdirection, speed + 2);
	image_angle = direction
	
}
if shotsoulmaintain = 1 {
	if instance_exists(shotfolloworigin) {
	    x = shotfolloworigin.x + shotxmaintain;
	    y = shotfolloworigin.y + shotymaintain;
	}
}

if shot_stats.Shot_Excess_Essence > 0 {
	if scr_Chance(5) {
		var color = make_color_rgb(0, 170, 255)
		scr_Particle_Burst(obj_Weapon_Trail, spr_Soul_Big_Bit, color, color, 1, 4 + random(4), random(360), 0, 0, shotsize, 10 + random(5))
	}
	var fac = speed / 2;
	x += (random(1) - 0.5) * fac;
	y += (random(1) - 0.5) * fac;
}

if shotgrow > 0 {
    image_xscale += (shotsizemax - shotgrowsize) / shotgrowtime;
    image_yscale += (shotsizemax - shotgrowsize) / shotgrowtime;
}
if image_xscale > shotsizemax {
    image_xscale = shotsizemax;
    image_yscale = shotsizemax;
}

if !instance_exists(target) {
    target = obj_Soul_Parent;
}

if shotairburststats != false {
	var burstIndex = array_length(shotairburststats) - 1;
	var near_boss = noone;
	if instance_exists(obj_Boss_Parent) {
		near_boss = instance_nearest(x,y, obj_Boss_Parent).id
	}
	if instance_exists(near_boss) and burstIndex >= 0 and shotairburststats[burstIndex] != false {
		var sprd = shotairburststats[burstIndex].Spread
		if distance_to_object(near_boss) <= shotairburststats[burstIndex].Range {
			dir = -sprd / 2;
			shotlifespan = shotlifespan * 0.6;
		    repeat(shotairburststats[burstIndex].Amount) {
				
				if sprd < 0 {
					dir = random(sprd) - (sprd / 2)
				}
				
		        with instance_create(x,y,object_index) {
		            scr_Duplicate_Shot_Stats();
						
					var vshotairburststats = other.shotairburststats[burstIndex]
					
					scr_Shot_Burst_Stats(vshotairburststats);
					
					shotburststats = other.shotburststats;
					shotextrastats = other.shotextrastats;
					
					if burstIndex > 0 {
						shotairburststats = [];
						for(var i = 0; i <= burstIndex-1; i++) {
							array_insert(shotairburststats,i,other.shotairburststats[i])
						}
					} else {
						shotairburststats = false;	
					}
					//array_delete(shotairburststats,burstIndex,1);
		        }
		        dir += shotairburststats[burstIndex].Spread;
		    }
			instance_destroy();
		}
	}	
} else {

	if shotbursttype = 3 {
		if instance_exists(obj_Boss_Parent) {
			if distance_to_object(obj_Boss_Parent) <= shotburstrange {
				dir = -shotburstspread / 2;
				shotlifespan = shotlifespan * 0.6;
		        repeat(shotburstamount) {
		            with instance_create(x,y,obj_Lesser_Soul_Shot) {
						//shotlifespan = other.shotlifespan / 2;
		                scr_Duplicate_Shot_Stats();
		                //shotlifespan = shotlifespan / 2;
		                //alarm[0] = shotlifespan;
		            }
		            dir += shotburstspread / shotburstamount;
		        }
				shotbursttype = 0;
				instance_destroy();
			}
		}
	}

	if shotbursttype = 4 {
	
		var jiggle = speed / 2;
		x += -(jiggle / 2) + random(jiggle);
		y += -(jiggle / 2) + random(jiggle);
	
		if instance_exists(obj_Boss_Parent) {
			if distance_to_object(obj_Boss_Parent) <= shotburstrange {
		        repeat(shotburstamount) {
					dir = -shotburstspread / 2 + random(shotburstspread);
		            with instance_create(x,y,obj_Lesser_Soul_Shot) {
						shotlifespan = other.shotlifespan / 2;
		                scr_Duplicate_Shot_Stats();
						shotsize = other.shotsize - 0.25;
						image_xscale = shotsize;
						image_yscale = shotsize;
						shotspeed = other.shotburstspeed / 2 + random(other.shotburstspeed / 2);
				
						speed = shotspeed;
		                //shotlifespan = shotlifespan / 2;
		                //alarm[0] = shotlifespan;
		            }
		        }
				shotbursttype = 0;
				instance_destroy();
			}
		}
	}
}

if shotorbitaltype > 0 {
	if instance_exists(otarget) {

	    shotCenterX = otarget.x;
	    shotCenterY = otarget.y;
    
	    shotAngle += shotspeed;
    
	    image_angle = shotAngle + 90;
    
	    if (shotAngle >= 360) {
	        shotAngle -= 360;
	    }
	
		shotOrbit = 75;

	    x = lengthdir_x(shotOrbit, shotAngle) + shotCenterX;
	    y = lengthdir_y(shotOrbit, shotAngle) + shotCenterY;
    
	    image_angle = shotAngle + 90;
	} else {
		direction = shotAngle + 90;
		speed = shotspeed
	}
    
}

if shotshieldtype = 1 || shotcontinue = 1 { 
    var size = shotsize * (shotpower / shotpowermax);
    image_xscale = size;
    image_yscale = size;
}

if shotaura = 1 {
	if instance_exists(obj_Boss_Parent) {
		with(obj_Boss_Parent) {
			if distance_to_object(other) <= other.shotaurarange {
			    dmg = other.shotaurapower / 60;
			    bosshealth -= dmg;
			}
		}
	}
}

if shothomingtype = 1 {
    target = noone

	if instance_exists(obj_Boss_Parent) {
	    with(obj_Boss_Parent) {
	        var dis = distance_to_object(other);
		    var hit_again = variable_struct_exists(projectile_hits, id)
			if !hit_again and dis < other.shothomingrange {
				other.target = id;
			}
	    }
	}
    if target != noone {
    
        im = direction;

        speed = min(speed + 0.5,shotspeed);
        
        var pointDir = point_direction(x,y,target.x,target.y);
        im += sin(degtorad(pointDir - im)) * shothomingspeed;
        direction = im;
    
        //move_towards_point(target.x,target.y,shotspeed);
    }

}

if shothomingtype = 2 {
    target = noone
	if instance_exists(obj_Boss_Parent) {
	    with obj_Boss_Parent {
	        var dis = distance_to_object(other);
		    var hit_again = variable_struct_exists(projectile_hits, id)
			if !hit_again and dis < other.shothomingrange {
				other.target = id;
			}
	    }
	}
    if target != noone {
		var dist = point_distance(target.x, target.y, x, y);
		if dist > shotspeed {
			move_towards_point(target.x,target.y,shotspeed);
		} else {
			move_towards_point(target.x,target.y,dist);
		}
    }

}

if shotsnakemove = 2 {
	target = noone
	if instance_exists(obj_Boss_Parent) {
		var mdist = 10000;
		var dis = 0;
	    with obj_Boss_Parent {
	        dis = distance_to_object(other);
	        if other.target == noone || dis < mdist {
				if collision_circle(other.x, other.y, 10000, id, true, false) {
					other.target = id;
					mdist = dis;
				}
			}
	    }
	}
	
	if target != noone {
		if (abs(x - target.x) < 20) || (abs(y - target.y) < 20){
			direction = point_direction(x,y,target.x, target.y);
		}
		if distance_to_point(target.x, target.y) < 50 {
			shotsnakemove = 1;	
		}
	} else {
		if (abs(x - shottargetX) < 20) || (abs(y - shottargetY) < 20){
			direction = point_direction(x,y,shottargetX, shottargetY);
		}
		if distance_to_point(shottargetX, shottargetY) < 50 {
			shotsnakemove = 1;	
		}
	}
	//direction = point_direction(x,y,shottargetX, shottargetY);
	
}

if shotsnakemove > 0 {
	direction = round(direction / 90) * 90;
}

if instance_exists(followtarget) {
	var setdist = shotspeed * 5;
	var dis = point_distance(x, y, followtarget.x, followtarget.y)
	var follow_dir = point_direction(x, y, followtarget.x, followtarget.y)
	if dis > setdist {
		speed = min(dis - setdist, shotspeed * 2);
		direction = follow_dir;
		//x = lerp(x, followtarget.x, 0.05);
		//y = lerp(y, followtarget.y, 0.05);
	} 
} 

if shotangularvelocity != 0 {
	direction += shotangularvelocity;
}

scr_OB02();

image_angle += shotwavedirection;

if shotlooping > 0 and shotairtarget = 0 and shotmelee = 0 {
    scr_Room_Loop_Everywhere_Ext();
}

