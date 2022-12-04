image_angle = direction;

var cam = view_camera[0];
var x1 = camera_get_view_x(cam);
var y1 = camera_get_view_y(cam);
var x2 = x1 + camera_get_view_width(cam);
var y2 = y1 + camera_get_view_height(cam);
if( !point_in_rectangle( x, y, x1 - 50, y1 - 50, x2 + 50, y2 + 50)){
    speed = bulletspeed * 10;
} else {
	speed = bulletspeed;	
}
if instance_exists(bulletorigin) {
	direction = point_direction(x,y,bulletorigin.x,bulletorigin.y);
	
	if distance_to_point(bulletorigin.x,bulletorigin.y) < 10 {
		instance_destroy();	
	}
}