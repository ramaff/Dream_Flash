if instance_exists(target) {
    x = target.x;
    y = target.y;
	lightstrength = target.image_alpha;
	
	if target = obj_Soul_Parent {
		lightsize = 1;
	}
} else {
    instance_destroy();
}
/*
if ds_exists(light, ds_type_list) {
	light[| eLight.X] = x;
	light[| eLight.Y] = y;
}

//depth = -99;