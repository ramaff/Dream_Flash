function scr_Heart_Drop_Slot() {
	//Soul_Hearts_Control.heart[slot,1] = global.mouseheartslot;
	//tempheartslot = Soul_Hearts_Control.heart[slot,1]
	temphearttype = Soul_Hearts_Control.heart[slot,2]
	temphearthealth = Soul_Hearts_Control.heart[slot,3]
	tempheartmaxhealth = Soul_Hearts_Control.heart[slot,4]
	tempheartdecay = Soul_Hearts_Control.heart[slot,5]
	Soul_Hearts_Control.heart[slot,2] = global.mousehearttype;
	Soul_Hearts_Control.heart[slot,3] = global.mousehearthealth;
	Soul_Hearts_Control.heart[slot,4] = global.mouseheartmaxhealth;
	Soul_Hearts_Control.heart[slot,5] = global.mouseheartdecay;

	for (i = 0; i < 24; i++) {
	    if (Soul_Hearts_Control.heart[i,3] >= 0) and (Soul_Hearts_Control.heart[i,2] != 0) {
	        global.currentheart = Soul_Hearts_Control.heart[i,1] - 1;
	    }
	}

	obj_Soul_Parent.shealth = Soul_Hearts_Control.heart[global.currentheart,3];
	obj_Soul_Parent.smaxhealth = Soul_Hearts_Control.heart[global.currentheart,4];
	global.mouseheartslot = slot;
	global.mouseheartslot = 0;
	global.mousehearttype = temphearttype;
	global.mousehearthealth = temphearthealth;
	global.mouseheartmaxhealth = tempheartmaxhealth;
	global.mouseheartdecay = tempheartdecay;



}
