// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Movement_Mult_Tick(){
	var color2 = make_color_rgb(0, 255, 155);
	scr_Particle_Burst(obj_State_Trail, spr_Diamond_Part, color2, color2, 1, 3 + random(3), 60 + random(60), 0, 40, 0.2 + random(0.3), 20 + random(20))
}

function scr_Soul_Movement_Extra_Mult_Tick(){
	var color2 = make_color_rgb(0, 255, 155);
	//scr_Disk_Effect(20, 0.75, color2);
	scr_After_Image(20, false, true, color2, spr_The_Soul_Teleport_After_Image)
}