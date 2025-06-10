// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Excess_Essence_Step(){
	if shot_stats.Shot_Excess_Essence > 0 {
		if alarm[0] mod 9 = 0 {
			var color = make_color_rgb(0, 170, 255)
			scr_Particle_Burst(obj_Friction_Part, spr_Soul_Big_Bit, color, color, 1, 4 + random(4), random(360), 0, 0, shot_stats.Shot_Size - 0.1, 10 + random(5))
		}
	}
}