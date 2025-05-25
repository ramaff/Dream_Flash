function scr_Emotion_Item_Choose(_class, _counter, _room) {
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

	var _f = 1;
	for(_f = 1; _f <= 12; _f++) {
		if itemtype = string(global.floor[_room,_f+6]) {
			dItem = 1;	
		}
	}

	if _counter >= 10 {
		dItem = 0;	
	}

	_counter += 1;

	if dItem = 1 {
		return scr_Emotion_Item_Choose(_class,_counter, _room);
	} else {
		return itemtype;
	}



}
