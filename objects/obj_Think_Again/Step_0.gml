/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_Item_Parent) {
	instance_destroy();	
}

if distance_to_object(obj_Astral_Indicator) < 15 {
	var price = ceil((5 + (global.currentchapter * 5)) / ((3 + global.N[2]) / 4));
	
	if price < 1 {
		price = 1;	
	}
	
    with instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_In_Game_Recollection_Cloud) {
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
	    recollectionString = "Think Again";
	    priceString = string(price);
	    recollectionUpgrade = 0;
		recollectionExtraStats = "Reroll entire field";
		shop = 1;
	}
}

image_xscale = 0.5;
image_yscale = 0.5;

y = starty + scr_Wave(-20, 20, 2, 0);