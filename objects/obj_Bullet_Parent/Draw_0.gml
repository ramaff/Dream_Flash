/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event'
/*
draw_set_blend_mode(bm_add)
for(c = 0;c < 360;c += 36){
    draw_sprite_ext(sprite_index,image_index,x+lengthdir_x(4,c),y+lengthdir_y(4,c),image_xscale,image_yscale,image_angle,image_blend,image_alpha*0.25)
  }
 
draw_set_blend_mode(bm_normal)
*/

draw_self();

draw_set_color(c_black)
draw_text(x + 30, y, string(bulletpower));