/// @description Insert description here
// You can write your code in this editor
//draw_line_color(x+lengthdir_x(size,angle+180),y+lengthdir_y(size,angle+180),x+lengthdir_x(size,angle),y+lengthdir_y(size,angle),c_white,c_white);

draw_sprite_ext(spr_Warp_Strike_Shot,frame,x+lengthdir_x(size - 16,angle+180),y+lengthdir_y(size - 16,angle+180),size * 2 - 32,0.5,angle,c_white,1);
draw_sprite_ext(spr_Warp_Strike_Start,frame,x+lengthdir_x(size,angle+180),y+lengthdir_y(size,angle+180),0.5,0.5,angle,c_white,1);
draw_sprite_ext(spr_Warp_Strike_Start,frame,x+lengthdir_x(size,angle),y+lengthdir_y(size,angle),0.5,0.5,angle+180,c_white,1);