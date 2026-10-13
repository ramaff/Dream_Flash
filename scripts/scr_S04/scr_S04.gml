/// Location: Heart Loss Event
function scr_S04() {
	
    
	if global.S[4] > 0 {
			
		repeat(global.S[4]) {
			scr_Add_New_Heart(HEART_TYPE.COPING, 20);
		}
			
	}


}
