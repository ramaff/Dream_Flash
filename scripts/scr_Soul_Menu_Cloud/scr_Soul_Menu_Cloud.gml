function scr_Soul_Menu_Cloud() {
	//draw_self();
	draw_sprite(spr_Recollection_Hover_Cloud,0,x,y);

	recollectionString = "You cannot remember";
	if shop = 1 {
	    priceString = string(flashcost);
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

	scr_Memory_Info_Bank();

	if !(is_string(itemVal)) {
		if global.recollectionWeap[itemVal] >= 1 {
			recollectionUpgrade = global.Weap[itemVal] + 1;
		}
	}
	
	var camX = camera_get_view_x(view) + (camera_get_view_width(view) / 2);

	if x > camX { 
		recollectionMirror = 1;
	} else {
		recollectionMirror = 0;	
	}

	with instance_create(x,y,obj_Recollection_Cloud) {
		depth -= 1;
	    recollectionMirror = other.recollectionMirror;
	    recollectionString = other.recollectionString;
	    priceString = other.priceString;
	    recollectionUpgrade = other.recollectionUpgrade;
		recollectionExtraStats = other.recollectionExtraStats;
		shop = other.shop;
	}



}
