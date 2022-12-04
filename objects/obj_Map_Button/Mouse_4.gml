/// @description Insert description here
// You can write your code in this editor
var explorable = 0;
var partex = 0;

for(i = 0; i <= global.maxRooms; i++) {
	mapXOffset = mapRoomX - Floor_Layout_Control.Flash[i,1];
	mapYOffset = mapRoomY - Floor_Layout_Control.Flash[i,2];
	
	if ((abs(mapXOffset) = 1 and abs(mapYOffset) = 0) || (abs(mapXOffset) = 0 and abs(mapYOffset) = 1)) {
		if Floor_Layout_Control.Flash[i,0] = "Normal" || Floor_Layout_Control.Flash[i,0] = "Spawn" {
			explorable = 1;	
		}
	}
}

for(i = 0; i <= global.maxRooms; i++) {
	mapXOffset = mapRoomX - Floor_Layout_Control.Flash[i,1];
	mapYOffset = mapRoomY - Floor_Layout_Control.Flash[i,2];
	
	if ((abs(mapXOffset) = 1 and abs(mapYOffset) = 0) || (abs(mapXOffset) = 0 and abs(mapYOffset) = 1)) {
		if Floor_Layout_Control.Flash[i,0] = "Shop" || Floor_Layout_Control.Flash[i,0] = "Chamber" {
			partex += 1;	
		}
	}
	if Floor_Layout_Control.Flash[mapRoom,0] = "Normal" {
		partex += 1;	
	}
		
	if partex = 2 {
		explorable = 1;
	}
}

if mapRoomType != "Boss" and mapRoomType != "Super Boss" and mapRoomType != "State" and explorable = 1 and scr_Negative_Room_Check() {
	scr_Change_Room_Map(mapRoom);
}