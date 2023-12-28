function scr_Game_Control_Setup() {
	global.instanceidincrementer = 1;
	global.totalFieldBeat = 0;
	global.glasstime = 0;
	global.currentdarkness = 0;
	global.stagedamage = 10;
	
	global.cameramode = "Boss";

	scr_Item_Variable_Setup();
	global.weapon_stats = scr_Load_Weapon_Stats();
	global.item_stats = scr_Import_Json("df_item_stats.json", json_parse);
	global.boss_stats = scr_Import_Json("df_boss_stats.json", json_parse);
	
	scr_Setup_Default_Shot_Stats();

	//scr_Music_Set();
}
