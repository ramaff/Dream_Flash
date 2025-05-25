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

var _remaining_time = max(shot_stats.Shot_Life_Span - shot_stats.Shot_Exist_Time, alarm[0])

if _remaining_time < 10 {
	shot_stats.Shot_Size -= shot_stats.Shot_Size / _remaining_time
	shot_stats.Shot_Size = clamp(shot_stats.Shot_Size, 0.01, 2)
	image_xscale = shot_stats.Shot_Size;
	image_yscale = shot_stats.Shot_Size;
} 

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale, image_angle,c_white,image_alpha);



