// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location; Boss Damage Calc

function scr_B09(damage){
	if global.B[9] > 0 {
		var threshold = 40;
		
		var bossid = other.id;
	
		while(damage > threshold) {
			damage -= threshold;
			with instance_create(x,y, obj_Speech_Heart) {
				speed = 15 + random(20);
				direction = random(360);
				bosstarget = bossid;
			}
		}
		if damage > 0 {
			if scr_Chance(threshold / damage) {
			
				with instance_create(x,y, obj_Speech_Heart) {
					speed = 15 + random(20);
					direction = random(360);
					bosstarget = bossid;
				}
			}
		}
	}
}