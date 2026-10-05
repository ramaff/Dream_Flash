// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Particle_Frame(_base_frequency = 2) {
	if global.gameParticles <= 0 {
		return false	
	}
	return alarm[0] mod ceil(_base_frequency / global.gameParticles) = 0
}

function scr_Beast_Shot_Particles() {
	if scr_Particle_Frame(4) {
		scr_Particle_Burst(obj_Weapon_Trail, spr_Diamond_Part, 
						   make_color_rgb(255, 0, 0), make_color_rgb(155, 0, 40), 1, 0,0,
						   0, 10, shot_stats.Shot_Size - 0.1 + random(0.2), 15 + random(5))
	}
}

function scr_Spike_Shot_Particles() {
	if scr_Particle_Frame(3) {
		scr_Particle_Burst(obj_Friction_Part, spr_Diamond_Part, 
						   make_color_rgb(0, 145, 255), make_color_rgb(0, 145, 255), 1, 4 + random(6), direction - 270 + random(180),
						   0, 40, shot_stats.Shot_Size + random(0.2), 15 + random(10))
	}
}