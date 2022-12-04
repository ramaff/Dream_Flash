function scr_Heart_Pickup_Slot() {
	if global.currentheart >= 1 {
	    if Soul_Hearts_Control.heart[slot,2] != 0 {
	    global.mouseheartslot = slot;
	    global.mousehearttype = Soul_Hearts_Control.heart[slot,2];
	    global.mousehearthealth = Soul_Hearts_Control.heart[slot,3];
	    global.mouseheartmaxhealth = Soul_Hearts_Control.heart[slot,4];
		global.mouseheartdecay = Soul_Hearts_Control.heart[slot,5];
	    Soul_Hearts_Control.heart[slot,2] = 0;
	    //Soul_Hearts_Control.heart[slot,3] = 0;
	    //Soul_Hearts_Control.heart[slot,4] = 0;
		global.currentheart -= 1;
	    obj_Soul_Parent.shealth = Soul_Hearts_Control.heart[global.currentheart,3];
	    obj_Soul_Parent.smaxhealth = Soul_Hearts_Control.heart[global.currentheart,4];
    
	    //scr_Sort_Hearts();
	    }
	}



}
