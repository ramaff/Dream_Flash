function scr_V02() {
	// Boss Beat
	// Variable set up in Item Variable Setup

	if global.V[2] > 0 {
	
		var odds = 30 + (global.V2activate * 20);
		var chance = irandom(15 + (global.V[2] * 15) + global.totalFieldBeat);
	
		if chance >= odds {
		
			global.V2activate++;
			
			scr_Add_New_Heart(1, 20);
		
		}
	
	}


}
