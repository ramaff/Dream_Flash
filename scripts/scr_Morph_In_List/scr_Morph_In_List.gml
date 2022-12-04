// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Morph_In_List(){

	sprite_index = spr_Wall_Eye;	
	
	if bossObj = obj_Wall_Watcher {
		sprite_index = spr_Watcher_Wall;
	}
	
	if bossObj = obj_Hand_of_the_Accuser {
		sprite_index = spr_Hand_of_the_Accuser;	
	}
}