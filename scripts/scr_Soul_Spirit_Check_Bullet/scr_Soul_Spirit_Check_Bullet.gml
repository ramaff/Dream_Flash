function scr_Soul_Spirit_Check_Bullet(_borigin) {

	if instance_exists(_borigin) {
	    if _borigin = obj_Masked_Loathing_Spirit {
	        if soulSpiritHits = 0 {
	            global.soulloathing += 2;
	        } else {
	            global.soulloathing += 0.125;
	        }
			scr_Stat_Up_Indication(10);
	    }
	    if _borigin = obj_Masked_Paranoia_Spirit {
	        if soulSpiritHits = 0 {
	            global.soulparanoia += 2;
	        } else {
	            global.soulparanoia += 0.125;
	        }
			scr_Stat_Up_Indication(11);
	    }
	    if _borigin = obj_Masked_Despair_Spirit {
	        if soulSpiritHits = 0 {
	            global.souldespair += 2;
	        } else {
	            global.souldespair += 0.125;
	        }
			scr_Stat_Up_Indication(12);
	    }
		soulSpiritHits++;
	}



}
