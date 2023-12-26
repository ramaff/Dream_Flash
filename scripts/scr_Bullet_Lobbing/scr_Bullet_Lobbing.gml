// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bullet_Lobbing(){
	bulletbounceY += bounce_speed
	bounce_speed -= bounce_gravity

	y -= bounce_speed

	if bulletbounceY + bounce_speed < 0 {
		bounce_speed = bounce_speed * -1;
	}

}