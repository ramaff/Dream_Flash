function scr_Sort_Hearts() {
	    var preHeartEmpty = 0;   
    
	    var temphearttype = 0;
	    var temphearthealth = 0;
	    var tempheartmaxhealth = 0;
		var tempheartdecay = 0;
		
		var i = 0;
		
		if global.OC[2] > 0 {
			
			if heart[0,2] != 52 {
				for (i = 13; i >= 0; i--) {
				
					if heart[i,2] != 52 {
						temphearttype = heart[i,2];
			            temphearthealth = heart[i,3];
			            tempheartmaxhealth = heart[i,4];
						tempheartdecay = heart[i,5];
				
						heart[i + 1,2] = temphearttype;
			            heart[i + 1,3] = temphearthealth;
			            heart[i + 1,4] = tempheartmaxhealth;
						heart[i + 1,5] = tempheartdecay;
					}
				
				}
			
				heart[0,2] = 52;
				heart[0,3] = 20;
				heart[0,4] = 20;
				heart[0,5] = 0;
			}
			
		}
		
		for (i = 0; i < 15; i++) {
    
	        if heart[i,2] = 0 {
	            preHeartEmpty = 1;
	            temphearttype = heart[i+1,2];
	            temphearthealth = heart[i+1,3];
	            tempheartmaxhealth = heart[i+1,4];
				tempheartdecay = heart[i+1,5];
	        }
			
	        if preHeartEmpty = 1 {
	            heart[i,2] = temphearttype;
	            heart[i,3] = temphearthealth;
	            heart[i,4] = tempheartmaxhealth;
				heart[i,5] = tempheartdecay;
	            heart[i+1,2] = 0;
	            obj_Soul_Parent.shealth = heart[global.currentheart,3];
	            obj_Soul_Parent.smaxhealth = heart[global.currentheart,4];
	            preHeartEmpty = 0;
	            temphearttype = 0;
	            temphearthealth = 0;
	            tempheartmaxhealth = 0;
	        }
			
			if heart[i,2] = 52 and i != 0 {
				heart[i,2] = 0;
				heart[i,3] = 0;
				heart[i,4] = 0;
				heart[i,5] = 0;
			}
    
    
	    }

}
