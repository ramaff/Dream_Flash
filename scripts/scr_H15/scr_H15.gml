function scr_H15() {
	// Location Soul Hit by Bullet Event

	if global.totalhearts > 0 {
	if Soul_Hearts_Control.heart[global.currentheart, 2] = 15 {
	    var chance = irandom(2);
	
		scr_Rubber_Soul_Rebound_Shot();

	    if chance >= 1 {
	        damageamount = 2;
	    }

	}
	}


}
