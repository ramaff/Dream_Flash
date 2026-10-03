// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Primative_Bounce(){

	if(place_meeting(x + hspeed, y, obj_The_Border))
		direction = -direction + 180;

	if(place_meeting(x, y + vspeed, obj_The_Border))
		direction = -direction;

}