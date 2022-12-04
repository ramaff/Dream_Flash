function scr_Heart_Item_Choose() {
	var itemform = 1 + irandom(15);
	hearttype = noone;

	if itemform <= 9 {
	    hearttype = "H0" + string(itemform);
	} else {
	    hearttype = "H" + string(itemform);
	}

	var dItem = 0;
	for(j = 1; j <= 13; j++) {
		if hearttype = Floor_Layout_Control.Flash[i,j+6] {
			dItem = 1;	
		}
	}

	if dItem = 1 {
		return scr_Heart_Item_Choose();
	} else {
		return hearttype;
	}



}
