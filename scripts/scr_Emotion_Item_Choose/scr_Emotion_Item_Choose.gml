function scr_Emotion_Item_Choose() {
	classform = argument[0];
	counter = argument[1];
	itemtype = noone;
	elementString = "";

	elementString = "I";

	var itemform = 1 + irandom(35);
	
	

	var wTier = "Basic";
	
	if ds_list_empty(global.i_item_pool) {
		if itemform <= 9 {
		    itemtype = elementString + "0" + string(itemform);
		} else {
		    itemtype = elementString + string(itemform);
		}
	} else {
		ds_list_shuffle(global.i_item_pool);
		itemtype = ds_list_find_value(global.i_item_pool, 0);
	}

	var dItem = 0;

	for(f = 1; f <= 12; f++) {
		if itemtype = string(global.floor[i,f+6]) {
			dItem = 1;	
		}
	}

	if counter >= 10 {
		dItem = 0;	
	}

	counter += 1;

	if dItem = 1 {
		return scr_Emotion_Item_Choose(classform,counter);
	} else {
		return itemtype;
	}



}
