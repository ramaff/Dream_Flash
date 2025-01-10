function scr_Memory_Info_Bank(_item = false) {
	recollectionSize = 1;
	if is_string(itemVal) {
	    recoNum = string_digits(itemVal);
	    recoGroup = string_letters(itemVal);
    
	    if recoGroup = "Boss" {
	        recollectionCount = global.recollectionBoss[recoNum];
	    }
    
	    if recoGroup = "A" {
	        recollectionCount = global.recollectionA[recoNum];
	    }
	    if recoGroup = "B" {
	        recollectionCount = global.recollectionB[recoNum];
	    }
	    if recoGroup = "C" {
	        recollectionCount = global.recollectionC[recoNum];
	    }
	    if recoGroup = "D" {
	        recollectionCount = global.recollectionD[recoNum];
	    }
	    if recoGroup = "E" {
	        recollectionCount = global.recollectionE[recoNum];
	    }
	    if recoGroup = "F" {
	        recollectionCount = global.recollectionF[recoNum];
	    }
	    if recoGroup = "G" {
	        recollectionCount = global.recollectionG[recoNum];
	    }
	    if recoGroup = "H" {
	        recollectionCount = global.recollectionH[recoNum];
	    }
		if recoGroup = "I" {
	        recollectionCount = global.recollectionI[recoNum];
	    }
	    if recoGroup = "J" {
	        recollectionCount = global.recollectionJ[recoNum];
	    }
	    if recoGroup = "K" {
	        recollectionCount = global.recollectionK[recoNum];
	    }
		if recoGroup = "L" {
	        recollectionCount = global.recollectionL[recoNum];
	    }
	    if recoGroup = "M" {
	        recollectionCount = global.recollectionM[recoNum];
	    }
		if recoGroup = "N" {
	        recollectionCount = global.recollectionN[recoNum];
	    }
		if recoGroup = "OA" {
	        recollectionCount = global.recollectionOA[recoNum];
	    }
		if recoGroup = "OB" {
	        recollectionCount = global.recollectionOB[recoNum];
	    }
		if recoGroup = "OC" {
	        recollectionCount = global.recollectionOC[recoNum];
	    }
		if recoGroup = "P" {
	        recollectionCount = global.recollectionP[recoNum];
	    }
	    if recoGroup = "Q" {
	        recollectionCount = global.recollectionQ[recoNum];
	    }
	    if recoGroup = "R" {
	        recollectionCount = global.recollectionR[recoNum];
	    }
		if recoGroup = "S" {
	        recollectionCount = global.recollectionS[recoNum];
	    }
		if recoGroup = "T" {
	        recollectionCount = global.recollectionT[recoNum];
	    }
		if recoGroup = "U" {
	        recollectionCount = global.recollectionU[recoNum];
	    }
		if recoGroup = "W" {
	        recollectionCount = global.recollectionW[recoNum];
	    }
		if recoGroup = "V" {
	        recollectionCount = global.recollectionV[recoNum];
	    }
		if recoGroup = "XA" {
	        recollectionCount = global.recollectionXA[recoNum];
	    }
		if recoGroup = "XB" {
	        recollectionCount = global.recollectionXB[recoNum];
	    }
		if recoGroup = "XC" {
	        recollectionCount = global.recollectionXC[recoNum];
	    }
	} else {
	    recollectionCount = global.recollectionWeap[itemVal];
	}
	
	scr_Weapon_Memory(_item);
	scr_Item_Memory(_item);
	scr_Boss_Memory();
	
	scr_State_Memory();
	scr_Information_Memory();




}
