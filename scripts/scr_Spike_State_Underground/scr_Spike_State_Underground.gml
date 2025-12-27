// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Spike_State_Underground(){

	if soul_underground > 0 {
		var _dir = point_direction(x, y, obj_Astral_Indicator.x, obj_Astral_Indicator.y)
		var _dis = min(15, point_distance(x, y, obj_Astral_Indicator.x, obj_Astral_Indicator.y) / max(1, soul_underground))
	
		x += lengthdir_x(_dis, _dir)
		y += lengthdir_y(_dis, _dir)
	
		if soul_underground mod 3 = 0 {
			scr_Spike_Shot_Teleport_Use(0, 0);
		}
	
		soul_underground--;
	} else if soul_underground = 0 {
	
		var dist = 100;
		var ang = 0

		for(var _i = 0; _i < 5; _i++) {
			for(var _j = 0; _j < 5; _j++) {
			current_weapon_stats = scr_Setup_Default_Shot_Stats();

			current_weapon_stats.Shot_Spread = 0;
			current_weapon_stats.Shot_Accuracy = 10;
			current_weapon_stats.Shot_Count = 1;
			current_weapon_stats.Shot_Sprite = "spr_Rising_Spike_Blue";
			current_weapon_stats.Shot_Type = "obj_Lesser_Soul_Shot";

			current_weapon_stats.Shot_Speed = 0;
			current_weapon_stats.Shot_Movement = 0;
			current_weapon_stats.Shot_Power = 10 * global.soulstateformboost * (1 + global.teleportboost);
			current_weapon_stats.Shot_Knock_Back = 10;
			current_weapon_stats.Shot_Life_Span = 45;
			current_weapon_stats.Shot_Off_State = 1;
			current_weapon_stats.Shot_Phasing = 1;
			current_weapon_stats.Shot_Ground = 1;
			current_weapon_stats.Shot_Melee = true;
			current_weapon_stats.Shot_Pierce = 99;
			current_weapon_stats.Shot_Size = 0.5;
			current_weapon_stats.Shot_Off_State = true;

			if _i = 4 {
				current_weapon_stats.Shot_Sprite = "spr_Rising_Spike_Tall";
				current_weapon_stats.Shot_Bullet_Redirect = 1;
				current_weapon_stats.Shot_Bullet_Redirect_Chance = 100;
				current_weapon_stats.Shot_Bullet_Displace = true;
				current_weapon_stats.Shot_Power = current_weapon_stats.Shot_Power * 2.5;
			}
		
		
	
				dist = sqrt(2500 + (4000 * _i));
				ang += 72
				current_weapon_stats.Shot_XX = lengthdir_x(dist, ang);
				current_weapon_stats.Shot_YY = lengthdir_y(dist, ang);
				scr_Shot_Creation();
			}
		
			ang += 15;
		}
	
		soul_underground--;	
	}

}