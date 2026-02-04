function scr_V03() {
	// Room Change Variables

	// New: Change Floor object is the location now (Specifically alarm 1)

	if global.V[3] > 0 {
	
		var bstat = 1 + irandom(5);
		var sstat = 1 + irandom(2);
		var sstat2 = 1 + irandom(2);
	
		if bstat = 1 {
			global.soulstrength += 4;
			scr_Stat_Up_Indication(1);
		}
		if bstat = 2 {
			global.soulvitality += 4;
			scr_Stat_Up_Indication(2);
		}
		if bstat = 3 {
			global.soulessence += 4;
			scr_Stat_Up_Indication(3);
		}
		if bstat = 4 {
			global.souldexterity += 4;
			scr_Stat_Up_Indication(4);
		}
		if bstat = 5 {
			global.soulperception += 4;
			scr_Stat_Up_Indication(5);
		}
		if bstat = 6 {
			global.soulstate += 4;
			scr_Stat_Up_Indication(6);
		}
	
		if sstat = 1 {
			global.soulhope += 4;
			scr_Stat_Up_Indication(7);
		}
		if sstat = 2 {
			global.soulbliss += 4;
			scr_Stat_Up_Indication(8);
		}
		if sstat = 3 {
			global.soulassurance += 4;
			scr_Stat_Up_Indication(9);
		}
	
		if sstat2 = 1 {
			global.soulloathing += 4;
			scr_Stat_Up_Indication(10);
		}
		if sstat2 = 2 {
			global.soulparanoia += 4;
			scr_Stat_Up_Indication(11);
		}
		if sstat2 = 3 {
			global.souldespair += 4;
			scr_Stat_Up_Indication(12);
		}
	
	}


}
