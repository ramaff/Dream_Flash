/// @description Insert description here
// You can write your code in this editor
var _z_dir = 270;
if bounce_speed < 0 {
	_z_dir = 90;	
}
//direction = scr_Angle_Converge(direction, _z_dir, bounce_speed * 5)

home_speed -= home_speed / alarm[0]

scr_Bullet_Homing(speed, home_speed, false, false)

//scr_Wall_Bounce()

bulletbounceY += bounce_speed
bounce_speed -= bounce_gravity

y -= bounce_speed

if bulletbounceY + bounce_speed < 0 {
	bounce_speed = bounce_speed * -1;
}
