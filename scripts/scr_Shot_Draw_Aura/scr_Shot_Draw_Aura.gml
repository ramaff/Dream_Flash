// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Draw_Aura(){
	draw_sprite_ext(asset_get_index(shot_stats.Shot_Aura_Sprite),0,x,y,1,1,0,c_white,image_alpha);
}