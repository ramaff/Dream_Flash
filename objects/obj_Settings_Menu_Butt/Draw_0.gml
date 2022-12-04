/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1);

if mouse_x > x - 10 and mouse_x < x + 395 and mouse_y > y + 40 and mouse_y < y + 150 {
	image_alpha = lerp(image_alpha,1,0.3);
} else {
	image_alpha = lerp(image_alpha,0,0.3);
}

draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_white,image_alpha);
