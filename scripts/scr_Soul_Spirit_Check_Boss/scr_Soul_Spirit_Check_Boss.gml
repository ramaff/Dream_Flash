function scr_Soul_Spirit_Check_Boss() {
	if other.bossid.object_index = obj_Masked_Loathing_Spirit {
	    if soulSpiritHits = 0 {
	        global.soulloathing += 3;
	    }
	    soulSpiritHits++;
	    global.soulloathing++;
		scr_Stat_Up_Indication(10);
	}
	if other.bossid.object_index = obj_Masked_Paranoia_Spirit {
	    if soulSpiritHits = 0 {
	        global.soulparanoia += 3;
	    }
	    soulSpiritHits++;
	    global.soulparanoia++;
		scr_Stat_Up_Indication(11);
	}
	if other.bossid.object_index = obj_Masked_Despair_Spirit {
	    if soulSpiritHits = 0 {
	        global.souldespair += 3;
	    }
	    soulSpiritHits++;
	    global.souldespair++;
		scr_Stat_Up_Indication(12);
	}



}
