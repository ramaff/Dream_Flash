// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Assign_Memory(){
	recollectionString = "You cannot remember";
	recollectionSprite = spr_Recollection_Unknown_Weapon_Icon;
	recollectionPower = -999;
	recollectionEssence = -999;
	recollectionRecharge = -999;
	recollectionSpeed = -999;
	recollectionLifespan = -999;
	recollectionAccuracy = -999;
	recollectionExtraStats = "????";
	recollectionDescription = "????"
	recollectionCount = 0;
	recollectionComplexity = "Low";

	recollectionChamp = 0;
	recollectionPalette = spr_Wall_Watcher_Palette;

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
		recollectionPaletteIndex[v] = v;
	}

	if global.recollectCategory = "Items" {
	recollectionSprite = spr_Recollection_Unknown_Weapon_Icon;
	}
	if global.recollectCategory = "Bosses" {
	recollectionSprite = spr_Recollection_Unknown_Boss_Icon;
	}
	if global.recollectCategory = "State" {
	recollectionSprite = spr_Recollection_State_Icon;
	}
	scr_Memory_Info_Bank();
	//draw_text(x,y, recollectionString);

	if is_string(itemVal) {
	    itemNum = string_digits(itemVal);
	    itemGroup = string_letters(itemVal);
	    tempNum = 0;
    
	    if itemGroup = "A" {
	        tempNum = 1;
	    }
	    if itemGroup = "B" {
	        tempNum = 2;
	    }
	    if itemGroup = "C" {
	        tempNum = 3;
	    }
	    if itemGroup = "D" {
	        tempNum = 4;
	    }
	    if itemGroup = "E" {
	        tempNum = 5;
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
	    if itemGroup = "J" {
	        tempNum = 9;
	    }
	    if itemGroup = "K" {
	        tempNum = 10;
	    }
	    if itemGroup = "M" {
	        tempNum = 11;
	    }
	    if itemGroup = "R" {
	        tempNum = 12;
	    }
    
		image_index = tempNum;
	} else {
	}

	if global.recollectCategory = "State" {
			recoNum = string_digits(itemVal);
			recollectionCount = global.recollectionState[recoNum];
		}
	
		if global.recollectCategory = "Information" {
			recoNum = string_digits(itemVal);
			if recoNum > 6 {
				recoNum = recoNum - 6;	
			}
		}
}