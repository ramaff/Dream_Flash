// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OA06_Draw(){
	draw_sprite_ext(spr_Heart_Halo,image_index,x,y - (24 * image_yscale),image_xscale * shot_stats.Shot_Size_Relation,image_yscale * shot_stats.Shot_Size_Relation,image_angle,c_white,image_alpha);	
	draw_sprite_ext(spr_Miracle_Aura,0,x,y,0.8,0.8,0,c_white,1);
}