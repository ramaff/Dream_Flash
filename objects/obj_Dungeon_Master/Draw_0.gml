/// @description Insert description here
// You can write your code in this editor

//texture_set_interpolation(0);

if room != State_Room || global.currentchapter > 2 {
	var palindex = tier + 1;

	pal_swap_set(spr_Snake_Palette,palindex,false);
    
	draw_self();

	pal_swap_reset();
} else {
	draw_self();	
}

//texture_set_interpolation(1);