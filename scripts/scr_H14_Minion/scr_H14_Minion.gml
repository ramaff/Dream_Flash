function scr_H14_Minion() {
	// Location: Boss Next Phase Check and Minion Death Event

	if global.totalhearts > 0 {
	if Soul_Hearts_Control.heart[global.currentheart, 2] = 14 {
	    obj_Soul_Parent.shealth += 2 * global.soulheartboost;
	    for (i = 0; i < 15; i++) {
	        Soul_Hearts_Control.heart[i, 3] += 2 * global.soulheartboost;
	    }
	}
	}


}
