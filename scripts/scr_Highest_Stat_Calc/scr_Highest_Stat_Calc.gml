function scr_Highest_Stat_Calc() {
	highstat = "none";

	if global.soulstrength > 0 {
		highstat = "str";	
	}
	if global.soulvitality >= global.soulstrength {
		highstat = "vit";	
	}
	if global.soulessence >= global.soulvitality and global.soulessence >= global.soulstrength {
		highstat = "ess";	
	}
	if global.souldexterity >= global.soulessence and global.souldexterity >= global.soulvitality and global.souldexterity >= global.soulstrength {
		highstat = "dex";	
	}
	if global.soulperception >= global.souldexterity and global.soulperception >= global.soulessence and global.soulperception >= global.soulvitality and global.soulperception >= global.soulstrength {
		highstat = "per";	
	}
	if global.soulstate >= global.soulperception and global.soulstate >= global.souldexterity and global.soulstate >= global.soulessence and global.soulstate >= global.soulvitality and global.soulstate >= global.soulstrength {
		highstat = "sta";	
	}

	return highstat;


}
