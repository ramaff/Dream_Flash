function scr_V02() {
	// Boss Beat
	// Variable set up in Item Variable Setup

	if global.V[2] > 0 {
	
		odds = 30 + (global.V2activate * 20);
		chance = irandom(15 + (global.V[2] * 15) + global.totalFieldBeat);
	
		if chance >= odds {
		
			global.V2activate++;
		
			Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 1
			global.totalhearts++;
			global.H[1]++;
		
		}
	
	}


}
