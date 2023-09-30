function scr_Persistent_Stat_Check() {
	global.chaptertime++;

	if instance_exists(obj_Boss_Parent) {
		global.glasstime++;	
	}

	if global.souldespair > 40 {
		global.souldespair = 40;	
	}
	if global.soulparanoia > 40 {
		global.soulparanoia = 40;	
	}
	if global.soulloathing > 40 {
		global.soulloathing = 40;	
	}

	if global.soulhope > 40 {
		global.soulhope = 40;	
	}
	if global.soulbliss > 40 {
		global.soulbliss = 40;	
	}
	if global.soulvanity > 40 {
		global.soulvanity = 40;	
	}

	if global.soulstrength > 120 {
		global.soulstrength = 120;	
	}
	if global.soulvitality > 120 {
		global.soulvitality = 120;	
	}
	if global.soulessence > 120 {
		global.soulessence = 120;	
	}
	if global.souldexterity > 120 {
		global.souldexterity = 120;	
	}
	if global.soulperception > 120 {
		global.soulperception = 120;	
	}
	if global.soulstate > 120 {
		global.soulstate = 120;	
	}
	



}
