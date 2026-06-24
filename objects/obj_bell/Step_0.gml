/// @description Insert description here
// You can write your code in this editor

if !instance_exists(boss_parent) {
	image_xscale -= 0.02;
	image_yscale -= 0.02;
	if image_xscale < 0 {
		instance_destroy()
		exit;
	}
}

scr_wall_bounce_v2()

scr_Soul_Outside_Check()
