// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Setup_Shot_Stats_Asset(_shot_stats){

	if variable_struct_exists(_shot_stats, "Shot_Type") {
		if is_string(_shot_stats.Shot_Type) {
			shot_stats.Shot_Type = asset_get_index(_shot_stats.Shot_Type)
		}
	}
	if variable_struct_exists(_shot_stats, "Shot_Sprite") {
		shot_stats.Shot_Sprite = asset_get_index(_shot_stats.Shot_Sprite)	
	}
	
	if variable_struct_exists(_shot_stats, "Shot_Explosion_Sprite") {
		shot_stats.Shot_Explosion_Sprite = asset_get_index(_shot_stats.Shot_Explosion_Sprite)	
	}
	
	if variable_struct_exists(_shot_stats, "Shot_Boss_Hit_Sound_Effect") {
		shot_stats.Shot_Boss_Hit_Sound_Effect = asset_get_index(_shot_stats.Shot_Boss_Hit_Sound_Effect)	
	}
	
	if variable_struct_exists(_shot_stats, "Shot_Trail_Type") {
		shot_stats.Shot_Trail_Type = asset_get_index(_shot_stats.Shot_Trail_Type)	
	}
	if variable_struct_exists(_shot_stats, "Shot_Trail_Sprite") {
		shot_stats.Shot_Trail_Sprite = asset_get_index(_shot_stats.Shot_Trail_Sprite)	
	}
	
	if variable_struct_exists(_shot_stats, "Shot_Trail_Hit_Type") {
		shot_stats.Shot_Trail_Hit_Type = asset_get_index(_shot_stats.Shot_Trail_Hit_Type)	
	}
	if variable_struct_exists(_shot_stats, "Shot_Trail_Hit_Sprite") {
		shot_stats.Shot_Trail_Hit_Sprite = asset_get_index(_shot_stats.Shot_Trail_Hit_Sprite)	
	}

}