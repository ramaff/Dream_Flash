/// @description Insert description here
// You can write your code in this editor

if room != State_Room || global.currentchapter > 2 {
	var palindex = tier + 1;

	pal_swap_set(spr_Beasts_Palette,palindex,false);
    
	draw_self();

	pal_swap_reset();
} else {
	draw_self();	
}