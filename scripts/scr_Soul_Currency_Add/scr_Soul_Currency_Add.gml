function scr_Soul_Currency_Add(_return_recalls = false) {
	
	if difficulty <= 0 {
		if _return_recalls == true {
			return 0;
		}
		exit;
	}
	
	var giveFac = 1;
	if global.boost = 2 {
	    giveFac = giveFac * 0.5;
	}
	if (global.bossval - frac(global.bossval) = 13) || (global.bossval - frac(global.bossval) = 27) {
	    giveFac = giveFac * 0.5;
	}
	
	var recalls = ((global.soulhope + global.soulhopeTemp) / 20) + 1 + global.extrarecalls;
	var recall_obj = obj_Soul_Flash

	if global.currentchapter = 1 {
	    recalls += difficulty * 2 * giveFac
	    recall_obj = obj_Soul_Flash
	}

	if global.currentchapter = 2 {
	    recalls += difficulty * 1 * giveFac;
	    recall_obj = obj_Soul_Feel;
	}

	if global.currentchapter = 3 {
		recalls += difficulty * 0.5 * giveFac
	    recall_obj = obj_Soul_Dream;
	}

	if global.currentchapter = 4 {
		recalls += difficulty * 0.35 * giveFac
		recall_obj = obj_Soul_Nightmare;
	}
	
	if _return_recalls == true {
		return recalls;
	}	
	
	repeat(recalls) {
	    with instance_create(x,y,recall_obj) {
	        direction = random(360);
	        speed = 1 + random(4);
	        friction = 0.1
	        alarm[0] = 45 + random(10);
			
			image_xscale = 0.5;
			image_yscale = 0.5;
	    }
	}


}
