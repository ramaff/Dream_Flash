function scr_Soul_Icon_Blank_Cloud() {
	recollectionString = " ";
	recollectionUpgrade = 0;
	priceString = "";
	recollectionMirror = 2;

	with instance_create(x,y,obj_In_Game_Recollection_Cloud) {
	    recollectionMirror = other.recollectionMirror;
	    recollectionString = other.recollectionString;
	    priceString = other.priceString;
	    recollectionUpgrade = other.recollectionUpgrade;
	}



}
