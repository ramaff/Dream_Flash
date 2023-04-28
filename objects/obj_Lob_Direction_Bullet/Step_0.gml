/// @description Insert description here
// You can write your code in this editor
image_angle = direction;

scr_Wall_Bounce()

bulletbounceY += bounce_speed
bounce_speed -= bounce_gravity

y -= bounce_speed

if bulletbounceY + bounce_speed < 0 {
	bounce_speed = bounce_speed * -1;
}
