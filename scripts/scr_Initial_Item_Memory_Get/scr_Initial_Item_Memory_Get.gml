// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Initial_Item_Memory_Get(){
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
		if global.recollectionWeap[itemVal] >= 1 {
			recollectionUpgrade = global.Weap[itemVal] + 1;
		}
	}
	
	//show_debug_message("upgrade: " + string(recollectionUpgrade))
	
	scr_Stat_Item_Extra_Stats();
}