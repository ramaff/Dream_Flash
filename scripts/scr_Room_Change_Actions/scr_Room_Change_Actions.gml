function scr_Room_Change_Actions() {
	scr_Heart_Respawn();
	//scr_H07();
	

	global.roomSizeX = global.floor[global.currentroom,3];
	global.roomSizeY = global.floor[global.currentroom,3];

	var roomEnvironment = global.floor[global.currentroom,4];

	if roomEnvironment = bg_Deep_Woods_Tiles || roomEnvironment = bg_Cave_Tiles || roomEnvironment = bg_Graveyard_Tiles {
	    global.roomdarkness = 0.3;
	}

	if roomEnvironment = bg_Depths_Tiles {
	    global.roomdarkness = 0.45;
	}

	scr_Room_Change_Variables();

	var roomType = global.floor[global.currentroom,0];

	scr_Soul_Stat_Store();
	
	//scr_Emotion_Field_Spawn_Check()

	part_particles_clear(global.psystem);
	//part_system_clear(global.psystem);

	if roomType != "Boss" and roomType != "Super Boss" and roomType != "Chamber" and roomType != "State" {
	    scr_Save();
	}
	
	scr_Mini_Map_Update();



}
