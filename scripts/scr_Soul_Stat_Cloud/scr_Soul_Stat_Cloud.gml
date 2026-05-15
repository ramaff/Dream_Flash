function scr_Soul_Stat_Cloud() {
	//draw_self();
	//draw_sprite(spr_Recollection_Hover_Cloud,0,x,y);
	
	recollectionDescription = "Each level represents one item from the "
	var _desc_add = ""

	if stat = 1 {
	    recollectionString = "STRENGTH";
		_desc_add = "Usually increasing the damage you deal to bosses."
	}
	if stat = 2 {
	    recollectionString = "VITALITY";
		_desc_add = " Usually increasing the health of the soul."
	}
	if stat = 3 {
	    recollectionString = "ESSENCE";
		_desc_add = "Usually increasing the essence regen of the soul."
	}
	if stat = 4 {
	    recollectionString = "DEXTERITY";
		_desc_add = "Usually increasing the speed and firerate of the soul."
	}
	if stat = 5 {
	    recollectionString = "PERCEPTION";
		_desc_add = "Usually increasing your warp rate, and lowering weapon drain rate."
	}
	if stat = 6 {
	    recollectionString = "STATE";
		_desc_add = "Usually increasing transformation duration and recharge rate."
	}

	if stat = 7 {
	    recollectionString = "DESPAIR";
		_desc_add = "Usually increasing the difficulty and damage bosses deal to the soul."
	}
	if stat = 8 {
	    recollectionString = "PARANOIA";
		_desc_add = "Usually increasing the unpredicability and fire rate of bosses."
	}
	if stat = 9 {
	    recollectionString = "LOATHING";
		_desc_add = "Usually increasing the damage the soul and bosses do to each other."
	}
	if stat = 10 {
	    recollectionString = "ASSURANCE";
		_desc_add = "Usually increasing the fire rate of the soul and bosses."
	}
	if stat = 11 {
	    recollectionString = "BLISS";
		_desc_add = "Usually increasing the health and essence regen of the soul."
	}
	if stat = 12 {
	    recollectionString = "HOPE";
		_desc_add = "Usually increasing the potential of the soul's future items."
	}
	
	recollectionDescription += string_lower(recollectionString)
	recollectionDescription += " pool. "
	recollectionDescription += _desc_add
    
	recollectionUpgrade = 0;
	priceString = "";
	recollectionMirror = 2;

	with instance_create(x,y,obj_In_Game_Recollection_Cloud) {
		depth = other.depth - 1;
		target = other.id
		xx_offset = 200;
		yy_offset = 125;
		event_user(0)
		
		image_alpha = 1;

	    recollectionMirror = other.recollectionMirror;
	    recollectionString = other.recollectionString;
	    priceString = other.priceString;
	    recollectionUpgrade = other.recollectionUpgrade;
		recollectionDescription = other.recollectionDescription;
	}



}
