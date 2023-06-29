/// @description Insert description here
// You can write your code in this editor
if rattling >= 1 {
	
	var speed_fac = min(1, rattling / 60)
	
	if rattling mod 10 = 1 {
		scr_Disk_Effect(15, speed_fac, make_color_rgb(204,64,255))
	}
	
	with(obj_Bullet_Parent) {
		if point_distance(x,y,other.x,other.y) < 300 {
			x -= lengthdir_x(speed * speed_fac, direction);
			y -= lengthdir_y(speed * speed_fac, direction);
			x += random(6) - 3;
			y += random(6) - 3;
		}
	}

	rattling--;

	alarm[2] = 1;

}