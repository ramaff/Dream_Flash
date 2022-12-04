// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Shot_Soul_Hit(){

	if shotdamage {
		if shothealing = 1 {
			other.shealth += shotpower / 60;

			if shothealemit = 0 {
				var valdis = shotpower * shotlifespan / 60;

				with instance_create(other.x,other.y,obj_Damage_Indicator) {
				    element = 6;
				    damageIndication = valdis;
				    textSize = 1;
				    direction = 90;
				    speed = 1.5 + random(0.35)
				    friction = 0.01 + (other.speed / 600)
				    alarm[0] = 30 + irandom(6);
				}
				shothealemit = 1;
			}
		}
	
	}

}