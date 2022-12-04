function scr_Boss_Dash_Movement(argument0, argument1) {
	dSpeedUpTime = argument0;
	dSpeedDownTime = argument1;

	if bossPatternCount > (bossPatternCountMax - dSpeedUpTime) {
		bossDashSpeed += bossMaxDashSpeed / dSpeedUpTime;	
		if bossDashSpeed > bossMaxDashSpeed {
			bossDashSpeed = bossMaxDashSpeed;	
		}
	}
	if bossPatternCount < dSpeedDownTime {
		bossDashSpeed -= bossMaxDashSpeed / (dSpeedDownTime - 1);	
		if bossDashSpeed < 0 {
			bossDashSpeed = 0;	
		}
	}


}
