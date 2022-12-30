/// @description Insert description here
// You can write your code in this editor

if mapRoomType = "Normal" || mapRoomType = "Spawn" {
	image_index = 0;
} else if mapRoomType = "Boss" {
	image_index = 2;
}  else if mapRoomType = "Shop" {
	image_index = 5;
} else if mapRoomType = "Super Boss" {
	image_index = 3;
} else if mapRoomType = "Chamber" {
	image_index = 6;
} else if mapRoomType = "State" {
	image_index = 7;
} else {
	image_index = 4;
}

if mapRoom = global.currentroom {
	image_index = 1;	
}

x = camera_get_view_x(view) + mapx;
y = camera_get_view_y(view) + mapy;
/*
with(obj_Soul_Parent) {
	x = room_width / 2;
	y = room_height / 2;
}