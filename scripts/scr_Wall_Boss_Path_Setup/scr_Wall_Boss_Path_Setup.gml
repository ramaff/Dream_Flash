function scr_Wall_Boss_Path_Setup() {
	bossPath = Medium_Wall_Crawl_A;

	if global.roomSizeX > 1024 {
	    bossPath = Wall_Crawl_64;
	}
	if global.roomSizeX > 1088 {
	    bossPath = Wall_Crawl_128;
	}
	if global.roomSizeX > 1152 {
	    bossPath = Wall_Crawl_192;
	}
	if global.roomSizeX > 1216 {
	    bossPath = Wall_Crawl_256;
	}
	if global.roomSizeX > 1280 {
	    bossPath = Wall_Crawl_320;
	}
	if global.roomSizeX > 1344 {
	    bossPath = Wall_Crawl_384;
	}
	if global.roomSizeX > 1408 {
	    bossPath = Wall_Crawl_448;
	}
	if global.roomSizeX > 1472 {
	    bossPath = Wall_Crawl_512;
	}

	bossPath = Wall_Path;

	global.wallPath = path_add();
	path_set_kind(global.wallPath, 1);

	var sizeadd = 0;

	sizeadd = ((global.roomSizeX - 1024) / 2) - 16;

	path_add_point(global.wallPath, 2528 + sizeadd, 2048, 100);
	path_add_point(global.wallPath, 2480 + sizeadd, 1984, 100);
	path_add_point(global.wallPath, 2112, 1616 - sizeadd, 100);
	path_add_point(global.wallPath, 2048, 1568 - sizeadd, 100);
	path_add_point(global.wallPath, 1984, 1616 - sizeadd, 100);
	path_add_point(global.wallPath, 1616 - sizeadd, 1984, 100);

	path_add_point(global.wallPath, 1568 - sizeadd, 2048, 100);

	path_add_point(global.wallPath, 1616 - sizeadd, 1984, 100);
	path_add_point(global.wallPath, 1984, 1616 - sizeadd, 100);
	path_add_point(global.wallPath, 2048, 1568 - sizeadd, 100);
	path_add_point(global.wallPath, 2112, 1616 - sizeadd, 100);
	path_add_point(global.wallPath, 2480 + sizeadd, 1984, 100);
	path_add_point(global.wallPath, 2528 + sizeadd, 2048, 100);

	bossPath = global.wallPath;

	//bossPath = Wall_Crawl_512;

	//bossPath = Wall_Crawl_128;

	path_start(bossPath,bossmovespeed,path_action_continue,true)
	
	image_angle = direction + 180;

	if direction <= 90 || direction > 270 {
		image_angle = direction;
	}
	//path_start(bossPath,bossmovespeed,path_action_reverse,true)



}
