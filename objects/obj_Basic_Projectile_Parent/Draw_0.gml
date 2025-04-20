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

/*if shot_stats.Shot_Ground = true {
	shot_stats.Shot_Lobbing = false;
	shot_stats.Shot_Height = 0;
	shot_stats.Shot_Fall_Speed = 0;
	shot_stats.Shot_Gravity = 0;
	shot_stats.Shot_Lobbing = false;
} */

var _remaining_time = shot_stats.Shot_Life_Span - shot_stats.Shot_Exist_Time

if _remaining_time < 10 {
	shot_stats.Shot_Size -= shot_stats.Shot_Size / _remaining_time
	image_xscale -= image_xscale / _remaining_time;
	image_yscale -= image_yscale / _remaining_time;
} 

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale, image_angle,c_white,image_alpha);



