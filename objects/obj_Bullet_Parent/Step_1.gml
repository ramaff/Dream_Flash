	
if bulletfade = 0 {
	exit;
}

	
if alarm[0] <= 15 {
	sizeF -= 0.066;
	bulletpower = 0;
		
	var tsize = bulletsize * sizeF;
	
	image_xscale = tsize;
	image_yscale = tsize;
} 