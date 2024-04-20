// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Weapon_Mod(){
	
	if shot_stats.Shot_Off_State = 0 and shot_stats.Shot_Origin = obj_Soul_Parent {
		if scr_State_Active_Check("Snake") and shot_stats.Shot_Beam = 0 {
			shot_stats.Shot_Snake_Move = 2;
			shot_stats.Shot_Target_X = mouse_x;
			shot_stats.Shot_Target_Y = mouse_y;
		
			//shotduplicatesprite = sprite_index;
		
			image = 1;
			
			dir = 0;
			var followtar = id
			var count = 2 * global.soulstateformboost;
			var remainder = frac(count);
			if remainder > 0 {
				if scr_Chance(1 / remainder) {
					count = ceil(count)	
				} else {
					count = floor(count)	
				}
			}
			
			shotburstpower = shot_stats.Shot_Power
			
			repeat(count) {
				with instance_create(x,y, object_index) {
					scr_Duplicate_Shot_Stats(other.shot_stats);
					
					sprite_index = other.sprite_index;
				
					followtarget = followtar;
					followtar = id;	
					
					shot_stats.Shot_Snake_Move = 1;
					
					scr_Shot_Power_Set(0.5)
					scr_Shot_Size_Set(0.7)
					
				}
			}
			
			shot_stats.Shot_Speed = shot_stats.Shot_Speed * 1.75;
			speed = shot_stats.Shot_Speed;
		}
		if scr_State_Active_Check("Beast") {
		
			image = 1;
		
			shot_stats.Shot_Speed = shot_stats.Shot_Speed * (1.5 * global.soulstateformboost);
			if shot_stats.Shot_Life_Span > 20 {
				shot_stats.Shot_Life_Span = 20 + ((shot_stats.Shot_Life_Span - 20) / 3);
			}
			alarm[0] = shot_stats.Shot_Life_Span;
		    ////shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
			speed = shot_stats.Shot_Speed;
		
			shot_stats.Shot_Power_Max = shot_stats.Shot_Power_Max * (1.5 * global.soulstateformboost);
		    shot_stats.Shot_Power = shot_stats.Shot_Power_Max;
		    shot_stats.Shot_Power_Level = shot_stats.Shot_Power_Level * (1.5 * global.soulstateformboost);
		}
		if scr_State_Active_Check("Scrub") {
		
			image = 1;
			//shotduplicatesprite = sprite_index;
			
			var size = 1;
			if sprite_get_height(sprite_index) > 100 {
				var size = 2;
			}
			sprite_index = spr_Shot_Bubble_Medium;
			if size = 2 {
				sprite_index = spr_Shot_Bubble_Large;	
			}
		
			shot_stats.Shot_Speed = shot_stats.Shot_Speed;
			shot_stats.Shot_Friction = shot_stats.Shot_Speed / shot_stats.Shot_Life_Span;
			shot_stats.Shot_Min_Speed = shot_stats.Shot_Speed * 0.2;
			shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span * 2;
			alarm[0] = shot_stats.Shot_Life_Span;
		    ////shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
			speed = shot_stats.Shot_Speed;
			
			/*shotbursttype = 3;
			shotburstpower = shot_stats.Shot_Power;
			shotburstspeed = shot_stats.Shot_Speed;
			shotburstamount = 1;
			shotburstrange = 80; */
			
			shot_stats.Shot_Homing_Type = 1;
			if shot_stats.Shot_Homing_Range < 250 {
				shot_stats.Shot_Homing_Range = 300;
			} else {
				shot_stats.Shot_Homing_Range += 50;	
			}
			if shot_stats.Shot_Homing_Speed < 0 {
				shot_stats.Shot_Homing_Speed = 5;	
			} else {
				shot_stats.Shot_Homing_Speed += 5;	
			}
		}
		if scr_State_Active_Check("Spike") {
		
			shot_stats.Shot_Spike_Aura = true
			shot_stats.Shot_Speed = shot_stats.Shot_Speed * (1.25 * global.soulstateformboost);
			//shot_stats.Shot_Pierce += 1;
		
			speed = shot_stats.Shot_Speed;
		
			/*shot_stats.Shot_Power_Max = shot_stats.Shot_Power_Max * (1.15 * global.soulstateformboost);
		    shot_stats.Shot_Power = shot_stats.Shot_Power_Max;
		    shot_stats.Shot_Power_Level = shot_stats.Shot_Power_Level * (1.15 * global.soulstateformboost);
		
			if sprite_get_height(sprite_index) < 80 and shot_stats.Shot_Melee == 0 {
				sprite_index = spr_Spike_Essence_Shot;
				shot_stats.Shot_Point_Angle = 1;
			} */
		
		}
		if scr_State_Active_Check("Casting") and shot_stats.Shot_Beam = 0 {
			

			shot_stats.Shot_Size = shot_stats.Shot_Size * 1.25;
			shot_stats.Shot_Size_Max = shot_stats.Shot_Size;
			shot_stats.Shot_Power = shot_stats.Shot_Power * 1.4;
			shot_stats.Shot_Power_Max = shot_stats.Shot_Power;
			shot_stats.Shot_Speed = shot_stats.Shot_Speed * 0.8;
			
			image_xscale = shot_stats.Shot_Size;
			image_yscale = shot_stats.Shot_Size;
			
			speed = shot_stats.Shot_Speed;

			if shot_stats.Weapon_Melee = 0 {
				shot_stats.Shot_Extra_Stats = [scr_Dupe_Struct(shot_stats)];
			}
			
			shot_stats.Shot_Extra_Stats[0].Shot_Count = 1;

			shot_stats.Shot_Extra_Stats[0].Shot_Extra_Hit_Frequency = 15 + (shot_stats.Shot_Life_Span / 10);
			shot_stats.Shot_Extra_Stats[0].Shot_Power = shot_stats.Shot_Power * global.soulstateformboost / 2.5;
			shot_stats.Shot_Extra_Stats[0].Shot_Speed = shot_stats.Shot_Speed * 1.5;

			shot_stats.Shot_Extra_Stats[0].Shot_Pierce = shot_stats.Shot_Pierce;
			shot_stats.Shot_Extra_Stats[0].Shot_Size = (0.05 + shot_stats.Shot_Size * 0.5);
			shot_stats.Shot_Extra_Stats[0].Shot_Mouse = true;
			shot_stats.Shot_Extra_Stats[0].Shot_Homing_Type = 0;

			if shot_stats.Weapon_Melee > 0 {
		
				//shot_stats.Shot_Type = "obj_Melee_Caster_Shot";
				//shot_stats.Shot_Life_Span = 180;
				//shot_stats.Shot_Size = shot_stats.Shot_Size / 2;
				//shot_stats.Shot_Extra_Stats[0].Shot_Type = "obj_Lesser_Soul_Shot";
				//shot_stats.Shot_Extra_Stats[0].Shot_Life_Span = 7;
				//shot_stats.Shot_Sprite = "spr_Casting_Sword_Orbital";
				//shot_stats.Shot_Point_Angle = 0;
				//shot_stats.Shot_Speed = 3;
		
				shot_stats.Shot_Extra_Stats[0].Shot_Off_State = 1;
			}
			
			//shotextrahitshrink[4] = 0;
			//shotextrahitfade[4] = 0;
		
			image = 1;

			shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span * 2;
			alarm[0] = shot_stats.Shot_Life_Span;
		    ////shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
			
			shot_stats.Shot_Phasing = 1;
			
			shot_stats.Shot_Orbital_Type = 1;
			shot_stats.Shot_Orbital_Range = 75;
	        shot_stats.Shot_Orbit_Angle = point_direction(x,y,mouse_x,mouse_y);

	        shot_stats.Shot_Center_X = other.x;
	        shot_stats.Shot_Center_Y = other.y;
			//speed = 0;

			/*if shot_stats.Weapon_Melee > 0 {
		
				shotextrahitlifespan[4] = 10;
				shotextrahitsize[4] = other.Shot_Size * 2;
				shotextrahitssprite[4] = other.Shot_Duplicate_Sprite;

			} */
				
			target = other;
			otarget = other.id;
		}
	
		if other.Charge_Hold = 2 || scr_State_Active_Check("Ascending") {
			
			shot_stats.Shot_Size += 0.3;
			shot_stats.Shot_Size_Max += 0.3;
			image_xscale = shot_stats.Shot_Size;
			image_yscale = shot_stats.Shot_Size;
			
			shot_stats.Shot_Lobbing = true;
			shot_stats.Shot_Height = 50;
			shot_stats.Shot_Fall_Speed = -0.5;
			var grav = (100 / (shot_stats.Shot_Life_Span * shot_stats.Shot_Life_Span)) - (-1 / shot_stats.Shot_Life_Span) 
			shot_stats.Shot_Gravity = grav + 0.01
			y -= shot_stats.Shot_Height;
			
			shot_stats.Shot_Chain = 4;
			shot_stats.Shot_Chain_Type = 2;
			shot_stats.Shot_Chain_Power = shot_stats.Shot_Power / 4;
			shot_stats.Shot_Chain_Range = 500
		}
	}
}