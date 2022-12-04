function scr_Tangible_Item_Choose() {
	var itemform = 3 + irandom(5);
	tangibletype = noone;

	if itemform <= 9 {
	    tangibletype = "K0" + string(itemform);
	} else {
	    tangibletype = "K" + string(itemform);
	}

	var dItem = 0;
	for(j = 1; j <= 13; j++) {
		if tangibletype = Floor_Layout_Control.Flash[i,j+6] {
			dItem = 1;	
		}
	}

	if dItem = 1 {
		return scr_Tangible_Item_Choose();
	} else {
		return tangibletype;
	}



}
