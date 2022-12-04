/// Location: Heart Loss Event
function scr_T01() {
	
	/*if heart[global.currentheart,2] >= 51 and heart[global.currentheart,2] <= 52 {
		exit;	
	} */
	
	//heart[global.currentheart,2] = 0;
	// global.totalhearts -= 1;
    
	if global.T[1] > 0 {
			
		var hct = 1;
		repeat(global.T[1]) {
			Soul_Hearts_Control.heart[global.currentheart + hct, 2] = 51;
			Soul_Hearts_Control.heart[global.currentheart + hct, 3] = 20;
			Soul_Hearts_Control.heart[global.currentheart + hct, 4] = 20;
			global.totalhearts++;
			hct++;
			
			scr_Current_Heart_Stats();
		}
			
	    //global.totalhearts++;
	}


}
