/// @description Insert description here
// You can write your code in this editor
scr_Wall_Bounce()

bulletbounceY += bounce_speed
bounce_speed -= bounce_gravity

y -= bounce_speed

if bulletbounceY + bounce_speed < 0 {
	bounce_speed = bounce_speed * -0.7;
}

if alarm[0] mod 2 = 0 {
	bulletspeed = bulletspeed * 0.99;
	speed = bulletspeed;
}