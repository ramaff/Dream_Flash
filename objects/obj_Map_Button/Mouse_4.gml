/// @description Insert description here
// You can write your code in this editor
var explorable = 0;
var partex = 0;

for(i = 0; i <= global.maxRooms; i++) {
	mapXOffset = mapRoomX - global.floor[i,1];
	mapYOffset = mapRoomY - global.floor[i,2];
	
	var room_type = global.floor[i,0]
	
	if ((abs(mapXOffset) = 1 and abs(mapYOffset) = 0) || (abs(mapXOffset) = 0 and abs(mapYOffset) = 1)) {
		//if room_type = "Normal" || room_type = "Spawn" || room_type = "Emotion Field" {
			explorable = explorable || scr_Explorable_Room(room_type)
		//}
	}
}

for(i = 0; i <= global.maxRooms; i++) {
	mapXOffset = mapRoomX - global.floor[i,1];
	mapYOffset = mapRoomY - global.floor[i,2];
	
	var room_type = global.floor[i,0]
	
	if ((abs(mapXOffset) = 1 and abs(mapYOffset) = 0) || (abs(mapXOffset) = 0 and abs(mapYOffset) = 1)) {
		if room_type = "Shop" || room_type = "Chamber" || (string_pos("Field", room_type) != 0) {
			partex += 1;	
		}
	}
	if scr_Explorable_Room(global.floor[mapRoom,0]) {
		partex += 1;	
	}
		
	if partex >= 2 {
		explorable = 1;
	}
}

if mapRoomType != "Boss" and mapRoomType != "Super Boss" and mapRoomType != "State" and explorable = 1 and scr_Negative_Room_Check() {
	scr_Change_Room_Map(mapRoom);
}