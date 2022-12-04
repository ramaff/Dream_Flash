var dist = 0;

if mouse_x < (x + 40) and mouse_x > (x) and mouse_y < (y + 100) and mouse_y > (y) {
	dist = 1;
}

if dist = 1 and vis = 1 {
	
	x += 24;
	y += 50;
  
    scr_Soul_Stat_Cloud();
	
	x -= 24;
	y -= 50;
    //scr_Bottom_Cloud_Info();
}

