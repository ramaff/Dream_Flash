/// @description Insert description here
// You can write your code in this editor
depth = -10000;
image_index = 0;
image_xscale = 0.5;
image_yscale = 0.5;

if global.layerdeep = 3 || point_distance(x,y,obj_Astral_Indicator.x,obj_Astral_Indicator.y) < 50 {
	image_index = 1;	
}

draw_self();