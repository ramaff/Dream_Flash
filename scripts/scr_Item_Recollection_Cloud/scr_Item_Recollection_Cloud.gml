function scr_Item_Recollection_Cloud(time = 1, _stacks = 1) {

	if global.cloudalpha < 1.2 {
		global.cloudalpha += 0.18;
	}

	//draw_sprite_ext(spr_Recollection_Hover_Cloud,0,x,y,1,1,0,c_white,global.recoalpha);
	
	if instance_exists(cloud) and time < 20 {
		with(cloud) {
			alarm[0] = time;
			//image_alpha = global.recoalpha
		}
	} else {
		if time < 20 {
			with(obj_In_Game_Recollection_Cloud) {
				if alarm[0] < 20 {
					instance_destroy()	
				}
			}
		}
	
		with instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_In_Game_Recollection_Cloud) {
			recollectionPriceType = other.recollectionPriceType;
			recollectionString = other.recollectionString;
			priceString = other.priceString;
			recollectionUpgrade = other.recollectionUpgrade;
			recollectionExtraStats = other.recollectionExtraStats;
			recollectionDescription = other.recollectionDescription;
			recollectionCount = other.recollectionCount;
			shop = other.shop;
			stacks = _stacks;

			image_alpha = global.cloudalpha;
		
			alarm[0] = time;
		
			if time > 20 {
				leave = 1;	
			}
		
			image_index = 1;
			other.cloud = id;
		}
	}
	
	scr_Soul_Item_Think();

}
