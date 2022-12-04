// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Mental_Background(){
	global.backLayer = layer_create(10000000);
	global.mentalBackground = layer_background_create(global.backLayer, spr_No_BG);
	
	var roomBG = Floor_Layout_Control.Flash[global.currentroom,4];
	var bgType = "Flash";
	
	if global.currentchapter = 2 {
		bgType = "Feel";
	}
	
	if global.currentchapter = 3 {
		bgType = "Dream";	
	}
	
	if global.currentchapter = 4 {
		bgType = "Nightmare";	
	}
			
	if roomBG = bg_Cave_Tiles || roomBG = bg_Depths_Tiles || roomBG = bg_Flash_Dungeon_Tiles || roomBG = bg_Feel_Dungeon_Tiles  || roomBG = bg_Dream_Dungeon_Tiles  || roomBG = bg_Dungeon_Tiles || roomBG = bg_Safe_Room_Tiles || roomBG = bg_Mind_Chamber_Tiles || roomBG = bg_State_Tiles {
		bgType = "None"
	}
	
	if bgType = "Flash" {
		global.mentalBackground = layer_background_create(global.backLayer, spr_Mental_Background);
	}
	if bgType = "Feel" {
		global.mentalBackground = layer_background_create(global.backLayer, spr_Mental_Background_Feel);
	}
	if bgType = "Dream" {
		global.mentalBackground = layer_background_create(global.backLayer, spr_Mental_Background_Dream);
	}
	if bgType = "Nightmare" {
		global.mentalBackground = layer_background_create(global.backLayer, spr_Mental_Background_Nightmare);
	}
	
	var back = layer_background_get_id(global.mentalBackground);
	layer_background_htiled(global.mentalBackground, true);
	layer_background_vtiled(global.mentalBackground, true);
	
	layer_hspeed(global.backLayer,1);
}