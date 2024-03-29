// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Hit_Explosion(){
	
	scr_Sound_Effect(asset_get_index(shot_stats.Shot_Explosion_SFX))
	
	scr_Particle_Burst(obj_Explosion_Particle, asset_get_index(shot_stats.Shot_Explosion_Sprite),
					   shot_stats.Shot_Trail_Color1, shot_stats.Shot_Trail_Color2, 
					   1, 0, 0, 0, 0, sqrt(shot_stats.Shot_Impact_Size) / 20, 30, true)

}