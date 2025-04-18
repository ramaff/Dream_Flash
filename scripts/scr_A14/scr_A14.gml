function scr_A14() {

	var _dmg = (global.A[14]) * shot_stats.Shot_Power / 62.5;
	var _size = 10 * sqrt(sqrt(sprite_get_width(sprite_index) * sprite_get_height(sprite_index))) * shot_stats.Shot_Size
	with(obj_Boss_Parent) {
	    if distance_to_object(other) <= _size {
	        bosshealth -= _dmg;
	    }
	}

}

function scr_A14_Draw() {
	var _size = 10 * sqrt(sqrt(sprite_get_width(sprite_index) * sprite_get_height(sprite_index))) * shot_stats.Shot_Size
	_size = _size / 80
    draw_sprite_ext(spr_Aura_Strike_Aura,0,x,y,_size, _size,0,c_white,ceil(image_alpha));	
}
