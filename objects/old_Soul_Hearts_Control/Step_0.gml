if !instance_exists(obj_Soul_Parent) {
    exit;
}

if !window_has_focus() {
	exit;	
}

    if global.totalhearts >= 16 {
        global.totalhearts = 16;
    }


scr_Current_Heart_Stats();

if global.totalhearts > 0 {
	heart[global.currentheart,3] = obj_Soul_Parent.shealth;
	heart[global.currentheart,4] = ((global.currenthearthp * ((10 + obj_Soul_Parent.shpfactor) / 10)) + obj_Soul_Parent.shpadd);
}

var i = 0;

if global.totalhearts >= 1 {
	if (heart[global.currentheart,3]) <= 0 {
	
		if heart[global.currentheart,2] = 6 {
			if global.H06refill < 0 {
				global.H06refill = 0;	
			}
			global.H06refill += (3 / global.soulheartboost);
		}
		
		//if heart[global.currentheart,2] != 103 and heart[global.currentheart,2] != 6 {
		//	scr_Heart_Loss_Event();
		//}
		if obj_Soul_Parent.soulDeathFadeSpeed = 0 {
	        instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_Broken_Heart);
	    }
		
	    global.totalhearts -= 1;
		var heartLostType = heart[global.currentheart,2];
		heart[global.currentheart,2] = 0;
		global.currentheart -= 1;
		
		scr_Heart_Loss_Event(global.currentheart, heartLostType);
		scr_L04();
	
	    scr_Current_Heart_Stats();
		
		global.currentheart = global.totalhearts - 1;
		if global.currentheart < 0 {
			global.currentheart = 0;	
		}

	
		global.currenthearthp = ((global.currenthearthp * ((10 + obj_Soul_Parent.shpfactor) / 10)) + obj_Soul_Parent.shpadd);
	
		}
	for(i = 0; i < 16; i++) {
		
		if i != global.currentheart {
			if heart[i,3] <= 0 and heart[i,2] != 0 {
			
			
				if heart[global.currentheart,2] = 6 {
					if global.H06refill < 0 {
						global.H06refill = 0;	
					}
					global.H06refill += 3;
				}
			
				if obj_Soul_Parent.soulDeathFadeSpeed = 0 {
				    instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_Broken_Heart);
				}
    
				global.totalhearts -= 1;
				scr_L04();
				var heartLostType = heart[i,2];
				heart[i,2] = 0;
				
				scr_Heart_Loss_Event(i, heartLostType);
	
				scr_Current_Heart_Stats();
			
			}		
		}
	}
}

if global.totalhearts >= 1 {
    
    scr_Sort_Hearts();
    
    scr_One_Heart_Drop();
	
	//scr_V05();
	
    if global.currentheart < 0 {
		global.currentheart = 0;	
	}
	
    for (i = 0; i < 16; i++) {
		var heartHea = 20;
		var heartReg = 1;
		var heartType = heart[i,2]
		if heartType = 2 {
			heartReg = 3 * global.soulheartboost;	
		}
		if heartType = 4 {
			heartHea = 20 + (20 * global.soulheartboost);	
			heartReg = 0.5// * global.soulheartboost;
		}
		if heartType = 103 {
			heartHea = 40;
		}
		if heartType = 7 {
			heartHea = 60;	
		}
		if heartType = 14 {
			heartHea = 25;	
		}
		if heartType = 6 {
			heartHea = 10;	
			heartReg = 0.5// * global.soulheartboost;
		}
		if heartType = 52 {
			heartHea = 20 * global.OC[2];
		}
		
		heart[i,4] = ((heartHea * ((10 + obj_Soul_Parent.shpfactor) / 10)) + obj_Soul_Parent.shpadd);
		
        if heart[i,2] != 7 /*and heart[i,2] != 103*/ {
            if !scr_Room_Leavable() {
                heart[i,3] += obj_Soul_Parent.shealthregenfactor * heartReg * ((10 + obj_Soul_Parent.shealthregenadd) / 10) / 120;   
            } else {
                heart[i,3] += obj_Soul_Parent.shealthregenfactor * heartReg * ((10 + obj_Soul_Parent.shealthregenadd) / 10) * 5;   
            }
        }
		
		if heart[i,2] = 7 {
			if global.bosscount > 0 {
				heart[i,3] -= (1 / 1200) + (global.glasstime / 600000);   
			}
		}

		var healthcap = heart[i,4] - heart[i,5];
		if (heart[i,3] >= healthcap) {
	        heart[i,3] = healthcap;
	    }	
    }
    
    obj_Soul_Parent.shealth = heart[global.currentheart,3];
    obj_Soul_Parent.smaxhealth = heart[global.currentheart,4];   
	
	scr_H05();

}

if global.currentheart < 0 {
	scr_Delete_Run();
}