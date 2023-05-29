// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Item_Think(){
	with obj_Soul_Parent {
		sprite_index = spr_The_Soul_Think;
		if scurrentstate != "Base" {
			switch(scurrentstate) {
			
				case "Snake":
					sprite_index = spr_Snake_Soul_Think;
					break;
					
				case "Beast":
					sprite_index = spr_Beast_Soul_Think;
					break;
					
				case "Mechanical":
					sprite_index = spr_Mechanical_Soul_Think;
					break;
					
				case "Scrub":
					sprite_index = spr_Scrub_Soul_Think;
					break;
					
				case "Spike":
					sprite_index = spr_Spike_State_Think;
					break;
				
				case "Bleeding":
					sprite_index = spr_Bleeding_Soul_Think;
					break;
					
				case "Casting":
					sprite_index = spr_Casting_Soul_Think;
					break;
					
				case "Ascending":
					sprite_index = spr_Ascending_Soul_Think;
					break;
				
				default:
					sprite_index = spr_The_Soul_Think;
				
			}
		}
		alarm[8] = 10;
	}
}