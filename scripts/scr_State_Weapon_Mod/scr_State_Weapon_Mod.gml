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
			
			var _og_stats = variable_clone(shot_stats)
			
			repeat(count) {
				with instance_create(x,y, object_index) {
					shot_stats = scr_Duplicate_Shot_Stats(_og_stats, _og_stats);
					
					sprite_index = other.sprite_index;
				
					followtarget = followtar;
					followtar = id;	
					
					shot_stats.Shot_Snake_Move = 2;
					
					scr_Shot_Power_Set(0.5)
					scr_Shot_Size_Set(0.7, false)
					
				}
			}
			
			shot_stats.Shot_Speed = shot_stats.Shot_Speed * 1.75;
			speed = shot_stats.Shot_Speed;
		}
		if scr_State_Active_Check("Beast") {
		
			//image = 1;
		
			/*shot_stats.Shot_Speed = shot_stats.Shot_Speed * (1.5 * global.soulstateformboost);
			if shot_stats.Shot_Life_Span > 20 {
				shot_stats.Shot_Life_Span = 20 + ((shot_stats.Shot_Life_Span - 20) / 3);
			}
			alarm[0] = shot_stats.Shot_Life_Span;
		    ////shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
			speed = shot_stats.Shot_Speed; */
		
			/*shot_stats.Shot_Power_Max = shot_stats.Shot_Power_Max * (1.5 * global.soulstateformboost);
		    shot_stats.Shot_Power = shot_stats.Shot_Power_Max;
		    shot_stats.Shot_Power_Level = shot_stats.Shot_Power_Level * (1.5 * global.soulstateformboost); */
		}
		if shot_stats.Shot_Type = "obj_Bubble_Shot" {
		
			image = 1;
			
			var size = 1;
			if sprite_get_height(sprite_index) > 100 {
				var size = 2;
			}
			sprite_index = spr_Shot_Bubble_Medium;
			if size = 2 {
				sprite_index = spr_Shot_Bubble_Large;	
			}
		
			//shot_stats.Shot_Speed = shot_stats.Shot_Speed;
			shot_stats.Shot_Bubble_Air_Burst_Stats[0].Shot_Friction = shot_stats.Shot_Friction;
			shot_stats.Shot_Bubble_Air_Burst_Stats[0].Shot_Min_Speed = shot_stats.Shot_Min_Speed;
			shot_stats.Shot_Bubble_Air_Burst_Stats[0].Shot_Life_Span = shot_stats.Shot_Life_Span;
			shot_stats.Shot_Bubble_Air_Burst_Stats[0].Shot_Speed = shot_stats.Shot_Speed;
			shot_stats.Shot_Bubble_Air_Burst_Stats[0].Shot_Homing_Type = shot_stats.Shot_Homing_Type;
			shot_stats.Shot_Bubble_Air_Burst_Stats[0].Shot_Homing_Speed = shot_stats.Shot_Homing_Speed;
			shot_stats.Shot_Bubble_Air_Burst_Stats[0].Shot_Homing_Range = shot_stats.Shot_Homing_Range;
			shot_stats.Shot_Friction = shot_stats.Shot_Speed / shot_stats.Shot_Life_Span;
			shot_stats.Shot_Min_Speed = shot_stats.Shot_Speed * 0.2;
			shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span * 2;
			alarm[0] = shot_stats.Shot_Life_Span;
			speed = shot_stats.Shot_Speed;
			
			shot_stats.Shot_Homing_Type = 1;
			if shot_stats.Shot_Homing_Range < 250 {
				shot_stats.Shot_Homing_Range = 300;
			} else {
				shot_stats.Shot_Homing_Range += 50;	
			}
			if shot_stats.Shot_Homing_Speed <= 0 {
				shot_stats.Shot_Homing_Speed = 3;
			} else {
				shot_stats.Shot_Homing_Speed += 3;	
			}
		}
		if scr_State_Active_Check("Spike") {
		
			shot_stats.Shot_Spike_Aura = true
			shot_stats.Shot_Speed = shot_stats.Shot_Speed * (1.25 * global.soulstateformboost);
			//shot_stats.Shot_Pierce += 1;
		
			speed = shot_stats.Shot_Speed;
		
		}
		if scr_State_Active_Check("Casting") /*and shot_stats.Shot_Beam = 0*/ {
			

			shot_stats.Shot_Size = shot_stats.Shot_Size * 1.25;
			shot_stats.Shot_Size_Max = shot_stats.Shot_Size;
			shot_stats.Shot_Power = shot_stats.Shot_Power * 1.4;
			shot_stats.Shot_Power_Level = shot_stats.Shot_Power_Level * 1.4;
			shot_stats.Shot_Power_Max = shot_stats.Shot_Power;
			shot_stats.Shot_Speed = shot_stats.Shot_Speed * 0.8;
			
			image_xscale = shot_stats.Shot_Size;
			image_yscale = shot_stats.Shot_Size;
			
			speed = shot_stats.Shot_Speed;

			if shot_stats.Shot_Melee = false and shot_stats.Shot_Beam = 0 {
				shot_stats.Shot_Extra_Stats = [scr_Dupe_Struct(shot_stats)];
			}
			
			shot_stats.Shot_Extra_Stats[0].Shot_Count = 1;

			shot_stats.Shot_Extra_Stats[0].Shot_Extra_Hit_Frequency = 15 + (shot_stats.Shot_Life_Span / 10);
			shot_stats.Shot_Extra_Stats[0].Burst_Power = global.soulstateformboost / 2.5;
			shot_stats.Shot_Extra_Stats[0].Shot_Speed = shot_stats.Shot_Speed * 1.5;

			shot_stats.Shot_Extra_Stats[0].Shot_Pierce = shot_stats.Shot_Pierce;
			shot_stats.Shot_Extra_Stats[0].Shot_Size = (0.05 + shot_stats.Shot_Size * 0.5);
			shot_stats.Shot_Extra_Stats[0].Shot_Mouse = true;
			shot_stats.Shot_Extra_Stats[0].Shot_Homing_Type = 0;

			if shot_stats.Shot_Melee = true {
		
				shot_stats.Shot_Extra_Stats[0].Shot_Off_State = 1;
			}
		
			image = 1;

			shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span * 2;
			alarm[0] = shot_stats.Shot_Life_Span;
			
			shot_stats.Shot_Phasing = 1;
			
			shot_stats.Shot_Orbital_Type = 1;
			shot_stats.Shot_Orbital_Range = 75;
	        shot_stats.Shot_Orbital_Angle = point_direction(x,y,mouse_x,mouse_y);

	        shot_stats.Shot_Center_X = other.x;
	        shot_stats.Shot_Center_Y = other.y;

				
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