function scr_Current_Heart_Stats() {

	global.totalhearts = 0;

	global.currenthearthp = 20;
	global.currentheartdefense = 0;
	global.currentheartregen = 1;
	global.currentheartsurvival = 0;

	var i = 0;
	
	for (i = 0; i < 16; i++) {
	    if Soul_Hearts_Control.heart[i].heart_id != 0 {
	        global.totalhearts++;
	    }
		if global.B06HeartConversions > 0 {
			scr_B06(i);
		}
	}
	global.currentheart = global.totalhearts - 1;

	if global.mousehearttype != 0 {
		global.totalhearts++;	
	}

	if global.currentheart < 0 {
		global.currentheart = 0;	
	}

	if global.totalhearts > 0 {
		global.currenthearttype = heart[global.currentheart,2]
	}

	if global.bosscount = 0 {
	    for (i = 0; i < 16; i++) {
	        if frac(Soul_Hearts_Control.heart[i].heart_id) > 0 {
	            Soul_Hearts_Control.heart[i].heart_id -= frac(Soul_Hearts_Control.heart[i].heart_id);
	        }
	    }
	    global.currenthearttype = heart[global.currentheart,2]
	}

	var currHeart = global.currenthearttype - frac(global.currenthearttype);

	if currHeart != 3 {
	    if frac(global.currenthearttype) = (0.01 * global.B[4]) {
	        global.currentheartsurvival = 0;
	    } else {
	        global.currentheartsurvival = 1;
	    }
	}

	/////////////////////////////////////////////Regen Heart
	if currHeart = 2 {
	global.currentheartregen = 3 * global.soulheartboost;
	}
	/////////////////////////////////////////////Survivor Heart
	if global.currenthearttype = 3 {
	global.currentheartsurvival = round(2 * global.soulheartboost);
	}
	/////////////////////////////////////////////Survivor Heart Pt II
	if global.currenthearttype > 3 and global.currenthearttype < 4 {
		global.currentheartsurvival = round(2 * global.soulheartboost) - (frac(global.currenthearttype - 3) * 100);
		global.currenthearthp = 1;
	}
	/////////////////////////////////////////////Jumbo Heart
	if currHeart = 4 {
		global.currenthearthp = 20 + (20 * global.soulheartboost);
	}
	/////////////////////////////////////////////Tough Heart
	if currHeart = 5 {
	global.currentheartdefense = 4 * global.soulheartboost;
	}
	/////////////////////////////////////////////Undying Heart
	if currHeart = 6 {
	global.currenthearthp = 10;
	}
	/////////////////////////////////////////////Hourglass Heart
	if currHeart = 7 {
	global.currenthearthp = 60;
	global.currentheartregen = 0;
	}
	/////////////////////////////////////////////Spike Heart
	if currHeart = 8 {
	global.currenthearthp = 20;
	}
	/////////////////////////////////////////////Bleeding Heart
	if currHeart = 9 {
	global.currenthearthp = 20;
	}
	/////////////////////////////////////////////Magician Heart
	if currHeart = 10 {
	global.currenthearthp = 20;
	}
	/////////////////////////////////////////////Rocket Heart
	if currHeart = 11 {
	global.currenthearthp = 20;
	}
	/////////////////////////////////////////////Lightning Heart
	if currHeart = 12 {
	global.currenthearthp = 20;
	}
	/////////////////////////////////////////////Scaley Heart
	if currHeart = 13 {
	global.currenthearthp = 20;
	//global.currentheartregen = 2;
	}
	/////////////////////////////////////////////Beast Heart
	if currHeart = 14 {
	global.currenthearthp = 25;
	}
	/////////////////////////////////////////////Rubber Heart
	if currHeart = 15 {
	global.currenthearthp = 20;
	}
	/////////////////////////////////////////////Jello Heart
	if currHeart = 16 {
	global.currenthearthp = 20;
	}
	///////////////////////////////////////////// Cope Heart
	if currHeart = 51 {
		global.currenthearthp = 20 * global.S[4];
	}
	///////////////////////////////////////////// Security Heart
	if currHeart = 52 {
		global.currenthearthp = 20 * global.OC[2];
	}
	///////////////////////////////////////////// Seethe Heart
	if currHeart = 53 {
		global.currenthearthp = 20 * global.XA[4];
	}
	/////////////////////////////////////////////Body Bag Heart
	if currHeart = 103 {
		global.currenthearthp = 40;
	}

}
