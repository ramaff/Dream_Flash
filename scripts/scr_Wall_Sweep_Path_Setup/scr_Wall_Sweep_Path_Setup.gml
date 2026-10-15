function scr_Wall_Sweep_Path_Setup() {

	var wallPath = path_add();
	path_set_kind(wallPath, 1);

	var sizeadd = 0;

	sizeadd = ((roomSizeX - 1024) / 2);

	path_add_point(wallPath, 2528 + sizeadd, 2048, 100);
	path_add_point(wallPath, 2480 + sizeadd, 2000, 100);
	path_add_point(wallPath, 2384 + sizeadd / 2, 1936, 150);
	path_add_point(wallPath, 2304 + sizeadd / 2, 1792 - sizeadd / 2, 100);
	path_add_point(wallPath, 2160, 1712 - sizeadd / 2, 150);
	path_add_point(wallPath, 2096, 1616 - sizeadd, 100);

	path_add_point(wallPath, 2048, 1568 - sizeadd, 100);

	path_add_point(wallPath, 2000, 1616 - sizeadd, 100);
	path_add_point(wallPath, 1936, 1712 - sizeadd / 2, 150);
	path_add_point(wallPath, 1792 - sizeadd / 2, 1792 - sizeadd / 2, 100);
	path_add_point(wallPath, 1712 - sizeadd / 2, 1936, 150);
	path_add_point(wallPath, 1616 - sizeadd, 2000, 100);

	path_add_point(wallPath, 1568 - sizeadd, 2048, 100);

	path_add_point(wallPath, 1616 - sizeadd, 2000, 100);
	path_add_point(wallPath, 1712 - sizeadd / 2, 1936, 150);
	path_add_point(wallPath, 1792 - sizeadd / 2, 1792 - sizeadd / 2, 100);
	path_add_point(wallPath, 1936, 1712 - sizeadd / 2, 150);
	path_add_point(wallPath, 2000, 1616 - sizeadd, 100);

	path_add_point(wallPath, 2048, 1568 - sizeadd, 100);

	path_add_point(wallPath, 2096, 1616 - sizeadd, 100);
	path_add_point(wallPath, 2160, 1712 - sizeadd / 2, 150);
	path_add_point(wallPath, 2304 + sizeadd / 2, 1792 - sizeadd / 2, 100);
	path_add_point(wallPath, 2384 + sizeadd / 2, 1936, 150);
	path_add_point(wallPath, 2480 + sizeadd, 2000, 100);
	path_add_point(wallPath, 2528 + sizeadd, 2048, 100);

	bossPath = wallPath;


	path_start(bossPath,bossmovespeed,path_action_continue,1)
	
	image_angle = direction + 180;

	if direction <= 90 || direction > 270 {
		image_angle = direction;
	}
}
