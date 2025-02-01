function scr_Recollection_Panel_Assign(_ids, _index) {	
	
	if global.recollectCategory = "Information" {
		
		var _tutorial_keywords = ["starting_tutorial", "item_field", "stat_level_up", "shop", "state_tutorial", "state_menu_tutorial", "channel_tutorial", 
								  "spirit_tutorial", "stat_tutorial", "spiritual_stat_tutorial", "placeholder_run_end_note"]
		var _i = _index
		if _i < array_length(_tutorial_keywords) {
			return _tutorial_keywords[_i]
		}
	} else {
		var _inum = string_digits(_ids[_index]);

		return _ids[_index]
	}



}
