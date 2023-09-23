function scr_K03_To_K08() {
	// Location Chapter Change

	if global.K[3] > 0 {
	    global.soulstrength += 2 * global.K[3];
	    obj_Soul_Parent.sstrength += 2 * global.K[3];
		scr_Stat_Up_Indication(1);
	}
	if global.K[4] > 0 {
	    global.soulvitality += 2 * global.K[4];
	    obj_Soul_Parent.svitality += 2 * global.K[4];
		scr_Stat_Up_Indication(2);
	}
	if global.K[5] > 0 {
	    global.soulessence += 2 * global.K[5];
	    obj_Soul_Parent.sessence += 2 * global.K[5];
		scr_Stat_Up_Indication(3);
	}
	if global.K[6] > 0 {
	    global.souldexterity += 2 * global.K[6];
	    obj_Soul_Parent.sdexterity += 2 * global.K[6];
		scr_Stat_Up_Indication(4);
	}
	if global.K[7] > 0 {
	    global.soulperception += 2 * global.K[7];
	    obj_Soul_Parent.sperception += 2 * global.K[7];
		scr_Stat_Up_Indication(5);
	}
	if global.K[8] > 0 {
	    global.soulstate += 2 * global.K[8];
	    obj_Soul_Parent.sstate += 2 * global.K[8];
		scr_Stat_Up_Indication(6);
	}



}
