
var size = maxsize + scr_Wave(-0.4, 0, 4, 0);
draw_sprite_ext(spr_Bullet_Shadow,0,x,y + 20, size, size, 0, c_white, 1);
draw_sprite_ext(sprite_index, image_index,x, y + scr_Wave(-10, 10, 4, 0),image_xscale,image_yscale,0,image_blend,1);