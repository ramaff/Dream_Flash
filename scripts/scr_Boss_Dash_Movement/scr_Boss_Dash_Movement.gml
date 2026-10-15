function scr_Boss_Dash_Movement(dSpeedUpTime, dSpeedDownTime) {
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
