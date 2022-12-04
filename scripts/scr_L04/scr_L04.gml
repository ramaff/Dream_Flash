/// Location: Heart Loss Event in Heart Control
function scr_L04() {
	var statup = 0;
	
	if global.L[4] > 0 {
		repeat(global.L[4]) {
			statup = 1 + irandom(5);

			if statup = 1 {
				global.soulstrength += 2;
			}
			if statup = 2 {
				global.soulvitality += 2;
			}
			if statup = 3 {
				global.soulessence += 2;
			}
			if statup = 4 {
				global.souldexterity += 2;
			}
			if statup = 5 {
				global.soulperception += 2;
			}
			if statup = 6 {
				global.soulstate += 2;
			}
		
			scr_Stat_Up_Indication(statup)
		}
	}
	


}
