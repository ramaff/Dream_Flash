// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: heart loss event

function scr_B03_Add(){
	//heart[global.currentheart,2] = 0;
	// global.totalhearts -= 1;
    
	if global.B[3] > 0 {
	    Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 103;
	    Soul_Hearts_Control.heart[global.currentheart + 1, 3] = 20 + 20 * global.B[3];
		Soul_Hearts_Control.heart[global.currentheart + 1, 4] = 20 + 20 * global.B[3];
		
		global.totalhearts++;
			
		scr_Current_Heart_Stats();
			
	}
}