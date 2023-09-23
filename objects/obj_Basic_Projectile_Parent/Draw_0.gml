//scr_Weapon_Direction_List();

if !is_struct(shot_stats) {
	exit;	
}

if shotorbitaltype = 1 {
    image_angle = shotAngle + 90;
}

var height = shot_stats.Shot_Height;
var fall_speed = shot_stats.Shot_Fall_Speed;

var wobble = shot_stats.Shot_Lobbing_Wobble
wobble = scr_Wave(-wobble, wobble, 2, 0);

if shot_stats.Shot_Lobbing = true {
	
	var shadow_size = shotsize * 1.5 * (1.2 - (height / 200));
	shot_stats.Shot_Height -= fall_speed + wobble
	shot_stats.Shot_Fall_Speed += shot_stats.Shot_Gravity
	
	y += fall_speed;
	
	/*if scr_Chance(15) {
		show_debug_message("shadow_size: " + string(shadow_size) + ", " + sprite_get_name(sprite_index) + ", height: " + string(height) + ", shotsize" + string(shotsize));
		show_debug_message("xsize: " + string(image_xscale))
	} */
	
	if height - fall_speed < 0 {
		shot_stats.Shot_Fall_Speed = -1 * fall_speed;	
	}
	//var shadow_transparency = 0.5;
	draw_sprite_ext(spr_Bullet_Shadow,0,x,y+height,shadow_size,shadow_size,0,c_white,0.5);
} else if shotlobbing >= 1 {
	draw_sprite_ext(spr_Bullet_Shadow,0,x,y+shotbounceY,shotsize * 1.5 * (1.2 - (shotbounceY / 200)),shotsize * 1.5 * (1.2 - (shotbounceY / 200)),0,c_white,image_alpha * (0.5 - (shotbounceY/150)));
}

if global.A[14] > 0 and shotorigin = obj_Soul_Parent {
	var _size = sqrt(sprite_get_width(sprite_index) * sprite_get_height(sprite_index)) * shotsize * 1.5
	_size = _size / 80
    draw_sprite_ext(spr_Aura_Strike_Aura,0,x,y,_size, _size,0,c_white,1);
}

if shotaura = 1 and image_alpha > 0 {
    draw_sprite_ext(shotaurasprite,0,x,y,1,1,0,c_white,1);
}

var fdist = 50;
var tdist = 50 / shotinitspeed;
var etime = shotlifespan - shottimer;
var edist = shotinitspeed * etime;

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
	shotSizeRelation = 1;
	sSize = 1;
} 

if ((shotlifespan - shottimer) <= (tdist)) and (shotlifespan > (tdist)) and (shotformshow = 1) {
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * sSize,image_yscale * sSize,angle,c_white,image_alpha/* * sSize*/);
} else {
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * shotSizeRelation,image_yscale * shotSizeRelation,angle,c_white,image_alpha);
}

if shotmiracle > 0 {
	draw_sprite_ext(spr_Heart_Halo,image_index,x,y - (24 * image_yscale),image_xscale * shotSizeRelation,image_yscale * shotSizeRelation,image_angle,c_white,image_alpha);	
	draw_sprite_ext(spr_Miracle_Aura,0,x,y,0.8,0.8,0,c_white,1);
}

//show_debug_message("string: " + string(sprite_get_name(sprite_index)))
//show_debug_message("alpha: " + string(image_alpha))
