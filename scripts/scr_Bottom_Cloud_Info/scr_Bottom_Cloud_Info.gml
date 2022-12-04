function scr_Bottom_Cloud_Info() {
	/*

	//draw_self();
	draw_sprite(spr_Long_Bottom_Cloud,0,view_xview + 408,view_yview + 600);

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


	draw_set_font(Dream_Flash_Font);
	draw_set_colour(c_black);

	draw_set_halign(fa_left);

	draw_text_ext(view_xview + 128,view_yview + 624, recollectionString,40,608);

	draw_set_alpha(1);


	/*
    
	    recollectionUpgrade = 0;
	    priceString = "";
	    recollectionMirror = 2;

	with instance_create(x,y,obj_Recollection_Cloud) {
	    recollectionMirror = other.recollectionMirror;
	    recollectionString = other.recollectionString;
	    priceString = other.priceString;
	    recollectionUpgrade = other.recollectionUpgrade;
	}


/* end scr_Bottom_Cloud_Info */
}
