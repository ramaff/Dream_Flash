function scr_Boss_Memory() {
	
	recollectionSize = 0.5;
	
	//show_debug_message(string(itemVal))
	if variable_struct_exists(global.boss_stats, string(itemVal)) {
		current_boss_stats = variable_struct_get(global.boss_stats, string(itemVal))
	} else {
		return	
	}
	
	//show_debug_message(string(current_boss_stats))
	
	var rememberance = global.recollectionBoss[string_digits(itemVal)]
	
	if rememberance >= 1 {
		if variable_struct_exists(current_boss_stats, "Name") {
			recollectionBString[0] = current_boss_stats.Name
		}
		if variable_struct_exists(current_boss_stats, "Recollection_Sprite") {
			recollectionBSprite[0] = asset_get_index(current_boss_stats.Recollection_Sprite)
			if recollectionBSprite[0] = -1 {
				recollectionBSprite[0] = spr_Soul_Shot_Art;	
			}
		}
		if variable_struct_exists(current_boss_stats, "recollectionSize") {
			recollectionSize = current_boss_stats.recollectionSize
		}
		if variable_struct_exists(current_boss_stats, "recollectionDescription") {
			recollectionDescription = current_boss_stats.recollectionDescription
		}
		if variable_struct_exists(current_boss_stats, "Description") {
			recollectionDescription = current_boss_stats.Description
		}
		if variable_struct_exists(current_boss_stats, "Palette") {
			recollectionPalette = asset_get_index(current_boss_stats.Palette)
		}
		var i = 0;
		for(i = 0; i < 10; i++) {
			/*
			if variable_struct_exists(current_boss_stats, "Name") {
				recollectionBString[i] = current_boss_stats.Name
			}
			if variable_struct_exists(current_boss_stats, "Recollection_Sprite") {
				recollectionBSprite[i] = asset_get_index(current_boss_stats.Recollection_Sprite)
				if recollectionBSprite[i] = -1 {
					recollectionBSprite[i] = spr_Soul_Shot_Art;	
				}
			} */
			if variable_struct_exists(current_boss_stats, "Boss_Danger") {
				recollectionDanger[i] = current_boss_stats.Boss_Danger
			}
			if variable_struct_exists(current_boss_stats, "Health_Phase_1") {
				recollectionHealth1[i] = current_boss_stats.Health_Phase_1
			}
			if variable_struct_exists(current_boss_stats, "Health_Phase_2") {
				recollectionHealth2[i] = current_boss_stats.Health_Phase_2
			}
			if variable_struct_exists(current_boss_stats, "Health_Phase_3") {
				recollectionHealth3[i] = current_boss_stats.Health_Phase_3
			}
			if variable_struct_exists(current_boss_stats, "Defense_Phase_1") {
				recollectionDefense1[i] = current_boss_stats.Defense_Phase_1
			}
			if variable_struct_exists(current_boss_stats, "Defense_Phase_2") {
				recollectionDefense2[i] = current_boss_stats.Defense_Phase_2
			}
			if variable_struct_exists(current_boss_stats, "Defense_Phase_3") {
				recollectionDefense3[i] = current_boss_stats.Defense_Phase_3
			}
			
		}
		for(i = 0; i < 10; i++) {
			var champstr = "Champ " + string(i);
			if variable_struct_exists(current_boss_stats, champstr) {
				current_champ_stats = variable_struct_get(current_boss_stats, string(champstr))
			} else {
				continue
			}
			if variable_struct_exists(current_champ_stats, "Name") {
				recollectionBString[i] = current_champ_stats.Name
			}
			if variable_struct_exists(current_champ_stats, "Recollection_Sprite") {
				recollectionBSprite[i] = asset_get_index(current_champ_stats.Recollection_Sprite)
				if recollectionBSprite[i] = -1 {
					recollectionBSprite[i] = spr_Soul_Shot_Art;	
				}
			}
			if variable_struct_exists(current_champ_stats, "Boss_Danger") {
				recollectionDanger[i] = current_champ_stats.Boss_Danger
			}
			if variable_struct_exists(current_champ_stats, "Health_Phase_1") {
				recollectionHealth1[i] = current_champ_stats.Health_Phase_1
			}
			if variable_struct_exists(current_champ_stats, "Health_Phase_2") {
				recollectionHealth2[i] = current_champ_stats.Health_Phase_2
			}
			if variable_struct_exists(current_champ_stats, "Health_Phase_3") {
				recollectionHealth3[i] = current_champ_stats.Health_Phase_3
			}
			if variable_struct_exists(current_champ_stats, "Defense_Phase_1") {
				recollectionDefense1[i] = current_champ_stats.Defense_Phase_1
			}
			if variable_struct_exists(current_champ_stats, "Defense_Phase_2") {
				recollectionDefense2[i] = current_champ_stats.Defense_Phase_2
			}
			if variable_struct_exists(current_champ_stats, "Defense_Phase_3") {
				recollectionDefense3[i] = current_champ_stats.Defense_Phase_3
			}
			if variable_struct_exists(current_champ_stats, "Palette_Index") {
				recollectionPaletteIndex[i] = current_champ_stats.Palette_Index
				//show_debug_message(recollectionPaletteIndex[i])
			}
			
		}
	}
	
	recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	
	var c = 0;
	for(c = 0; c < 10; c++) {
		if c > 0 {
			recollectionDanger[c] += 1 + (0.125 * (recollectionDanger[0] - 1));	
		}
		if c > 7 {
			recollectionDanger[c] += 1 + (0.125 * (recollectionDanger[0] - 1));	
		}
	}
	
	if string_digits(itemVal) > 80 and string_digits(itemVal) <= 90 {
		recollectionDanger[1] = 8;
		recollectionDanger[2] = 13;
		recollectionDanger[3] = 18;
	}

	if recollectionBSprite[0] != spr_Recollection_Unknown_Boss_Icon {
	recollectionSprite = recollectionBSprite[0];
	recollectionString = recollectionBString[0];
	}
	
	

	


}
