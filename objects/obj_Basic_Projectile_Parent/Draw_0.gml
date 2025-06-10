//scr_Weapon_Direction_List();

//Print_DF(sprite_get_name(sprite_index))

if !is_struct(shot_stats) {
	exit;	
}

var _i;
var _script_count = array_length(shot_stats.Shot_Draw_Scripts)
for(_i = 0; _i < _script_count; _i++) {
	script_execute(shot_stats.Shot_Draw_Scripts[_i])	
}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale, image_angle,c_white,image_alpha);



