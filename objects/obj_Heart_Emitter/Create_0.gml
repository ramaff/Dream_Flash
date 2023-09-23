fieldType = global.floor[global.currentroom,4];

if fieldType = bg_Feel_Tiles || fieldType = bg_Feel_Dungeon_Tiles {
	repeat(200) {
	    instance_create(random(room_width),random(room_height),obj_Feel_Heart)
	}
}