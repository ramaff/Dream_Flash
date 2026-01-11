function scr_Collect_Income() {
	with (obj_Soul_Recall) {
	    global.soul_recall++;
	    global.soul_xp++;
	    instance_destroy();
	}
	/*
	with (obj_Soul_Spiritual) {
	    if spirit = "Hope" {
	        global.soulhope++;
	    }
	    if spirit = "Bliss" {
	        global.soulbliss++;
	    }
	    if spirit = "Vanity" {
	        global.soulvanity++;
	    }
	    if spirit = "Loathing" {
	        global.soulloathing++;
	    }
	    if spirit = "Paranoia" {
	        global.soulparanoia++;
	    }
	    if spirit = "Despair" {
	        global.souldespair++;
	    }
	    instance_destroy();
	}
	*/


}
