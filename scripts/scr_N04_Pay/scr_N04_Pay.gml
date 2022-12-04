// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Boss Beat Script

function scr_N04_Pay(){
	with (obj_Productivity) {
		repeat(2 + irandom(1)) {
			with instance_create(x,y,obj_Soul_Flash) {
			    direction = random(360);
			    speed = 1 + random(4);
			    friction = 0.1
			    alarm[0] = 45 + random(10);
			}
		}
	}
}