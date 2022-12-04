function scr_Wall_Sweep_Path_Setup() {
	bossPath = Medium_Wall_Sweep_A;

	if global.roomSizeX > 1024 {
	    bossPath = Wall_Sweep_64;
	}
	if global.roomSizeX > 1088 {
	    bossPath = Wall_Sweep_128;
	}
	if global.roomSizeX > 1152 {
	    bossPath = Wall_Sweep_192;
	}
	if global.roomSizeX > 1216 {
	    bossPath = Wall_Sweep_256;
	}
	if global.roomSizeX > 1280 {
	    bossPath = Wall_Sweep_320;
	}


	global.wallPath = path_add();
	path_set_kind(global.wallPath, 1);

	var sizeadd = 0;

	sizeadd = ((global.roomSizeX - 1024) / 2);

	path_add_point(global.wallPath, 2528 + sizeadd, 2048, 100);
	path_add_point(global.wallPath, 2480 + sizeadd, 2000, 100);
	path_add_point(global.wallPath, 2384 + sizeadd / 2, 1936, 150);
	path_add_point(global.wallPath, 2304 + sizeadd / 2, 1792 - sizeadd / 2, 100);
	path_add_point(global.wallPath, 2160, 1712 - sizeadd / 2, 150);
	path_add_point(global.wallPath, 2096, 1616 - sizeadd, 100);

	path_add_point(global.wallPath, 2048, 1568 - sizeadd, 100);

	path_add_point(global.wallPath, 2000, 1616 - sizeadd, 100);
	path_add_point(global.wallPath, 1936, 1712 - sizeadd / 2, 150);
	path_add_point(global.wallPath, 1792 - sizeadd / 2, 1792 - sizeadd / 2, 100);
	path_add_point(global.wallPath, 1712 - sizeadd / 2, 1936, 150);
	path_add_point(global.wallPath, 1616 - sizeadd, 2000, 100);

	path_add_point(global.wallPath, 1568 - sizeadd, 2048, 100);

	path_add_point(global.wallPath, 1616 - sizeadd, 2000, 100);
	path_add_point(global.wallPath, 1712 - sizeadd / 2, 1936, 150);
	path_add_point(global.wallPath, 1792 - sizeadd / 2, 1792 - sizeadd / 2, 100);
	path_add_point(global.wallPath, 1936, 1712 - sizeadd / 2, 150);
	path_add_point(global.wallPath, 2000, 1616 - sizeadd, 100);

	path_add_point(global.wallPath, 2048, 1568 - sizeadd, 100);

	path_add_point(global.wallPath, 2096, 1616 - sizeadd, 100);
	path_add_point(global.wallPath, 2160, 1712 - sizeadd / 2, 150);
	path_add_point(global.wallPath, 2304 + sizeadd / 2, 1792 - sizeadd / 2, 100);
	path_add_point(global.wallPath, 2384 + sizeadd / 2, 1936, 150);
	path_add_point(global.wallPath, 2480 + sizeadd, 2000, 100);
	path_add_point(global.wallPath, 2528 + sizeadd, 2048, 100);

	bossPath = global.wallPath;


	path_start(bossPath,bossmovespeed,path_action_continue,1)
	
	image_angle = direction + 180;

	if direction <= 90 || direction > 270 {
		image_angle = direction;
	}



}
