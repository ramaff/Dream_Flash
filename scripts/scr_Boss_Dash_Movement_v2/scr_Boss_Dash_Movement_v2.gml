function scr_Boss_Dash_Movement_v2(dSpeedUpTime = 0, dSpeedDownTime = 0) {

	if patternCount > (patternCountMax - dSpeedUpTime) {
		dashSpeed += maxDashSpeed / dSpeedUpTime;	
		if dashSpeed > maxDashSpeed {
			dashSpeed = maxDashSpeed;	
		}
	}
	if patternCount < dSpeedDownTime {
		dashSpeed -= maxDashSpeed / (dSpeedDownTime - 1);	
		if dashSpeed < 0 {
			dashSpeed = 0;	
		}
	}


}
