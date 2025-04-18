function scr_Weapon_GUI(_weapon_slot_info = Soul_Weapons_Control.weapon_slot_info) {
	
	var _i = 0;
	var _arr_len = array_length(_weapon_slot_info) - 1
	
	for(_i = _arr_len; _i >= 0; _i--) {
		var _weap_info = _weapon_slot_info[_i]
		draw_sprite_ext(spr_Weapon_Template,0,_weap_info.xx,_weap_info.yy,_weap_info.scale,_weap_info.scale,0,c_white,1);
		if _weap_info.weap != 0 {
			var _wspr = variable_struct_get(global.weapon_stats, _weap_info.weap).Recollection_Sprite
		
		    draw_sprite_ext(asset_get_index(_wspr),0,_weap_info.xx,_weap_info.yy,_weap_info.scale,_weap_info.scale,0,c_white,1);
		}
	}

}
