/// @description Insert description here
// You can write your code in this editor


if global.gameParticles > 0 {
	
		var color = make_color_rgb(255, 0, 50)	
		var color2 = make_color_rgb(255, 0, 50)	
		scr_Particle_Burst(obj_Fire_Part, spr_Soul_Bit, color, color2, 1, 1.5 + random(2),
						   random(180), 0, 30, 0.5 + random(0.1), 20 + random(10), false)

	alarm[8] = 2 / global.gameParticles;
}



