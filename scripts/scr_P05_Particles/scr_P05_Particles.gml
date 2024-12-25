// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_P05_Particles(){
	
	if shot_stats.Shot_Perfect_Spark_Trail and scr_Particle_Frame(8) {
		scr_Particle_Burst(obj_Fire_Part, spr_Star_Part, 
						   make_color_rgb(255, 255, 100), make_color_rgb(100, 255, 255), 1, 2 + random(2), random(360),
						   0, 10, (shot_stats.Shot_Size / 3) + random(0.1), 20 + random(20))
	}
	
}