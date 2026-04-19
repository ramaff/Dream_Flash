/// @description Insert description here
// You can write your code in this editor

var heartReload = 15;

if global.currentheart < 0 {
	global.currentheart = 0;	
}

var cHeart = global.currenthearttype

if cHeart = 51 {
	heartReload = 45;
	scr_H51();
}

scr_OC02(cHeart);

if cHeart = 53 {
	heartReload = 15;
	scr_H53();
}
if cHeart = 7 {
	var _soul_speed = sqrt((soulCurrentHorizontalSpeed * soulCurrentHorizontalSpeed) + (soulCurrentVerticalSpeed * soulCurrentVerticalSpeed));
	if _soul_speed > 0 {
		heartReload = 300 / (3 + _soul_speed);
		scr_H07();
	}
}

if cHeart = 8 {
	scr_H08_Status_Build_Up()
	heartReload = 1;
}

if cHeart = 17 {
	scr_H17_Bubble();	
}


alarm[2] = heartReload;