function scr_Recollection_Panel_Assign(_ids, _index) {
	var _inum = string_digits(_ids[_index]);
	/*
	if global.recollectCategory = "Weapons" {
		return _ids[_index]
	}

	if global.recollectCategory = "Items" {
		return _ids[_index]
		if real(_inum) < 10 {
		    itemVal = "A0" + _inum;
		} else {
		    itemVal = "A" + _inum;
		}
	}

	if global.recollectCategory = "Bosses" {
		return _ids[_index]
	    if real(_inum) < 10 {
	        itemVal = "Boss 00" + _inum;
	    } else {
	        itemVal = "Boss 0" + _inum;
	    }
	}
	
	if global.recollectCategory = "State" {
	    if real(_inum) < 10 {
	        itemVal = "State 0" + _inum;
	    } else {
	        itemVal = "State" + _inum;
	    }
	} */
	
	if global.recollectCategory = "Information" {
		
		var _tutorial_keywords = ["starting_tutorial", "item_field", "stat_level_up", "shop", "state_tutorial", "state_menu_tutorial", "channel_tutorial", 
								  "spirit_tutorial", "stat_tutorial", "spiritual_stat_tutorial", "placeholder_run_end_note"]
		var _i = _index - 1
		if _i < array_length(_tutorial_keywords) {
			return _tutorial_keywords[_i]
		}
	} else {
		return _ids[_index]
	}



}
