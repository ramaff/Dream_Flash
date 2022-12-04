function scr_Soul_Stat_Cloud() {
	//draw_self();
	draw_sprite(spr_Recollection_Hover_Cloud,0,x,y);

	if stat = 1 {
	    recollectionString = "STRENGTH";
	}
	if stat = 2 {
	    recollectionString = "VITALITY";
	}
	if stat = 3 {
	    recollectionString = "ESSENCE";
	}
	if stat = 4 {
	    recollectionString = "DEXTERITY";
	}
	if stat = 5 {
	    recollectionString = "PERCEPTION";
	}
	if stat = 6 {
	    recollectionString = "STATE";
	}

	if stat = 7 {
	    recollectionString = "DESPAIR";
	}
	if stat = 8 {
	    recollectionString = "PARANOIA";
	}
	if stat = 9 {
	    recollectionString = "LOATHING";
	}
	if stat = 10 {
	    recollectionString = "VANITY";
	}
	if stat = 11 {
	    recollectionString = "BLISS";
	}
	if stat = 12 {
	    recollectionString = "HOPE";
	}
    
	    recollectionUpgrade = 0;
	    priceString = "";
	    recollectionMirror = 2;

	with instance_create(x,y,obj_Recollection_Cloud) {
	    recollectionMirror = other.recollectionMirror;
	    recollectionString = other.recollectionString;
	    priceString = other.priceString;
	    recollectionUpgrade = other.recollectionUpgrade;
	}



}
