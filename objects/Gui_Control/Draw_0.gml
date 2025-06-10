var _next_room_x = 0;
var _next_room_y = 0;
var _next_room = global.currentroom;

var _room_x_up = 0;
var _room_x_down = 0;
var _room_y_up = 0;
var _room_y_down = 0;

var _i;

for(_i = 0; _i <= global.maxRooms; _i++) {
    if global.floor[global.currentroom,1] = global.floor[_i,1] + 1
    if global.floor[global.currentroom,2] = global.floor[_i,2] {
        _room_x_down = 1;
    }
    if global.floor[global.currentroom,1] = global.floor[_i,1] - 1
    if global.floor[global.currentroom,2] = global.floor[_i,2] {
        _room_x_up = 1;
    }
    if global.floor[global.currentroom,1] = global.floor[_i,1]
    if global.floor[global.currentroom,2] = global.floor[_i,2] + 1 {
        _room_y_up = 1;
    }
    if global.floor[global.currentroom,1] = global.floor[_i,1]
    if global.floor[global.currentroom,2] = global.floor[_i,2] - 1 {
        _room_y_down = 1;
    }
}

var _size = global.floor[global.currentroom,3];
var _x_pos = (room_width / 2) - (_size / 2);
var _y_pos = (room_height / 2) - (_size / 2);

var _sprite_size = _size / 1024;
//if _size >= 992 {
var _leave_sprite = spr_Adjustable_Leave_Indicator;

var _orig_depth = depth;
depth = 100;


lalp += lalpdir;

if lalp < 0.6 {
	lalpdir = 0.005;
}
if lalp > 1.05 {
	lalpdir = -0.005;
}

if scr_Room_Leavable() {
    if _room_x_up = 1 {
        draw_sprite_ext(_leave_sprite,0,_x_pos,_y_pos+2,_sprite_size,_sprite_size,0+180,c_white,lalp);
    }
    if _room_y_up = 1 {
        draw_sprite_ext(_leave_sprite,0,_x_pos+1,_y_pos+2+_size,_sprite_size,_sprite_size,90+180,c_white,lalp);
    }
    if _room_x_down = 1 {
        draw_sprite_ext(_leave_sprite,0,_x_pos+_size-1,_y_pos+1+_size,_sprite_size,_sprite_size,180+180,c_white,lalp);
    }
    if _room_y_down = 1 {
        draw_sprite_ext(_leave_sprite,0,_x_pos+_size,_y_pos+1,_sprite_size,_sprite_size,270+180,c_white,lalp);
    }
}

depth = _orig_depth;

depth = 100;


/* */
/*  */
