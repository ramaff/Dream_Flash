function scr_Soul_Stat_Refresh() {
	sfirerate = sfirerate / (1 + (global.J[7] * 0.4) + (global.U[4] * 0.1));
	
	size = 0.5;
	image_xscale = 0.5;
	image_yscale = 0.5;
	
	image_speed = 0;
	
		soulSizeX = size;
	soulSizeY = size;

	speed = 0;

	Orbit = 80 + irandom(100);
		Angle = 0;
		CenterX = obj_Soul_Parent.x;
		CenterY = obj_Soul_Parent.y;

	if global.U[4] > 0 {

		direction = 45 + 90 * irandom(3);
		speed = smovementspeed;

	}
	
	alarm[6] = 15;


}
