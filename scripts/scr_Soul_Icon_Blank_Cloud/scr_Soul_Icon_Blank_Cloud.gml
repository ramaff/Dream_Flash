function scr_Soul_Icon_Blank_Cloud() {
	recollectionString = " ";
	recollectionUpgrade = 0;
	priceString = "";
	recollectionMirror = 2;

	with instance_create(x,y,obj_In_Game_Recollection_Cloud) {
		depth = other.depth - 1;
		target = other.id
		xx_offset = 200;
		yy_offset = 125;
		event_user(0)
	    recollectionMirror = other.recollectionMirror;
	    recollectionString = other.recollectionString;
	    priceString = other.priceString;
	    recollectionUpgrade = other.recollectionUpgrade;
	}



}
