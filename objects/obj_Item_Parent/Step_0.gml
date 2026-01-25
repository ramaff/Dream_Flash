path_speed = global.itemFieldSpeed[itemOrbit];

//baseDepth = -1;

//scr_Room_Depth(0);

var _selected_add = 0;

if instance_exists(cloud) {
	_selected_add = 50;	
}

if point_distance(x, y, obj_Astral_Indicator.x, obj_Astral_Indicator.y) < (ITEM_HOVER_RANGE + _selected_add) {
	
	if InputPressed(INPUT_VERB.SHOOT) || InputPressed(INPUT_VERB.WARP) {
		event_user(0);	
	}
	
	scr_Item_Recollection_Cloud(60, stacks);
	
	spriteSize = lerp(spriteSize, 0.625, 0.1);
	image_xscale = spriteSize;
	image_yscale = spriteSize;
} else {
	if instance_exists(cloud) {
		with(cloud) {
			instance_destroy();
		}
	}
	spriteSize = lerp(spriteSize, 0.5, 0.1);
	image_xscale = spriteSize;
	image_yscale = spriteSize;
}

