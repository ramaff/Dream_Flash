// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// scr_Game_Control_Setup

function scr_Load_Weapon_Stats(){
	weapon_stats = scr_Import_Json("df_weapon_stats.json", json_parse);
	//show_debug_message(string(weapon_stats));
	
	return weapon_stats;
}