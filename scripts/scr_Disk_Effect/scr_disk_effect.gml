// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Disk_Effect(plifespan, psize, pcolor){
	with instance_create(x,y,obj_Circle_Effect) {
		lifespan = plifespan
		alarm[0] = plifespan;
		alarm[1] = plifespan - 10;
		
		image_blend = pcolor;
		
		maxsize = psize;
		color = pcolor;
	}
}