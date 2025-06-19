// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Initial_Item_Memory_Get(_stacks = 1){
	recollectionString = "You cannot remember";
	recollectionUpgrade = 0;
	recollectionPriceType = spr_Soul_Flash;
	if global.currentchapter = 2 {
		recollectionPriceType = spr_Soul_Feel;
	}
	if global.currentchapter = 3 {
		recollectionPriceType = spr_Soul_Dream;
	}
	if global.currentchapter = 4 {
		recollectionPriceType = spr_Soul_Dream;
	}
	if shop > 0 {
		priceString = string(flashcost);
		//if recollectionPriceType = spr_Soul_Dream {
		//    priceString = string(flashcost);
		//}
	} else {
		priceString = "";
	}
	recollectionExtraStats = "";

	for(v = 0; v < 10; v++) {
		recollectionBSprite[v] = spr_Recollection_Unknown_Boss_Icon;
		recollectionBString[v] = "You cannot remember";
		recollectionHealth1[v] = -999;
		recollectionHealth2[v] = -999;
		recollectionDefense1[v] = -999;
		recollectionDefense2[v] = -999;
		recollectionDanger[v] = -999;
		recollectionImaginaryResist[v] = -999;
		recollectionSharpResist[v] = -999;
		recollectionExplosiveResist[v] = -999;
		recollectionMagicResist[v] = -999;
		recollectionEnergyResist[v] = -999;
	}

	scr_Memory_Info_Bank(true);

	if !(is_string(itemVal)) {
		//if global.recollectionWeap[itemVal] >= 1 {
			recollectionUpgrade = global.Weap[itemVal] + 1;
		//}
	}
	
	//show_debug_message("upgrade: " + string(recollectionUpgrade))
	
	scr_Stat_Item_Extra_Stats(_stacks);
	
	
	itemGroup = string_letters(itemVal);
	itemNum = string_digits(itemVal);

	if is_string(itemVal) {
    
	    if itemGroup = "A" {
	        tempNum = 1;
			spriteSize = 0.5;
	    }
	    if itemGroup = "B" {
	        tempNum = 2;
			spriteSize = 0.5;
	    }
	    if itemGroup = "C" {
	        tempNum = 3;
			spriteSize = 0.5;
	    }
	    if itemGroup = "D" {
	        tempNum = 4;
			spriteSize = 0.5;
	    }
	    if itemGroup = "E" {
	        tempNum = 5;
			spriteSize = 0.5;
	    }
	    if itemGroup = "F" {
	        tempNum = 6;
	    }
	    if itemGroup = "G" {
	        tempNum = 7;
	    }
	    if itemGroup = "H" {
	        tempNum = 8;
	    }
		if itemGroup = "I" {
	        tempNum = 9;
	    }
	    if itemGroup = "J" {
	        tempNum = 10;
	    }
	    if itemGroup = "K" {
	        tempNum = 11;
	    }
		if itemGroup = "L" {
	        tempNum = 12;
	    }
	    if itemGroup = "M" {
	        tempNum = 13;
			spriteSize = 0.5;
	    }
		if itemGroup = "N" {
	        tempNum = 14;
	    }
		if itemGroup = "OA" {
	        tempNum = 15;
	    }
		if itemGroup = "OB" {
	        tempNum = 16;
	    }
		if itemGroup = "OC" {
	        tempNum = 17;
	    }
		if itemGroup = "P" {
	        tempNum = 18;
	    }
		if itemGroup = "Q" {
	        tempNum = 19;
	    }
	    if itemGroup = "R" {
	        tempNum = 20;
	    }
		if itemGroup = "S" {
	        tempNum = 21;
	    }
		if itemGroup = "T" {
	        tempNum = 22;
	    }
		if itemGroup = "U" {
	        tempNum = 23;
	    }
		if itemGroup = "V" {
	        tempNum = 24;
	    }
		if itemGroup = "W" {
	        tempNum = 25;
	    }
		if itemGroup = "XA" {
	        tempNum = 26;
	    }
		if itemGroup = "XB" {
	        tempNum = 27;
	    }
		if itemGroup = "XC" {
	        tempNum = 28;
	    }
		spriteSize = 0.5;
	}

	itemSpr = spr_Strength_Up_Item;
	spriteSize = 0.5;


	if variable_struct_exists(global.item_stats, string(itemVal)) {
		current_item_stats = variable_struct_get(global.item_stats, string(itemVal))
	
		if variable_struct_exists(current_item_stats, "recollectionSprite") {
			itemSpr = asset_get_index(current_item_stats.recollectionSprite)
			if itemSpr = -1 {
				itemSpr = spr_Soul_Shot_Art;	
			}
		}
	}
}