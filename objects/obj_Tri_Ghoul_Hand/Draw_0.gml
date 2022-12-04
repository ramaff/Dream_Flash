/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
var color = 0;

with(obj_Tri_Ghoul) {
    if id = other.bulletID {
		color = champ;
		
	}
}


texture_set_interpolation(0);

var palindex = color;

if color = 8 {
	palindex = 2;
} 

pal_swap_set(spr_Gesture_Ghoul_Palette,palindex,false);

event_inherited();

pal_swap_reset();

texture_set_interpolation(1);