function scr_Draw_Heart_Status(_heart, _scale, _xx = x, _yy = y, _alpha = 1) {
	
	
	var hpercent = 100 * (_heart.health / _heart.max_health);
	var currHeart = _heart.heart_id;
	var surv = _heart.survival_hits;

	scr_Draw_Heart(currHeart, hpercent, _scale, _xx, _yy, _alpha)
    
	if surv > 0 {
		draw_sprite_ext(spr_Heart_Halo,0,_xx,_yy-15, _scale, _scale,0,c_white,_alpha);
	}

}
