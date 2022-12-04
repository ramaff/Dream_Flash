// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bullet_Soul_Home(rspeed){
	var im = direction;
	var pointDir = scr_Soul_Point();
	im += sin(degtorad(pointDir - im)) * rspeed;
	direction = im;
}