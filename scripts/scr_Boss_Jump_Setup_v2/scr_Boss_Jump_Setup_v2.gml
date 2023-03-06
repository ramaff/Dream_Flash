// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Jump_Setup_v2(startSpeed = 0, maxSpeed = 0, xx = x, yy = y) {

	var dir = scr_Soul_Point(xx, yy);

	dashSpeed = startSpeed;
	maxDashSpeed = maxSpeed;
	dashDirection = dir;

	jumpDirection = "Up";
	bossHeight = 0;
	
	state = states.jumping;
	
	scr_Hop_Distance_Calc_v2(maxSpeed);

}