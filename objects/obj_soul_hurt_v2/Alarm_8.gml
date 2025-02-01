/// @description Insert description here
// You can write your code in this editor

if global.gameParticles > 0 {
	if bullet_stats.bullet_part > 0 {
		
		scr_Particle_Burst(obj_Weapon_Trail, asset_get_index(bullet_stats.bullet_part_sprite), 
						   bullet_stats.bullet_part_color1, bullet_stats.bullet_part_color2, 1, bullet_stats.bullet_part_speed,
						   random(360), 0, bullet_stats.bullet_part_area, 
						   (bullet_stats.bullet_size * 2) * bullet_stats.bullet_part_size + random(0.1),
						   bullet_stats.bullet_part_life, false)
	
	}

	alarm[8] = bullet_stats.bullet_part_frequency / global.gameParticles;
}


