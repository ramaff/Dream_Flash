// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Attack_Think() {
	with obj_Soul_Parent {
		sprite_index = spr_The_Soul_Hard_Think;
		//show_debug_message("scr_soul_attack_think: " + string(scurrentstate))
		if scurrentstate != "Base" {
			//show_debug_message(sprite_get_name(sprite_index))
				switch(scurrentstate) {
			
					case "Snake":
						sprite_index = spr_Snake_Soul_Hard_Think;
						break;
						
					case "Beast":
						sprite_index = spr_Beast_Soul_Hard_Think;
						break;
						
					case "Mechanical":
						sprite_index = spr_Mechanical_Soul_Hard_Think;
						break;
						
					case "Scrub":
						sprite_index = spr_Scrub_Soul_Hard_Think;
						break;
						
					case "Spike":
						sprite_index = spr_Spike_State_Hard_Think;
						break;
						
					case "Bleeding":
						sprite_index = spr_Bleeding_Soul_Hard_Think;
						break;
						
					case "Casting":
						sprite_index = spr_Casting_Soul_Hard_Think;
						break;
						
					case "Ascending":
						sprite_index = spr_Ascending_Soul_Hard_Think;
						break;
				
					default:
						sprite_index = spr_The_Soul_Hard_Think;
				
				}
			}
		//show_debug_message(sprite_get_name(sprite_index))
		alarm[8] = 10;
	}
}