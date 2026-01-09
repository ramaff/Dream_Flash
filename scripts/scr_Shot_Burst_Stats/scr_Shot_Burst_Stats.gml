// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Burst_Stats(_v_burst_stats){
	
	/*if variable_struct_exists(_v_burst_stats, "Shot_Power") {
		shot_stats.Shot_Power = _v_burst_stats.Shot_Power
		//show_debug_message(shot_stats.Shot_Power)
		shot_stats.Shot_Power_Max = shot_stats.Shot_Power;
	} */
	if variable_struct_exists(_v_burst_stats, "Burst_Power") {
		shot_stats.Shot_Power = shot_stats.Shot_Power * _v_burst_stats.Burst_Power;
		shot_stats.Shot_Power_Level = shot_stats.Shot_Power_Level * _v_burst_stats.Burst_Power;
		shot_stats.Shot_Aura_Power = shot_stats.Shot_Aura_Power * _v_burst_stats.Burst_Power;
		shot_stats.Shot_Power_Max = shot_stats.Shot_Power;
	} else {
		shot_stats.Shot_Power = _v_burst_stats.Shot_Power;
		shot_stats.Shot_Power_Level = _v_burst_stats.Shot_Power;
		shot_stats.Shot_Aura_Power = _v_burst_stats.Shot_Power;
		shot_stats.Shot_Power_Max = shot_stats.Shot_Power;	
	}
	if variable_struct_exists(_v_burst_stats, "Burst_Soul_Shot_Damage") {
		shot_stats.Shot_Soul_Damage = _v_burst_stats.Burst_Soul_Shot_Damage;
		shot_stats.Shot_Speed = sqrt(shot_stats.Shot_Speed) + 3;
		speed = shot_stats.Shot_Speed;
		shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span + 60;
	    alarm[0] = shot_stats.Shot_Life_Span;
		//shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
	}
	if variable_struct_exists(_v_burst_stats, "Burst_Size") {
		shot_stats.Shot_Size = shot_stats.Shot_Size * _v_burst_stats.Burst_Size
		image_xscale = shot_stats.Shot_Size;
		image_yscale = shot_stats.Shot_Size;
		shot_stats.Shot_Size_Max = shot_stats.Shot_Size_Max * _v_burst_stats.Burst_Size
	}
	if variable_struct_exists(_v_burst_stats, "Shot_Sprite") {
		//show_debug_message(_v_burst_stats.Shot_Sprite)
		sprite_index = asset_get_index(_v_burst_stats.Shot_Sprite)
	}
	if variable_struct_exists(_v_burst_stats, "Burst_Life_Span") {
		shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span * _v_burst_stats.Burst_Life_Span
		alarm[0] = shot_stats.Shot_Life_Span;
	} else if variable_struct_exists(_v_burst_stats, "Shot_Life_Span") {
		//shot_stats.Shot_Life_Span = _v_burst_stats.Shot_Life_Span
		//alarm[0] = shot_stats.Shot_Life_Span;
	}
	if variable_struct_exists(_v_burst_stats, "Shot_Pierce") {
		shot_stats.Shot_Pierce = _v_burst_stats.Shot_Pierce
	}
	if variable_struct_exists(_v_burst_stats, "Burst_Speed") {
		shot_stats.Shot_Speed = shot_stats.Shot_Speed * _v_burst_stats.Burst_Speed
		speed = shot_stats.Shot_Speed;
	}
	if variable_struct_exists(_v_burst_stats, "Shot_Point_Angle") {
		shot_stats.Shot_Point_Angle = _v_burst_stats.Shot_Point_Angle
	}
	if variable_struct_exists(_v_burst_stats, "Shot_Impact_Type") {
		shot_stats.Shot_Impact_Type = _v_burst_stats.Shot_Impact_Type
	}

	if shot_stats.Shot_Soul_Damage > 0 {
		scr_Follow_Shot_Bullet_Spawn()
	}

}