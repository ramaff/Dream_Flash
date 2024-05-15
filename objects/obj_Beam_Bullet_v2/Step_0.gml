/// @description Insert description here
// You can write your code in this editor
	//if bulletblend != 0 {
	//	scr_Bullet_Blend(bulletblend);	
	//}

if image_index < 5 || image_index >= 8 {
	bulletpower = 0;	
} else {
	bulletpower = global.stagedamage;	
}

if alarm[0] > 10 and image_index >= 7 {
	image_index = 7	
}
