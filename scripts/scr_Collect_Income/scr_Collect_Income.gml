function scr_Collect_Income() {
	with (obj_Soul_Flash) {
	    global.soulflash++;
		global.soulxp++;
	    instance_destroy();
	}
	with (obj_Soul_Feel) {
	    global.soulflash++;
		global.soulxp++;
	    instance_destroy();
	}
	with (obj_Soul_Dream) {
	    global.soulflash++;
		global.soulxp++;
	    instance_destroy();
	}
	with (obj_Soul_Nightmare) {
	    global.soulflash++;
		global.soulxp++;
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
