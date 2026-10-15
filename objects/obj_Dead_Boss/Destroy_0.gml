/// @description Insert description here
// You can write your code in this editor

if difficulty != -1 {
	scr_Sound_Effect(sd_Boss_Kill);
	var color = make_color_rgb(200+random(55), 200, 255);
	scr_Particle_Burst(obj_Spiral_Wind_Part, spr_Soul_Big_Bit, color, color, 3, 24, random(360), 120, 0, 0.65, 40, true)	
}