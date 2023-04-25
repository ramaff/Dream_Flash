    //scr_Room_Depth(0.05);
	
	if bulletfade = 0 {
		//timeL = 100;	
		exit;
	}
	
	//var timeL = alarm[0];
	//var sizeF = 1;
	
	if alarm[0] = 15 {
		scr_Lightning_To_Target(spr_Boss_Sky_Lightning,x,y-64,x,y-864,9,64,image_blend, 30, true)
	} 
	if alarm[0] <= 4 {
		image_alpha -= image_alpha / max(1, alarm[0]);	
	}