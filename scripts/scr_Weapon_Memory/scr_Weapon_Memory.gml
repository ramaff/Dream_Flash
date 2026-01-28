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
	
	recollectionCount = global.recollectionWeap[itemVal]
	
	recollectionExtraStats = ""
	recollectionDescription = ""
	
	if global.recollectionWeap[itemVal] >= 1 || displayItemSprite {
		recollectionExtraStats = ""
		
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
		if variable_struct_exists(current_weapon_stats, "Shot_Life_Span") {
			recollectionLifespan = current_weapon_stats.Shot_Life_Span
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
	
		
		var _potency_drain_description = " +"
		
		if recollectionRecharge < 8 {
			_potency_drain_description += "Very Fast "
		} else if recollectionRecharge < 15 {
			_potency_drain_description += "Fast "
		} else if recollectionRecharge < 30 {
			_potency_drain_description += ""
		} else if recollectionRecharge < 60 {
			_potency_drain_description += "Slow "
		} else {
			_potency_drain_description += "Very Slow "
		}
		
		if recollectionPower < 8 {
			_potency_drain_description += "Very Low Potency"
		} else if recollectionPower < 15 {
			_potency_drain_description += "Low Potency"
		} else if recollectionPower < 30 {
			_potency_drain_description += "Medium Potency"
		} else if recollectionPower < 60 {
			_potency_drain_description += "High Potency"
		} else {
			_potency_drain_description += "Very High Potency"
		}
		
		var _reco_drain = recollectionEssence * (60 / recollectionRecharge)
		
		if _reco_drain < 15 {
			_potency_drain_description += ", Very Low Drain"
		} else if _reco_drain < 25 {
			_potency_drain_description += ", Low Drain"
		} else if _reco_drain < 45 {
			_potency_drain_description += ", Medium Drain"
		} else if _reco_drain < 75 {
			_potency_drain_description += ", High Drain"
		} else {
			_potency_drain_description += ", Very Hig Drain"
		}
		
		recollectionDescription += _potency_drain_description
		
		state_description = scr_Add_State_Credit_To_Extra_Stat_Description(current_weapon_stats);

		recollectionDescription += state_description
		
		recollectionDescription = string_replace_all(recollectionDescription, " +", "\n+")
		recollectionDescription = string_replace_all(recollectionDescription, " -", "\n-")
	}
	


}
