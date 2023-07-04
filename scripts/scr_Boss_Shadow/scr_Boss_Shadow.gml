function scr_Boss_Shadow(_shadow_size = 0.2, _shadow_y_offset = 0, _shadow_x_offset = 0, _version = 1) {

	if _version = 1 {
		draw_sprite_ext(spr_Boss_Shadow,0,x,y+_shadow_y_offset+bossHeight,_shadow_size * (1.2 - (bossHeight / 1200)),_shadow_size * (1.2 - (bossHeight / 1200)),0,c_white,(0.5 - (bossHeight/2000)));
	} else {
		draw_sprite_ext(spr_Boss_Shadow,0,x,y+_shadow_y_offset+boss_height,_shadow_size * (1.2 - (boss_height / 1200)),_shadow_size * (1.2 - (boss_height / 1200)),0,c_white,(0.5 - (boss_height / 2000)));
	}

}
