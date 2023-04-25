// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Lightning_To_Target(lightning_sprite = spr_Lightning_Streak, xst = x, yst = y, target_x = 0, target_y = 0, max_streaks = 20, streak_length = 64, streak_color = c_white, angle_variance = 90, fade_in = false){

	var true_max = max_streaks
	var lightning_alpha = 1;
	
	var aim_angle = point_direction(xst, yst, target_x, target_y);
	var dist = point_distance(xst, yst, target_x, target_y);
	while (dist > (streak_length + 6)) and max_streaks > 0 {
		if fade_in {
			lightning_alpha = (max_streaks) / true_max;
		}
		scr_Create_Lightning_Streak(xst, yst, aim_angle, streak_color, lightning_sprite, lightning_alpha)
				
		xst += lengthdir_x(streak_length, aim_angle)
		yst += lengthdir_y(streak_length, aim_angle)
		aim_angle = point_direction(xst, yst, target_x, target_y) - angle_variance + random(angle_variance * 2);
		dist = point_distance(xst, yst, target_x, target_y);
		max_streaks--;
	}
	
	if fade_in {
		lightning_alpha = (max_streaks) / true_max;
	}
	
	aim_angle = point_direction(xst, yst, target_x, target_y);
	scr_Create_Lightning_Streak(xst, yst, aim_angle, streak_color, lightning_sprite, lightning_alpha)

}