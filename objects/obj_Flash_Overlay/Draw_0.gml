/// @description Insert description here
// You can write your code in this editor
/*

depth = 10;

if (!surface_exists(surf)) {
	surf = surface_create(sprite_width, sprite_height);	
}

surface_set_target(surf);

draw_sprite(sprite_index, image_index, sprite_xoffset, sprite_yoffset);

gpu_set_colorwriteenable(1, 1, 1, 0);

var backg = spr_Field_Overlay_Flash;
if global.currentchapter = 2 {
	backg = spr_Field_Overlay_Feel;
}
if global.currentchapter = 3 {
	backg = spr_Field_Overlay_Dream;
}
if global.currentchapter = 4 {
	backg = spr_Field_Overlay_Nightmare;
}

//backg = spr_Overlay_Test;

draw_sprite_ext(backg, 0, 0, 0, sqrt(scale) / 2, sqrt(scale) / 2, 0, c_white, 1);

gpu_set_colorwriteenable(1, 1, 1, 1);

surface_reset_target();

var trans = 0.15;

if global.currentchapter > 1 {
	trans = 0.2;	
}

draw_surface_ext(surf, x - (sprite_xoffset * scale), y - (sprite_yoffset * scale),scale,scale,0,c_white,trans);