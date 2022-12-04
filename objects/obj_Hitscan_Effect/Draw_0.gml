/// @description Insert description here
// You can write your code in this editor
//draw_line_color(x+lengthdir_x(lsize,angle+180),y+lengthdir_y(lsize,angle+180),x+lengthdir_x(lsize,angle),y+lengthdir_y(lsize,angle),c_white,c_white);

/*
if sprite_index != spr_Soul_Punch_Show {
draw_sprite_ext(spr_Warp_Strike_Shot,frame,x+lengthdir_x(16,angle),y+lengthdir_y(16,angle),lsize - 32,size,angle,c_white,1);
draw_sprite_ext(spr_Warp_Strike_Start,frame,x,y,size,size,angle,c_white,1);
draw_sprite_ext(spr_Warp_Strike_Start,frame,x+lengthdir_x(lsize,angle),y+lengthdir_y(lsize,angle),size,size,angle + 180,c_white,1);
}
*/

if sprite_index = spr_Sharp_Shooter_Streak_Shot {
	draw_sprite_ext(spr_Sharp_Shooter_Streak_Shot,frame,x+lengthdir_x(14,angle),y+lengthdir_y(14,angle),lsize - 32,size,angle,c_white,1);
	draw_sprite_ext(spr_Sharp_Shooter_Streak_Start,frame,x,y,size,size,angle,c_white,1);
	draw_sprite_ext(spr_Sharp_Shooter_Streak_Start,frame,x+lengthdir_x(lsize-4,angle),y+lengthdir_y(lsize-4,angle),size,size,angle+180,c_white,1);
}

if sprite_index = spr_Exploding_Sniper_Streak_Shot {
	draw_sprite_ext(spr_Exploding_Sniper_Streak_Shot,frame,x+lengthdir_x(14,angle),y+lengthdir_y(14,angle),lsize - 32,size,angle,c_white,1);
	draw_sprite_ext(spr_Exploding_Sniper_Streak_Start,frame,x,y,size,size,angle,c_white,1);
	draw_sprite_ext(spr_Exploding_Sniper_Streak_Start,frame,x+lengthdir_x(lsize-4,angle),y+lengthdir_y(lsize-4,angle),size,size,angle+180,c_white,1);
}

if sprite_index = spr_Soul_Punch_Show {
	draw_sprite_ext(spr_Soul_Punch_Mid,frame,x+lengthdir_x(18,angle),y+lengthdir_y(18,angle),lsize - 32,size,angle,c_white,1);
	draw_sprite_ext(spr_Soul_Punch_Start,frame,x,y,size,size,angle,c_white,1);
	draw_sprite_ext(spr_Soul_Punch_End,frame,x+lengthdir_x(lsize-32,angle),y+lengthdir_y(lsize-32,angle),size,size,angle,c_white,1);
}

if sprite_index = spr_Soul_Strike_Start{
	draw_sprite_ext(spr_Soul_Strike_Mid,frame,x+lengthdir_x(18 * 2 * size,angle),y+lengthdir_y(18 * 2 * size,angle),lsize - 32,size,angle,c_white,1);
	draw_sprite_ext(spr_Soul_Strike_Start,frame,x,y,size,size,angle,c_white,1);
	draw_sprite_ext(spr_Soul_Strike_End,frame,x+lengthdir_x(lsize-32,angle),y+lengthdir_y(lsize-32,angle),size,size,angle,c_white,1);
}