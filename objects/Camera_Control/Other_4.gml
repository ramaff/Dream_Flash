/// @description Insert description here
// You can write your code in this editor
view_enabled = true;
view_visible[0] = true;
for(var i = 1; i < 8; i++) {
	view_visible[i] = false;
}

if instance_exists(obj_Soul_Parent) {
	camX = obj_Soul_Parent.x - view_width / 2;
	camY = obj_Soul_Parent.y - view_height / 2;

	camera_set_view_pos(view, obj_Soul_Parent.x - view_width / 2, obj_Soul_Parent.y - view_height / 2);
} else {
	camX = room_width / 2 - view_width / 2;
	camY = room_height / 2 - view_height / 2;

	camera_set_view_pos(view, room_width / 2 - view_width / 2, room_height / 2 - view_height / 2);
}

if room = The_Start_Room {
	view_zoom = 1;
} else {
	view_zoom = 0.9375;	
}



