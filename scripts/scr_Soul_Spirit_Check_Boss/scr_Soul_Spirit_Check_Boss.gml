function scr_Soul_Spirit_Check_Boss() {
	if other.bossid.object_index = obj_Masked_Loathing_Spirit {
	    if soulSpiritHits = 0 {
	        global.soulloathing += 2;
	    } else {
	        global.soulloathing += 0.125;
	    }
	    soulSpiritHits++;
		scr_Stat_Up_Indication(10);
	}
	if other.bossid.object_index = obj_Masked_Paranoia_Spirit {
	    if soulSpiritHits = 0 {
	        global.soulparanoia += 2;
	    } else {
	        global.soulparanoia += 0.125;
	    }
	    soulSpiritHits++;
		scr_Stat_Up_Indication(11);
	}
	if other.bossid.object_index = obj_Masked_Despair_Spirit {
	    if soulSpiritHits = 0 {
	        global.souldespair += 2;
	    } else {
	        global.souldespair += 0.125;
	    }
	    soulSpiritHits++;
		scr_Stat_Up_Indication(12);
	}



}
