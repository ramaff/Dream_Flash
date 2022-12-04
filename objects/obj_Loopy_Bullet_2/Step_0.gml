/// @description Insert description here
// You can write your code in this editor
	//if bulletblend != 0 {
	//	scr_Bullet_Blend(bulletblend);	
	//}
	speed += (bulletspeed * 2) / bulletlife;
	
	direction += diradd;

	diradd += diraddadd;

	if abs(diradd) > 5 {
		diraddadd = diraddadd * -1;
	}