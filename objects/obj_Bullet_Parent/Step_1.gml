    //scr_Room_Depth(0.05);
	
	
	if bulletfade = 0 {
		//timeL = 100;	
		exit;
	}
	
	//var timeL = alarm[0];
	//var sizeF = 1;
	
	if alarm[0] <= 15 {
		sizeF -= 0.066;
		bulletpower = 0;
		
		var tsize = bulletsize * sizeF;
	
		image_xscale = tsize;
		image_yscale = tsize;
	} 
	