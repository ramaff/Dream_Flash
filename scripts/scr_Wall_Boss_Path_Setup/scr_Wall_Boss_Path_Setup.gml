function scr_Wall_Boss_Path_Setup() {
	bossPath = Wall_Path;

	var wallPath = path_add();
	path_set_kind(wallPath, 1);

	var sizeadd = 0;

	sizeadd = ((roomSizeX - 1024) / 2) - 16;

	path_add_point(wallPath, 2528 - 848 + sizeadd, 2048 - 1248, 100);
	path_add_point(wallPath, 2480 - 848 + sizeadd, 1984 - 1248, 100);
	path_add_point(wallPath, 2112 - 848, 1616 - sizeadd - 1248, 100);
	path_add_point(wallPath, 2048 - 848, 1568 - sizeadd - 1248, 100);
	path_add_point(wallPath, 1984 - 848, 1616 - sizeadd - 1248, 100);
	path_add_point(wallPath, 1616 - 848 - sizeadd, 1984 - 1248, 100);

	path_add_point(wallPath, 1568 - 848 - sizeadd, 2048 - 1248, 100);

	path_add_point(wallPath, 1616 - 848 - sizeadd, 1984 - 1248, 100);
	path_add_point(wallPath, 1984 - 848, 1616 - sizeadd - 1248, 100);
	path_add_point(wallPath, 2048 - 848, 1568 - sizeadd - 1248, 100);
	path_add_point(wallPath, 2112 - 848, 1616 - sizeadd - 1248, 100);
	path_add_point(wallPath, 2480 - 848 + sizeadd, 1984 - 1248, 100);
	path_add_point(wallPath, 2528 - 848 + sizeadd, 2048 - 1248, 100);

	bossPath = wallPath;

	path_start(bossPath,bossmovespeed,path_action_continue,true)
	
	image_angle = direction + 180;

	if direction <= 90 || direction > 270 {
		image_angle = direction;
	}

}
