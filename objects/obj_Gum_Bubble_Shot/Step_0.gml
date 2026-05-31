/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _bullets_amt = array_length(captured_bullets)

var _i;
var _xx = 0;
var _yy = 0;
var _dist = 0;
var _ang = 0;

for(_i = 0; _i < _bullets_amt; _i++) {
	_ang += 60;
	_dist = sqrt(20 * _i)
	_xx = lengthdir_x(_dist, _ang) - 2 + random(4);
	_yy = lengthdir_y(_dist, _ang) - 2 + random(4);
	if instance_exists(captured_bullets[_i]) {
		captured_bullets[_i].x = x + _xx;	
		captured_bullets[_i].y = y + _yy;	
	}
}

var _wave_dur = (alarm[0] + 5) / 30;
var _wave_amt = shot_stats.Shot_Size / 15;
image_xscale = shot_stats.Shot_Size + scr_Wave(-_wave_amt, _wave_amt, _wave_dur, 0);
image_yscale = shot_stats.Shot_Size + scr_Wave(-_wave_amt, _wave_amt, _wave_dur, _wave_dur / 2);

shot_stats.Shot_X_Maintain = lengthdir_x(shot_stats.Shot_Forward_Amount * image_xscale * 2.5, direction);
shot_stats.Shot_Y_Maintain = lengthdir_y(shot_stats.Shot_Forward_Amount * image_yscale * 2.5, direction);

if InputReleased(INPUT_VERB.SHOOT) || mouse_check_button_released(mb_left) {
	shot_stats.Shot_Mouse_Maintain = 0;
	shot_stats.Shot_Soul_Maintain = 0;
	speed = shot_stats.Shot_Speed;
	
	_i = array_get_index(shot_stats.Shot_Step_Scripts, scr_Shot_Soul_Maintain)
	if _i != -1 {
		array_delete(shot_stats.Shot_Step_Scripts, _i, 1)
	}
	_i = array_get_index(shot_stats.Shot_Step_Scripts, scr_Shot_Mouse_Maintain)
	if _i != -1 {
		array_delete(shot_stats.Shot_Step_Scripts, _i, 1)
	}
}