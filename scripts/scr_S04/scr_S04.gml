/// Location: Heart Loss Event
function scr_S04() {
	
    
	if global.S[4] > 0 {
			
		var hct = 1;
		repeat(global.S[4]) {
			Soul_Hearts_Control.heart[global.currentheart + hct, 2] = 51;
			Soul_Hearts_Control.heart[global.currentheart + hct, 3] = 20;
			Soul_Hearts_Control.heart[global.currentheart + hct, 4] = 20;
			global.totalhearts++;
			hct++;
			
			scr_Current_Heart_Stats();
		}
			
	}


}
