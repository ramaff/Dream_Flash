/// @description Insert description here
// You can write your code in this editor
depth = -10000;
image_index = 0;
image_xscale = 0.5;
image_yscale = 0.5;

if global.layerdeep = 2 || point_distance(x,y,mouse_x,mouse_y) < 50 {
	image_index = 1;	
}

draw_self();