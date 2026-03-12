// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Draw_Heart_Health(heart_sprite = spr_Lesser_Heart, _xx = x, _yy = y, scale = 1, heart_percent = 100, heart_width = 78, heart_height = 72, top_offset = 0, side_offset = 0, y_origin_shift = 0){

	draw_sprite_ext(heart_sprite,0,_xx,_yy,0.5 * scale,0.5 * scale,0,c_white,1);
	var yoff = ((0 - y_origin_shift) - (heart_height / 4)) * scale
	draw_sprite_part_ext(heart_sprite, 1, 0, top_offset + ((heart_height * (1 - (heart_percent / 100)))), heart_width * scale, heart_height * scale, (side_offset * scale) + _xx - ((heart_width / 4) * scale), _yy + yoff + ((heart_height / 2) * (1 - (heart_percent / 100)) * scale), 0.5 * scale, 0.5 * scale, c_white, 1);

}