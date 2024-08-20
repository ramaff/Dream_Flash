function old_H14() {
	// Location: Boss Next Phase Check and Minion Death Event

	if global.totalhearts > 0 {
	if Soul_Hearts_Control.heart[global.currentheart, 2] = 14 {
	    obj_Soul_Parent.shealth += 5 * global.soulheartboost;
	    for (i = 0; i < 15; i++) {
	        Soul_Hearts_Control.heart[i, 3] += 5 * global.soulheartboost;
	    }
	}
	}


}
