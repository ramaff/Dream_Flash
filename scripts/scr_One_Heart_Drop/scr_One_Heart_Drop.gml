function scr_One_Heart_Drop() {
	if global.mousehearttype != 0 and global.totalhearts = 1 {
    
	    Soul_Hearts_Control.heart[0,2] = global.mousehearttype;
	    Soul_Hearts_Control.heart[0,3] = global.mousehearthealth;
	    Soul_Hearts_Control.heart[0,4] = global.mouseheartmaxhealth;
		Soul_Hearts_Control.heart[0,5] = global.mouseheartdecay;
    
		var i = 0;
	    for (i = 0; i < 24; i++) {
	        if (Soul_Hearts_Control.heart[i,3] >= 0) and (Soul_Hearts_Control.heart[i,2] != 0) {
	            global.currentheart = Soul_Hearts_Control.heart[i,1] - 1;
	        }
	    }
    
	    obj_Soul_Parent.shealth = Soul_Hearts_Control.heart[global.currentheart,3];
	    obj_Soul_Parent.smaxhealth = Soul_Hearts_Control.heart[global.currentheart,4];
	    global.mouseheartslot = 0;
	    global.mousehearttype = 0;
	    global.mousehearthealth = 0;
	    global.mouseheartmaxhealth = 0;
		global.mouseheartdecat = 0;
	}



}
