function scr_Item_Recollection_Cloud(time = 1, linger) {

	if global.recoalpha < 1 {
	    global.recoalpha += 0.15;
	}
	if global.recoalpha >= 1 {
		global.recoalpha = 1;	
	}
	if global.recoalpha <= 0.05 {
		global.recoalpha = 0.05;
	}

	draw_sprite_ext(spr_Recollection_Hover_Cloud,0,x,y,1,1,0,c_white,global.recoalpha);
	
	with instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_Recollection_Cloud) {
		recollectionPriceType = other.recollectionPriceType;
		recollectionString = other.recollectionString;
		priceString = other.priceString;
		recollectionUpgrade = other.recollectionUpgrade;
		recollectionExtraStats = other.recollectionExtraStats;
		shop = other.shop;
		
		alarm[0] = time;
		
		if time > 1 {
			leave = 1;	
		}
		
		image_index = 1;
	}
	
	scr_Soul_Item_Think();

}
