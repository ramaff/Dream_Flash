// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Spike_Shot_Particles(){
	if shot_stats.Shot_Spike_Aura and alarm[0] mod 3 = 0 {
		scr_Particle_Burst(obj_Friction_Part, spr_Diamond_Part, 
						   make_color_rgb(0, 145, 255), make_color_rgb(0, 145, 255), 1, 4 + random(6), direction - 270 + random(180),
						   0, 40, shot_stats.Shot_Size + random(0.2), 15 + random(10))
	}
}