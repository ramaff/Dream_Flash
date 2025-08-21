// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Lobbing_Draw(){
	var height = shot_stats.Shot_Height;
	var fall_speed = shot_stats.Shot_Fall_Speed;

	var wobble = shot_stats.Shot_Lobbing_Wobble
	wobble = scr_Wave(-wobble, wobble, 2, 0);

	if shot_stats.Shot_Lobbing = true {
	
		var shadow_size = shot_stats.Shot_Size * 1.5 * (1.2 - (height / 200));
		shot_stats.Shot_Height -= fall_speed + wobble
		shot_stats.Shot_Fall_Speed += shot_stats.Shot_Gravity
	
		y += fall_speed
	
		if height - fall_speed < 0 {
			shot_stats.Shot_Fall_Speed = -1 * fall_speed;	
		}
		draw_sprite_ext(spr_Bullet_Shadow,0,x,y+height,shadow_size,shadow_size,0,c_white,0.5);
	} else if shot_stats.Shot_Lobbing >= 1 {
		draw_sprite_ext(spr_Bullet_Shadow,0,x,y+shot_stats.Shot_Height,shot_stats.Shot_Size * 1.5 * (1.2 - (shot_stats.Shot_Height / 200)),shot_stats.Shot_Size * 1.5 * (1.2 - (shot_stats.Shot_Height / 200)),0,c_white,image_alpha * (0.5 - (shot_stats.Shot_Height/150)));
	}

	if shot_stats.Shot_Lobbing_Tilt != 0 {
		var _mirror = 1;
		if hspeed < 0 {
			_mirror = -1;	
		}
		image_angle -= fall_speed * shot_stats.Shot_Lobbing_Tilt * _mirror;
		image_angle -= wobble * shot_stats.Shot_Lobbing_Tilt * _mirror;
	}
}