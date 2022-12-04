/// @description Insert description here
// You can write your code in this editor

shadowSize = 0.25;
shadowYOffset = 16;

draw_sprite_ext(spr_Boss_Shadow,0,x,y+shadowYOffset+jumpHeight,shadowSize * (1.2 - (jumpHeight / 300)),shadowSize * (1.2 - (jumpHeight / 300)),0,c_white,(0.5 - (jumpHeight/400)));


if room != State_Room || global.currentchapter > 2 {
	var palindex = tier + 1;

	pal_swap_set(spr_Bed_Bugs_Palette,palindex,false);
    
	draw_self();

	pal_swap_reset();
} else {
	draw_self();	
}