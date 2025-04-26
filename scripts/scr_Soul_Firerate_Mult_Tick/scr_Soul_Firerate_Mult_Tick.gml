// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Firerate_Mult_Tick(){
	var color = make_color_rgb(0, 255, 84);	
	scr_Particle_Burst(obj_State_Trail, spr_Soul_Big_Bit, color, color, 1, 3 + random(3), 60 + random(60), 0, 40, 0.2 + random(0.3), 20 + random(20))
}