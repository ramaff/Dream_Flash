// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Burst_Stats(vshotburststats){
	
	/*if variable_struct_exists(vshotburststats, "Shot_Power") {
		shot_stats.Shot_Power = vshotburststats.Shot_Power
		//show_debug_message(shot_stats.Shot_Power)
		shot_stats.Shot_Powermax = shot_stats.Shot_Power;
	} */
	if variable_struct_exists(vshotburststats, "Burst_Power") {
		shot_stats.Shot_Power = shot_stats.Shot_Power * vshotburststats.Burst_Power;
		shot_stats.Shot_Aura_Power = shot_stats.Shot_Aura_Power * vshotburststats.Burst_Power;
		shot_stats.Shot_Powermax = shot_stats.Shot_Power;
	} else {
		shot_stats.Shot_Power = vshotburststats.Shot_Power;
		shot_stats.Shot_Aura_Power = vshotburststats.Shot_Power;
		shot_stats.Shot_Powermax = shot_stats.Shot_Power;	
	}
	if variable_struct_exists(vshotburststats, "Burst_Soul_Shot_Damage") {
		shot_stats.Shot_Soul_Damage = vshotburststats.Burst_Soul_Shot_Damage;
		shot_stats.Shot_Speed = sqrt(shot_stats.Shot_Speed) + 3;
		speed = shot_stats.Shot_Speed;
		shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span + 60;
	    alarm[0] = shot_stats.Shot_Life_Span;
		shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
	}
	if variable_struct_exists(vshotburststats, "Burst_Size") {
		shot_stats.Shot_Size = shot_stats.Shot_Size * vshotburststats.Burst_Size
		image_xscale = shot_stats.Shot_Size;
		image_yscale = shot_stats.Shot_Size;
		shot_stats.Shot_Size_Max = other.shot_stats.Shot_Size_Max;
	}
	if variable_struct_exists(vshotburststats, "Shot_Sprite") {
		//show_debug_message(vshotburststats.Shot_Sprite)
		sprite_index = asset_get_index(vshotburststats.Shot_Sprite)
	}
	if variable_struct_exists(vshotburststats, "Shot_Lifespan") {
		shot_stats.Shot_Life_Span = vshotburststats.Shot_Lifespan
		alarm[0] = shot_stats.Shot_Life_Span;
		shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
	}
	if variable_struct_exists(vshotburststats, "Shot_Pierce") {
		shotpierce = vshotburststats.Shot_Pierce
	}
	if variable_struct_exists(vshotburststats, "Shot_Speed") {
		shot_stats.Shot_Speed = vshotburststats.Shot_Speed
		speed = shot_stats.Shot_Speed;
	}
	if variable_struct_exists(vshotburststats, "Burst_Speed") {
		shot_stats.Shot_Speed = vshotburststats.Burst_Speed
		speed = shot_stats.Shot_Speed;
	}
	if variable_struct_exists(vshotburststats, "Shot_Point_Angle") {
		shot_stats.Shot_Point_Angle = vshotburststats.Shot_Point_Angle
	}
	if variable_struct_exists(vshotburststats, "Shot_Impact_Type") {
		shot_stats.Shot_Impact_Type = vshotburststats.Shot_Impact_Type
	}

}