function scr_Soul_Currency_Add() {
	var giveFac = 1;
	if global.boost = 2 {
	    giveFac = giveFac * 0.5;
	}
	if (global.bossval - frac(global.bossval) = 13) || (global.bossval - frac(global.bossval) = 27) {
	    giveFac = giveFac * 0.5;
	}
	
	var recalls = ((global.soulhope + global.soulhopeTemp) / 20) + 1 + global.extrarecalls;

	if global.currentchapter = 1 {
	    repeat(recalls + (difficulty * 2 * giveFac)) {
	        with instance_create(x,y,obj_Soul_Flash) {
	            direction = random(360);
	            speed = 1 + random(4);
	            friction = 0.1
	            alarm[0] = 45 + random(10);
	        }
	    }
	}

	if global.currentchapter = 2 {
	    repeat(recalls + (difficulty * 1 * giveFac)) {
	        with instance_create(x,y,obj_Soul_Feel) {
	            direction = random(360);
	            speed = 1 + random(4);
	            friction = 0.1
	            alarm[0] = 45 + random(10);
	        }
	    }
	}

	if global.currentchapter = 3 {
	    repeat(recalls + (difficulty * 0.5 * giveFac)) {
	        with instance_create(x,y,obj_Soul_Dream) {
	            direction = random(360);
	            speed = 1 + random(4);
	            friction = 0.1
	            alarm[0] = 45 + random(10);
	        }
	    }
	}

	if global.currentchapter = 4 {
	    repeat(recalls + (difficulty * 0.35 * giveFac)) {
	        with instance_create(x,y,obj_Soul_Nightmare) {
	            direction = random(360);
	            speed = 1 + random(4);
	            friction = 0.1
	            alarm[0] = 45 + random(10);
	        }
	    }
	}


}
