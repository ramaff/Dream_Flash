function scr_A14_Size() {
	return sqrt(shot_stats.Shot_Power * 15) + (8 * sqrt(sqrt(sprite_get_width(sprite_index) * sprite_get_height(sprite_index))) * shot_stats.Shot_Size);
}

function scr_A14() {

	var _dmg = (global.A[14]) * shot_stats.Shot_Power / 120;
	var _size = scr_A14_Size()
	with(obj_Boss_Parent) {
	    if distance_to_object(other) <= _size {
	        bosshealth -= _dmg;
			if global.roomtime mod 10 = 0 {
				scr_setup_dmg_indicator(x,y, _dmg * 10, c_white);
			}
	    }
	}

}

function scr_A14_Draw() {
	var _size = scr_A14_Size()
	_size = _size / 80
    draw_sprite_ext(spr_Aura_Strike_Aura,0,x,y,_size, _size,0,c_white,ceil(image_alpha));	
}
