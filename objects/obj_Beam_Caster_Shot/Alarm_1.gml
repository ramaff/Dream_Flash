/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
var dir = point_direction(x,y,mouse_x,mouse_y);

shotextrahitxx = lengthdir_x(50, dir);
shotextrahityy = lengthdir_y(50, dir);

shotsoulmaintain = 0;

//shotpointangle = 1;

shotangle = dir - 90;

if shotextrahitssprite[4] = spr_Safety_Scissors_Shot {
	shotangle = dir;	
}

event_inherited();

//shotpointangle = 0;

shotangle = 0;