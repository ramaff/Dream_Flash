path_speed = global.itemFieldSpeed[itemOrbit];

//baseDepth = -1;

//scr_Room_Depth(0);

if distance_to_object(obj_Astral_Indicator) < 15 {
	
	if InputPressed(INPUT_VERB.SHOOT) || InputPressed(INPUT_VERB.WARP) {
		event_user(0);	
	}
	
    scr_Item_Recollection_Cloud(undefined, stacks);
}

