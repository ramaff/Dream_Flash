function scr_Load() {
	scr_Load_Options();

	//scr_Steam_Load();

	if (file_exists("savegame.sav")) {
	    ini_open("savegame.sav")
    
		global.recollectionWeap[1] = ini_read_real("Recollection","recollectionWeap" + string(1),2);
	    for(i = 0; i <= 999; i++) {
			if i != 1 {
	        global.recollectionWeap[i] = ini_read_real("Recollection","recollectionWeap" + string(i),0);
			}
	    }
	    for(i = 0; i <= 199; i++) {
	        global.recollectionBoss[i] = ini_read_real("Recollection","recollectionBoss" + string(i),0);
	    }
		for(i = 0; i <= 19; i++) {
	        global.recollectionState[i] = ini_read_real("Recollection","recollectionState" + string(i),0);
	    }
		global.recollectionStateUnlocked = ini_read_real("Recollection","recollectionStateUnlocked", 0);
		global.stateTutorial = ini_read_real("Recollection","stateTutorial", 0);
		global.spiritTutorial = ini_read_real("Recollection","spiritTutorial", 0);
		
	    for(i = 0; i <= 49; i++) {
	        global.recollectionA[i] = ini_read_real("Recollection","recollectionA" + string(i),0);
	        global.recollectionB[i] = ini_read_real("Recollection","recollectionB" + string(i),0);
	        global.recollectionC[i] = ini_read_real("Recollection","recollectionC" + string(i),0);
	        global.recollectionD[i] = ini_read_real("Recollection","recollectionD" + string(i),0);
	        global.recollectionE[i] = ini_read_real("Recollection","recollectionE" + string(i),0);
	        global.recollectionF[i] = ini_read_real("Recollection","recollectionF" + string(i),0);
	        global.recollectionG[i] = ini_read_real("Recollection","recollectionG" + string(i),0);
	        global.recollectionH[i] = ini_read_real("Recollection","recollectionH" + string(i),0);
			global.recollectionI[i] = ini_read_real("Recollection","recollectionI" + string(i),0);
	        global.recollectionJ[i] = ini_read_real("Recollection","recollectionJ" + string(i),0);
	        global.recollectionK[i] = ini_read_real("Recollection","recollectionK" + string(i),0);
			global.recollectionL[i] = ini_read_real("Recollection","recollectionL" + string(i),0);
	        global.recollectionM[i] = ini_read_real("Recollection","recollectionM" + string(i),0);
			global.recollectionN[i] = ini_read_real("Recollection","recollectionN" + string(i),0);
			global.recollectionOA[i] = ini_read_real("Recollection","recollectionOA" + string(i),0);
			global.recollectionOB[i] = ini_read_real("Recollection","recollectionOB" + string(i),0);
			global.recollectionOC[i] = ini_read_real("Recollection","recollectionOC" + string(i),0);
			global.recollectionP[i] = ini_read_real("Recollection","recollectionP" + string(i),0);
	        global.recollectionR[i] = ini_read_real("Recollection","recollectionR" + string(i),0);
			global.recollectionS[i] = ini_read_real("Recollection","recollectionS" + string(i),0);
			global.recollectionT[i] = ini_read_real("Recollection","recollectionT" + string(i),0);
			global.recollectionU[i] = ini_read_real("Recollection","recollectionU" + string(i),0);
			global.recollectionV[i] = ini_read_real("Recollection","recollectionV" + string(i),0);
			global.recollectionW[i] = ini_read_real("Recollection","recollectionW" + string(i),0);
			global.recollectionXA[i] = ini_read_real("Recollection","recollectionXA" + string(i),0);
			global.recollectionXB[i] = ini_read_real("Recollection","recollectionXB" + string(i),0);
			global.recollectionXC[i] = ini_read_real("Recollection","recollectionXC" + string(i),0);
	    }

	    ini_close();

	}



}
