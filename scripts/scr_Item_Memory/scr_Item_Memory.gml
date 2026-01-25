function scr_Item_Memory(displayItemSprite = true) {
	
	recollectionSize = 0.5;
	
	if variable_struct_exists(global.item_stats, string(itemVal)) {
		current_item_stats = variable_struct_get(global.item_stats, string(itemVal))
	} else {
		return	
	}
	
	//show_debug_message(string(current_item_stats))
	
	var rememberance = scr_Item_Memory_Count(itemVal)
	recollectionCount = rememberance
	recollectionSprite = spr_Recollection_Unknown_Weapon_Icon;
	
	if variable_struct_exists(current_item_stats, "recollectionString") {
		recollectionString = current_item_stats.recollectionString
	}
	if rememberance >= 1 || displayItemSprite {
		if variable_struct_exists(current_item_stats, "recollectionSprite") {
			recollectionSprite = asset_get_index(current_item_stats.recollectionSprite)
			if recollectionSprite = -1 {
				recollectionSprite = spr_Soul_Shot_Art;	
			}
		}
	}
	if variable_struct_exists(current_item_stats, "recollectionSize") {
		recollectionSize = current_item_stats.recollectionSize
	}
	
	recollectionExtraStats = "You cannot remember"
	
	
	if rememberance >= 1 || displayItemSprite {
		recollectionExtraStats = ""
		
		if variable_struct_exists(current_item_stats, "recollectionSummary") {
			recollectionExtraStats = current_item_stats.recollectionSummary
		}
		if variable_struct_exists(current_item_stats, "recollectionDescription") {
			recollectionDescription = current_item_stats.recollectionDescription
		}
		/*if variable_struct_exists(current_item_stats, "State_Extra_Stats") {
			if recollectionExtraStats != "No Special Properties" {
				recollectionExtraStats += " " + current_item_stats.State_Extra_Stats
			} else {
				recollectionExtraStats = current_item_stats.State_Extra_Stats
			}
		}*/
		state_description = scr_Add_State_Credit_To_Extra_Stat_Description(current_item_stats);
		if itemVal = "L05" {
			state_description = "";	
		}
		recollectionDescription = recollectionDescription + state_description
		/*if !is_array(recollectionDescription) {
			recollectionDescription = [recollectionDescription]	
		} */
		//recollectionDescription[array_length(recollectionDescription)] = state_description
		/*if recollectionExtraStats != "No Special Properties" {
			recollectionExtraStats += " " + state_description
		} else {
			recollectionExtraStats = state_description
		} */
		
	}
	Print_DF(recollectionDescription)
	recollectionDescription = string_replace_all(recollectionDescription, " +", "\n+")
	recollectionDescription = string_replace_all(recollectionDescription, " -", "\n-")
	Print_DF(recollectionDescription)
	
	


}
