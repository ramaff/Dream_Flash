function scr_Gem_Item_Choose() {
	var itemform = 1 + irandom(5);
	gemtype = noone;

	if itemform <= 9 {
	    gemtype = "G0" + string(itemform);
	} else {
	    gemtype = "G" + string(itemform);
	}

	var dItem = 0;
	for(j = 1; j <= 13; j++) {
		if gemtype = Floor_Layout_Control.Flash[i,j+6] {
			dItem = 1;	
		}
	}

	if dItem = 1 {
		return scr_Gem_Item_Choose();
	} else {
		return gemtype;
	}



}
