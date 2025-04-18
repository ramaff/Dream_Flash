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

var fdist = 50;
var tdist = 50 / shot_stats.Shot_Init_Speed;
var etime = shot_stats.Shot_Life_Span - alarm[0];
var edist = shot_stats.Shot_Init_Speed * etime;

var sSize = 1 - ((fdist - edist) / fdist);

sSize = clamp(sSize, 0, 1)

if shot_stats.Shot_Init_Grow = 0 {
	shot_stats.Shot_Size_Relation = 1;
	sSize = 1;
} 

if ((shot_stats.Shot_Life_Span - alarm[0]) <= (tdist)) and (shot_stats.Shot_Life_Span > (tdist)) and (shot_stats.Shot_Form_Show = 1) {
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * sSize,image_yscale * sSize,	image_angle,c_white,image_alpha/* * sSize*/);
} else {
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * shot_stats.Shot_Size_Relation,image_yscale * shot_stats.Shot_Size_Relation, image_angle,c_white,image_alpha);
}


