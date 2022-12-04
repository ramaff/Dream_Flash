function scr_Recall_Item_Choose() {
	var itemform = 1 + irandom(5);
	recalltype = noone;

	if itemform <= 9 {
	    recalltype = "R0" + string(itemform);
	} else {
	    recalltype = "R" + string(itemform);
	}

	var dItem = 0;
	for(j = 1; j <= 13; j++) {
		if recalltype = Floor_Layout_Control.Flash[i,j+6] {
			dItem = 1;	
		}
	}

	if dItem = 1 {
		return scr_Recall_Item_Choose();
	} else {
		return recalltype;
	}


}
