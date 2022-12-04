function scr_Defense_Mechanisms_Item_Choose() {
	var itemform = 1 + irandom(2);
	itype = noone;

	if itemform <= 9 {
	    itype = "S0" + string(itemform);
	} else {
	    itype = "S" + string(itemform);
	}

	var dItem = 0;
	for(j = 1; j <= 13; j++) {
		if itype = Floor_Layout_Control.Flash[i,j+6] {
			dItem = 1;	
		}
	}

	if dItem = 1 {
		return scr_Defense_Mechanisms_Item_Choose();
	} else {
		return itype;
	}



}
