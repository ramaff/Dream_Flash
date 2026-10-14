// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Screen_Flash(time){

	with instance_create_depth(x,y,-100,obj_Screen_Flash) {
		flashLife = time;
	}

}