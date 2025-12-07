/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1);

if (obj_Indicator_Parent.x > x - 10 and obj_Indicator_Parent.x < x + 395 and obj_Indicator_Parent.y > y + 40 and obj_Indicator_Parent.y < y + 150) || selected = true {
	image_alpha = lerp(image_alpha,1,0.3);
} else {
	image_alpha = lerp(image_alpha,0,0.3);
}

draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_white,image_alpha);
