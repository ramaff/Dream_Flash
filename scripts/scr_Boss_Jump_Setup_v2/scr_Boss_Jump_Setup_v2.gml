function scr_Boss_Jump_Setup_v2(startSpeed = 0, maxSpeed = 0, xx = x, yy = y) {
	var dir = scr_Soul_Point(xx, yy);
	dash_speed = startSpeed;
	max_dash_speed = maxSpeed;
	dash_direction = dir;

	jump_direction = "Up";
	boss_height = 0;
	
	state = states.jumping;
	
	scr_Hop_Distance_Calc_v2(maxSpeed);


}
