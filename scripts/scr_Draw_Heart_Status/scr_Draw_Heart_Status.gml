function scr_Draw_Heart_Status() {
	
	 var _scale = 0.5 / Camera_Control.view_zoom;
	
	var hpercent = 100 * (Soul_Hearts_Control.heart[slot,3] / Soul_Hearts_Control.heart[slot,4]);
	var currHeart = Soul_Hearts_Control.heart[slot,2];
	var surv = frac(Soul_Hearts_Control.heart[slot,2]);

	scr_Draw_Heart(currHeart, hpercent)
    
	if global.B[4] > 0 and surv > 0 {
		draw_sprite_ext(spr_Heart_Halo,0,x,y-15, _scale, _scale,0,c_white,1);
	}


}
