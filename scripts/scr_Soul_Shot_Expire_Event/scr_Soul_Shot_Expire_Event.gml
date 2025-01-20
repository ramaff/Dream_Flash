// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Shot_Expire_Event(){
	
	if variable_struct_names_count(shot_stats.Real_Boss_Hits) == 0 and shot_stats.Shot_Origin = obj_Soul_Parent {
		scr_A07_Reset();	
	}
	
	if shot_stats.Shot_Burst_Stats != false { 
		var burstIndex = array_length(shot_stats.Shot_Burst_Stats) - 1;
		if burstIndex >= 0 {
			if variable_struct_exists(shot_stats.Shot_Burst_Stats[burstIndex], "Shot_Expire_Burst") {
				if shot_stats.Shot_Burst_Stats[burstIndex].Shot_Expire_Burst {
					event_user(0)
				}
			}	
		}
	} 

	if shot_stats.Shot_Comeback > 0 {
	    shot_stats.Shot_Comeback--;
	    dir = 180;
	    image = 1;
	    shot_stats.Shot_Hit_Again = 1;
	    with instance_create(x,y,obj_Lesser_Soul_Shot) {
	        shot_stats = scr_Duplicate_Shot_Stats();
			//shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
			image_alpha = 1;
	    }
	}

	if shot_stats.Shot_Recycle > 0 {
	    shot_stats.Shot_Recycle--;
	
		dir = 0;
		shotburstpower = shot_stats.Shot_Power;
		//shotduplicatesprite = other.shotduplicatesprite;

	
	    image = 1;
	    shot_stats.Shot_Hit_Again = 1;
		if shot_stats.Shot_Beam = 0 {
		    with instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y, object_index) {
		        shot_stats = scr_Duplicate_Shot_Stats();
				//shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
				image_alpha = 1;
				//shot_stats.Shot_Form_Show = 0;
				shot_stats.Shot_Size_Relation = 1;
				//shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
				shot_stats.Shot_Size_Max = shot_stats.Shot_Size;
				sprite_index = other.sprite_index;
				direction = point_direction(obj_Soul_Parent.x,obj_Soul_Parent.y,mouse_x, mouse_y) - (shot_stats.Shot_Accuracy / 2) + random(shot_stats.Shot_Accuracy);
		    } 
		} else if scr_Chance(15) {
			var beamseg = 1;
			var beamdir = point_direction(obj_Soul_Parent.x,obj_Soul_Parent.y,mouse_x, mouse_y) - (shot_stats.Shot_Accuracy / 2) + random(shot_stats.Shot_Accuracy);
			var curvedir = (-1 + random(2))
			var beamstop = shot_stats.Shot_Melee
			var beamxx = lengthdir_x(-6, beamdir)
			var beamyy = lengthdir_y(-6, beamdir)
			//var oldbeamdir = beamdir
			var beamtype = shot_stats.Shot_Beam
			var beamtotalsegs = 15;
			var beamspriteindex = 0;
			var beamsize = shot_stats.Shot_Size;
			var dirChange = 0;
			var boss_hits = {};
			var homespeed = shot_stats.Shot_Homing_Speed * 3;
			var hit_again = -1;
			var splitsize = 128 * shot_stats.Shot_Size;
		
			scr_Beam_Create(x, y, beamseg, beamdir, curvedir, beamstop, beamxx, beamyy, beamtype, beamtotalsegs, beamspriteindex, beamsize, dirChange, homespeed, splitsize)	
		}
	} else if shot_stats.Shot_Wander > 0 and shot_stats.Shot_Beam = 0 {
		shot_stats.Shot_Wander--;
		direction = random(360);
		var fac = (1 + random(1))
		shot_stats.Shot_Speed = shot_stats.Shot_Speed * fac;
		speed = speed * fac;
		dir = random(360);
		shotburstpower = shot_stats.Shot_Power;
		
		with instance_create(x,y,object_index) {
	        shot_stats = scr_Duplicate_Shot_Stats();
			//shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
			image_alpha = 1;
			//shot_stats.Shot_Form_Show = 0;
			shot_stats.Shot_Size_Relation = 1;
			//shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
			shot_stats.Shot_Size_Max = shot_stats.Shot_Size;
			sprite_index = other.sprite_index;
	    } 
	}

	if shot_stats.Shot_Impact_Type = 1 {
	    with (obj_Boss_Parent) {
			var hit_again = variable_struct_exists(projectile_hits, other.shot_id)
			if !hit_again {
		        if distance_to_object(other) < other.shot_stats.Shot_Impact_Size {
		            scr_Boss_Splash_Damage_Calc();
		        }
		    }
	    }
		if shot_stats.Shot_Impact_Explode > 0 {
			scr_Boss_Hit_Explosion();
		}
		if shot_stats.Shot_Screen_Shake > 2 {
			scr_Screen_Shake(shot_stats.Shot_Screen_Shake, shot_stats.Shot_Screen_Shake - 2);
		}
	}

	if shot_stats.Shot_Impact_Type = 2 {
		scr_Screen_Shake(20, 14);
		scr_Disk_Effect(20, 1, c_white)
		scr_Disk_Effect(25, 1.25, c_white)
		scr_Disk_Effect(30, 1.5, c_white)
		
		with (obj_Boss_Parent) {
			dmg = other.shot_stats.Shot_Impact_Power;
			bosshealth -= dmg;
			scr_Damage_Indicator(0, dmg, 2);
		}
		
		with(obj_Bullet_Parent) {
			bulletspeed = bulletspeed / 3;
			speed = speed / 3;
				
			bulletpower -= other.shot_stats.Shot_Impact_Power / 2;
			bulletsize = (bulletpower / bulletpowermax);
				
			if bulletsize < 0.05 {
				bulletsize = 0.05;	
			}
			if bulletpower < 1 {
				instance_destroy();	
			}
		}
	}
	
	instance_destroy();

}