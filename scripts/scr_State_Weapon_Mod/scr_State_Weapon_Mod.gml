// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Weapon_Mod(){
	var reverie = false;
	if global.F[5] >= 1 {
		reverie = scr_Chance(10 / global.F[5]);
	}
	
	if other.Shot_Off_State = 0 and shotorigin = obj_Soul_Parent {
		if (obj_Soul_Parent.scurrentstate == "Snake" || (obj_Soul_Parent.stransformedstate == "Snake" and reverie == true)) {
			shotsnakemove = 2;
			shottargetX = mouse_x;
			shottargetY = mouse_y;
		
			shotduplicatesprite = sprite_index;
		
			shotextrahits[3] = 1;
			shotextrahitssprite[3] = shotduplicatesprite;
			shotextrahitfrequency[3] = 7;
			shotextrahitpower[3] = shotpower * global.soulstateformboost / 5;
			shotextrahitspeed[3] = 0;
			shotextrahitlifespan[3] = 13;
			shotextrahitpierce[3] = 2;
			shotextrahitsize[3] = shotsize * 1;
			shotextrahitfade[3] = 1;
		
			shotpierce += 1;
		
			image = 1;
		
			shotspeed = shotspeed * 2;
			speed = shotspeed;
		}
		if (obj_Soul_Parent.scurrentstate == "Beast" || (obj_Soul_Parent.stransformedstate == "Beast" and reverie == true)) {
		
			image = 1;
		
			shotspeed = shotspeed * (1.5 * global.soulstateformboost);
			if shotlifespan > 20 {
				shotlifespan = 20 + ((shotlifespan - 20) / 3);
			}
			alarm[0] = shotlifespan;
		    shottimer = shotlifespan;
			speed = shotspeed;
		
			shotpowermax = shotpowermax * (1.5 * global.soulstateformboost);
		    shotpower = shotpowermax;
		    shotPowerLevel = shotPowerLevel * (1.5 * global.soulstateformboost);
		}
		if (obj_Soul_Parent.scurrentstate == "Scrub" || (obj_Soul_Parent.stransformedstate == "Scrub" and reverie == true)) {
		
			image = 1;
			shotduplicatesprite = sprite_index;
			
			var size = 1;
			if sprite_get_height(sprite_index) > 100 {
				var size = 2;
			}
			sprite_index = spr_Shot_Bubble_Medium;
			if size = 2 {
				sprite_index = spr_Shot_Bubble_Large;	
			}
		
			shotspeed = shotspeed;
			shotfriction = shotspeed / shotlifespan;
			shotminspeed = shotspeed * 0.2;
			shotlifespan = shotlifespan * 2;
			alarm[0] = shotlifespan;
		    shottimer = shotlifespan;
			speed = shotspeed;
			
			shotbursttype = 3;
			shotburstpower = shotpower;
			shotburstspeed = shotspeed;
			shotburstamount = 1;
			shotburstrange = 80;
			
			shothomingtype = 1;
			if shothomingrange < 250 {
				shothomingrange = 300;
			} else {
				shothomingrange += 50;	
			}
			if shothomingspeed < 0 {
				shothomingspeed = 5;	
			} else {
				shothomingspeed += 5;	
			}
		}
		if (obj_Soul_Parent.scurrentstate == "Spike" || (obj_Soul_Parent.stransformedstate == "Spike" and reverie == true)) {
		
			shotspeed = shotspeed * (1.25 * global.soulstateformboost);
			shotpierce += 1;
		
			speed = shotspeed;
		
			shotpowermax = shotpowermax * (1.15 * global.soulstateformboost);
		    shotpower = shotpowermax;
		    shotPowerLevel = shotPowerLevel * (1.15 * global.soulstateformboost);
		
			if sprite_get_height(sprite_index) < 80 and shotmelee == 0 {
				sprite_index = spr_Spike_Essence_Shot;
				shotpointangle = 1;
			}
		
		}
		if (obj_Soul_Parent.scurrentstate == "Casting" || (obj_Soul_Parent.stransformedstate == "Casting" and reverie == true)) and other.Shot_Beam = 0 {
		
			image = 1;
		
			//shotspeed = shotspeed * 1.5;
			shotlifespan = shotlifespan * 2;
			alarm[0] = shotlifespan;
		    shottimer = shotlifespan;
			//speed = shotspeed;
			
			shotspeed = shotspeed * 0.75;
			speed = shotspeed;
			
			shotphasing = 1;
			
			shotorbitaltype = 1;
			shotOrbit = 75;
	        shotAngle = point_direction(x,y,mouse_x,mouse_y);
	        //shotAngle += other.Shot_Current_Count * (360 / other.Shot_Count)
	        shotCenterX = other.x;
	        shotCenterY = other.y;
			speed = 0;
			
			image_xscale = shotsize;
			image_yscale = shotsize;
			
			shotduplicatesprite = sprite_index;
			
			shotextrahits[4] = 1;
			shotextrahitssprite[4] = shotduplicatesprite;
			shotextrahitfrequency[4] = 15 + (shotlifespan / 10);
			shotextrahitpower[4] = shotpower * global.soulstateformboost / 2.5;
			shotextrahitspeed[4] = shotspeed * 1.5;
			shotextrahitlifespan[4] = shotlifespan / 2;
			shotextrahitpierce[4] = shotpierce;
			shotextrahitsize[4] = shotsize * 0.5;
			//shotextrahitfade = 1;
			
			shotextrahitshrink[4] = 0;
			shotextrahitfade[4] = 0;
			
			if other.Weapon_Melee > 0 and obj_Soul_Parent.scurrentstate = "Casting" {
		
				shotextrahitlifespan[4] = 10;
				shotextrahitsize[4] = other.Shot_Size * 2;
				shotextrahitssprite[4] = other.Shot_Duplicate_Sprite;
		
				//Shot_Off_State = 1;
			}
				
			target = other;
			otarget = other.id;
		}
	
		if scr_State_Active_Check("Ascending", reverie) {
			
			shotsize += 0.1;
			shotsizemax += 0.1;
			image_xscale = shotsize;
			image_yscale = shotsize;
			
			shot_stats.Shot_Lobbing = true;
			shot_stats.Shot_Height = 50;
			shot_stats.Shot_Fall_Speed = -0.5;
			var grav = (100 / (shotlifespan * shotlifespan)) - (-1 / shotlifespan) 
			shot_stats.Shot_Gravity = grav + 0.01
			y -= shot_stats.Shot_Height;
			
			shotchain = 4;
			shotchaintype = 2;
			shotchainpower = shotpower / 4;
			shotchainrange = 500
		}
	}
}