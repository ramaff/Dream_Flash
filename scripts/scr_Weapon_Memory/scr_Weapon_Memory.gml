function scr_Weapon_Memory(displayItemSprite = true) {
	recollectionSize = 0.5;
	recollectionExtraStats = "No Special Properties"
	recollectionSprite = spr_Recollection_Unknown_Weapon_Icon;
	
	//show_debug_message(string(itemVal))
	
	if variable_struct_exists(global.weapon_stats, string(itemVal)) {
		current_weapon_stats = variable_struct_get(global.weapon_stats, string(itemVal))
	} else {
		return	
	}
	
	//show_debug_message(string(current_weapon_stats))
	
	if variable_struct_exists(current_weapon_stats, "Name") {
		recollectionString = current_weapon_stats.Name
	}
	if global.recollectionWeap[itemVal] >= 1 || displayItemSprite {
		if variable_struct_exists(current_weapon_stats, "Recollection_Sprite") {
			recollectionSprite = asset_get_index(current_weapon_stats.Recollection_Sprite)
			if recollectionSprite = -1 {
				recollectionSprite = spr_Soul_Shot_Art;	
			}
		}
	}
	
	recollectionExtraStats = "You cannot remember"
	
	if global.recollectionWeap[itemVal] >= 1 {
		recollectionExtraStats = "No Special Properties"
		
		if variable_struct_exists(current_weapon_stats, "Shot_Power") {
			recollectionPower = current_weapon_stats.Shot_Power
		}
		if variable_struct_exists(current_weapon_stats, "Essence") {
			recollectionEssence = current_weapon_stats.Essence
		}
		if variable_struct_exists(current_weapon_stats, "Delay") {
			recollectionRecharge = current_weapon_stats.Delay
		}
		if variable_struct_exists(current_weapon_stats, "Shot_Speed") {
			recollectionSpeed = current_weapon_stats.Shot_Speed
		}
		if variable_struct_exists(current_weapon_stats, "Shot_Lifespan") {
			recollectionLifespan = current_weapon_stats.Shot_Lifespan
		}
		if variable_struct_exists(current_weapon_stats, "Shot_Accuracy") {
			recollectionAccuracy = current_weapon_stats.Shot_Accuracy
		}
		if variable_struct_exists(current_weapon_stats, "Extra_Stats") {
			recollectionExtraStats = current_weapon_stats.Extra_Stats
		}
		if variable_struct_exists(current_weapon_stats, "Description") {
			recollectionDescription = current_weapon_stats.Description
		}
		if variable_struct_exists(current_weapon_stats, "Complexity") {
			recollectionComplexity = current_weapon_stats.Complexity
		}
		/*if variable_struct_exists(current_weapon_stats, "State_Extra_Stats") {
			if recollectionExtraStats != "No Special Properties" {
				recollectionExtraStats += " " + current_weapon_stats.State_Extra_Stats
			} else {
				recollectionExtraStats = current_weapon_stats.State_Extra_Stats
			}
		}*/
		state_description = scr_Add_State_Credit_To_Extra_Stat_Description(current_weapon_stats);
		if recollectionExtraStats != "No Special Properties" {
			recollectionExtraStats += " " + state_description
		} else {
			recollectionExtraStats = state_description
		}
	}
	


}
