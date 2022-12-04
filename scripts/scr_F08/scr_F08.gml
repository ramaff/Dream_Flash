/// Location: State Power Up
function scr_F08() {

	if global.F[8] > 0 {
		
		/*
		global.soulstrength++;
		global.soulvitality++;
		global.soulessence++;
		global.souldexterity++;
		global.soulperception++;
		global.soulstate++;
		*/
		
		var statup = 0; 
		repeat(global.F[8]) {
			statup = 1 + irandom(4);

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
		
			scr_Stat_Up_Indication(statup)
		}
			
			/*
		var statup = 1 + irandom(4);

		if statup = 1 {
			global.soulstrength++;
		}
		if statup = 2 {
			global.soulvitality++;
		}
		if statup = 3 {
			global.soulessence++;
		}
		if statup = 4 {
			global.souldexterity++;
		}
		if statup = 5 {
			global.soulperception++;
		}
		*/
	}


}
