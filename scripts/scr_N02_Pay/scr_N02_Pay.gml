// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Boss Beat Script

function scr_N02_Pay(){
	
	var _recall_objs = [obj_Soul_Flash, obj_Soul_Feel, obj_Soul_Dream, obj_Soul_Nightmare]
	with (obj_Productivity) {
		repeat(2 + irandom(global.currentchapter)) {
			with instance_create(x,y,_recall_objs[global.currentchapter - 1]) {
			    direction = random(360);
			    speed = 1 + random(4);
			    friction = 0.1
			    alarm[0] = 45 + random(10);
				image_xscale = 0.5
				image_yscale = 0.5
			}
		}
	}
}