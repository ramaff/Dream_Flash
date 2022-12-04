/// @description Insert description here
// You can write your code in this editor
alarm[1] = 5;

size -= 0.0002;

with(obj_Soul) {
	if (collision_circle(other.x,other.y,160 * other.size, id, false, false)) {
		sdelay -= 1;
		if sdelay < 0 {
		    sdelay = 0;
		}
	}
}

direction += angvel;
speed += choose(-0.1,0.1,0,0,0);
speed = clamp(speed, -0.5, 0.5);
angvel += choose(-irandom(2),irandom(2),0,0);
angvel = clamp(speed, -5, 5);

var dir = point_direction(x,y,room_width / 2, room_height / 2);
var dist = point_direction(x,y,room_width / 2, room_height / 2);
if dist > 400 {
	x += lengthdir_x(dist / 100,dir);
	y += lengthdir_y(dist / 100,dir);
}