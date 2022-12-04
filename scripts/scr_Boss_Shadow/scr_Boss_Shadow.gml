function scr_Boss_Shadow(shadow_size = 0.2, shadow_y_offset = 0, shadow_x_offset = 0) {

	draw_sprite_ext(spr_Boss_Shadow,0,x,y+shadow_y_offset+bossHeight,shadow_size * (1.2 - (bossHeight / 1200)),shadow_size * (1.2 - (bossHeight / 1200)),0,c_white,(0.5 - (bossHeight/2000)));

}
