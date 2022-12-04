function scr_Boss_Jump_Setup(dir = scr_Soul_Point(), startSpeed = 0, maxSpeed = 0) {
	bossDashSpeed = startSpeed;
	bossMaxDashSpeed = maxSpeed;
	bossDashDirection = dir;

	jumpDirection = "Up";
	jumpHeight = 0;
	
	state = states.jumping;
	
	scr_Hop_Distance_Calc(maxSpeed);


}
