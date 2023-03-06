function scr_Boss_Jump_Setup_v2(dir = scr_Soul_Point(), startSpeed = 0, maxSpeed = 0) {
	dashSpeed = startSpeed;
	maxDashSpeed = maxSpeed;
	dashDirection = dir;

	jumpDirection = "Up";
	bossHeight = 0;
	
	state = states.jumping;
	
	scr_Hop_Distance_Calc(maxSpeed);


}
