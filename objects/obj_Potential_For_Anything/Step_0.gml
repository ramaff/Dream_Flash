/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_Potential_For_Anything) {
	instance_destroy();	
}

var price = 0;
shop = 0;
itemVal = "00"

if distance_to_object(obj_Astral_Indicator) < 15 {
	
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
	    recollectionString = scr_Item_Pool_Names(other.pool);
	    priceString = "";
	    recollectionUpgrade = 0;
		recollectionDescription = "";
		shop = 0;
	}
}

image_xscale = 0.5;
image_yscale = 0.5;

//y = starty + scr_Wave(-20, 20, 2, 0);

if point_distance(x, y, obj_Astral_Indicator.x, obj_Astral_Indicator.y) < ITEM_HOVER_RANGE {
	if InputPressed(INPUT_VERB.SHOOT) {
		event_perform(ev_mouse, ev_left_press)
	}
	if InputPressed(INPUT_VERB.WARP) {
		event_perform(ev_mouse, ev_left_press)
	}
}
