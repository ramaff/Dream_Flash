/// @description Insert description here
// You can write your code in this editor
var size = 0.8 + scr_Wave(-0.2, 0.2, 4, 0);
draw_sprite_ext(spr_Bullet_Shadow,0,x,y + 20, size, size, 0, c_white, 1);
draw_sprite_ext(sprite_index, image_index,x, y + scr_Wave(-10, 10, 4, 0),image_xscale,image_yscale,0,c_white,1);