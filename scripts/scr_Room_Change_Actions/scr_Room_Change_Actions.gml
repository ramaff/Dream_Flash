function scr_Room_Change_Actions() {
	scr_Heart_Respawn();
	//scr_H07();
	

	global.roomSizeX = global.floor[global.currentroom,3];
	global.roomSizeY = global.floor[global.currentroom,3];

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
