//scr_Weapon_Direction_List();

//Print_DF(sprite_get_name(sprite_index))

if !is_struct(shot_stats) {
	exit;	
}

if shot_stats.Shot_Orbital_Type = 1 {
    image_angle = shot_stats.Shot_Orbit_Angle + 90;
}

if shot_stats.Shot_Ground = true {
	shot_stats.Shot_Lobbing = false;
	shot_stats.Shot_Height = 0;
	shot_stats.Shot_Fall_Speed = 0;
	shot_stats.Shot_Gravity = 0;
	shot_stats.Shot_Lobbing = 0;
}

var height = shot_stats.Shot_Height;
var fall_speed = shot_stats.Shot_Fall_Speed;

var wobble = shot_stats.Shot_Lobbing_Wobble
wobble = scr_Wave(-wobble, wobble, 2, 0);

if shot_stats.Shot_Lobbing = true {
	
	var shadow_size = shot_stats.Shot_Size * 1.5 * (1.2 - (height / 200));
	shot_stats.Shot_Height -= fall_speed + wobble
	shot_stats.Shot_Fall_Speed += shot_stats.Shot_Gravity
	
	y += fall_speed;
	
	/*if scr_Chance(15) {
		show_debug_message("shadow_size: " + string(shadow_size) + ", " + sprite_get_name(sprite_index) + ", height: " + string(height) + ", shot_stats.Shot_Size" + string(shot_stats.Shot_Size));
		show_debug_message("xsize: " + string(image_xscale))
	} */
	
	if height - fall_speed < 0 {
		shot_stats.Shot_Fall_Speed = -1 * fall_speed;	
	}
	//var shadow_transparency = 0.5;
	draw_sprite_ext(spr_Bullet_Shadow,0,x,y+height,shadow_size,shadow_size,0,c_white,0.5);
} else if shot_stats.Shot_Lobbing >= 1 {
	draw_sprite_ext(spr_Bullet_Shadow,0,x,y+shot_stats.Shot_Bounce_Y,shot_stats.Shot_Size * 1.5 * (1.2 - (shot_stats.Shot_Bounce_Y / 200)),shot_stats.Shot_Size * 1.5 * (1.2 - (shot_stats.Shot_Bounce_Y / 200)),0,c_white,image_alpha * (0.5 - (shot_stats.Shot_Bounce_Y/150)));
}

if global.A[14] > 0 and shot_stats.Shot_Origin = obj_Soul_Parent {
	var _size = 10 * sqrt(sqrt(sprite_get_width(sprite_index) * sprite_get_height(sprite_index))) * shot_stats.Shot_Size
	_size = _size / 80
    draw_sprite_ext(spr_Aura_Strike_Aura,0,x,y,_size, _size,0,c_white,ceil(image_alpha));
}

if shot_stats.Shot_Aura = 1 and image_alpha > 0 {
    draw_sprite_ext(asset_get_index(shot_stats.Shot_Aura_Sprite),0,x,y,1,1,0,c_white,1);
}

var fdist = 50;
var tdist = 50 / shot_stats.Shot_Init_Speed;
var etime = shot_stats.Shot_Life_Span - shot_stats.Shot_Timer;
var edist = shot_stats.Shot_Init_Speed * etime;

var sSize = 1 - ((fdist - edist) / fdist);

if sSize >= 1 {
	sSize = 1;	
}

if sSize < 0 {
	sSize = 0;	
}

var angle = image_angle;
if shot_stats.Shot_Lobbing_Tilt != 0 {
	angle -= fall_speed * shot_stats.Shot_Lobbing_Tilt;
	angle -= wobble * shot_stats.Shot_Lobbing_Tilt;
}

//Print_DF(shot_stats.Shot_Init_Grow)

if shot_stats.Shot_Init_Grow = 0 {
	shot_stats.Shot_Size_Relation = 1;
	sSize = 1;
} 

if ((shot_stats.Shot_Life_Span - shot_stats.Shot_Timer) <= (tdist)) and (shot_stats.Shot_Life_Span > (tdist)) and (shot_stats.Shot_Form_Show = 1) {
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * sSize,image_yscale * sSize,angle,c_white,image_alpha/* * sSize*/);
} else {
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * shot_stats.Shot_Size_Relation,image_yscale * shot_stats.Shot_Size_Relation,angle,c_white,image_alpha);
}

if shot_stats.Shot_Miracle > 0 {
	draw_sprite_ext(spr_Heart_Halo,image_index,x,y - (24 * image_yscale),image_xscale * shot_stats.Shot_Size_Relation,image_yscale * shot_stats.Shot_Size_Relation,image_angle,c_white,image_alpha);	
	draw_sprite_ext(spr_Miracle_Aura,0,x,y,0.8,0.8,0,c_white,1);
}

