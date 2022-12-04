function scr_Food_Item_Choose() {
	var itemform = 1 + irandom(7);
	foodtype = noone;

	if itemform <= 9 {
	    foodtype = "J0" + string(itemform);
	} else {
	    foodtype = "J" + string(itemform);
	}

	var dItem = 0;
	for(j = 1; j <= 13; j++) {
		if foodtype = Floor_Layout_Control.Flash[i,j+6] {
			dItem = 1;	
		}
	}

	if dItem = 1 {
		return scr_Food_Item_Choose();
	} else {
		return foodtype;
	}



}
