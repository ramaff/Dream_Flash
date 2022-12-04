function scr_Save() {
	scr_Save_Options();

	scr_Save_Run();

	if (file_exists("savegame.sav"))
	{
	file_delete("savegame.sav");
	}

	ini_open("savegame.sav")

	for(i = 0; i <= 999; i++) {
	    ini_write_real("Recollection", "recollectionWeap" + string(i), global.recollectionWeap[i]);
	}
	for(i = 0; i <= 199; i++) {
	    ini_write_real("Recollection", "recollectionBoss" + string(i), global.recollectionBoss[i]);
	}
	for(i = 0; i <= 19; i++) {
	    ini_write_real("Recollection", "recollectionState" + string(i), global.recollectionState[i]);
	}
	ini_write_real("Recollection", "recollectionStateUnlocked", global.recollectionStateUnlocked);
	ini_write_real("Recollection", "stateTutorial", global.stateTutorial);
	ini_write_real("Recollection", "spiritTutorial", global.spiritTutorial);
	
	for(i = 0; i <= 49; i++) {
	    ini_write_real("Recollection", "recollectionA" + string(i), global.recollectionA[i]);
	    ini_write_real("Recollection", "recollectionB" + string(i), global.recollectionB[i]);
	    ini_write_real("Recollection", "recollectionC" + string(i), global.recollectionC[i]);
	    ini_write_real("Recollection", "recollectionD" + string(i), global.recollectionD[i]);
	    ini_write_real("Recollection", "recollectionE" + string(i), global.recollectionE[i]);
	    ini_write_real("Recollection", "recollectionF" + string(i), global.recollectionF[i]);
	    ini_write_real("Recollection", "recollectionG" + string(i), global.recollectionG[i]);
	    ini_write_real("Recollection", "recollectionH" + string(i), global.recollectionH[i]);
		ini_write_real("Recollection", "recollectionI" + string(i), global.recollectionI[i]);
	    ini_write_real("Recollection", "recollectionJ" + string(i), global.recollectionJ[i]);
	    ini_write_real("Recollection", "recollectionK" + string(i), global.recollectionK[i]);
		ini_write_real("Recollection", "recollectionL" + string(i), global.recollectionL[i]);
	    ini_write_real("Recollection", "recollectionM" + string(i), global.recollectionM[i]);
		ini_write_real("Recollection", "recollectionN" + string(i), global.recollectionN[i]);
		ini_write_real("Recollection", "recollectionOA" + string(i), global.recollectionOA[i]);
		ini_write_real("Recollection", "recollectionOB" + string(i), global.recollectionOB[i]);
		ini_write_real("Recollection", "recollectionOC" + string(i), global.recollectionOC[i]);
		ini_write_real("Recollection", "recollectionP" + string(i), global.recollectionP[i]);
	    ini_write_real("Recollection", "recollectionR" + string(i), global.recollectionR[i]);
		ini_write_real("Recollection", "recollectionS" + string(i), global.recollectionS[i]);
		ini_write_real("Recollection", "recollectionT" + string(i), global.recollectionT[i]);
		ini_write_real("Recollection", "recollectionU" + string(i), global.recollectionU[i]);
		ini_write_real("Recollection", "recollectionV" + string(i), global.recollectionV[i]);
		ini_write_real("Recollection", "recollectionW" + string(i), global.recollectionW[i]);
		ini_write_real("Recollection", "recollectionXA" + string(i), global.recollectionXA[i]);
		ini_write_real("Recollection", "recollectionXB" + string(i), global.recollectionXB[i]);
		ini_write_real("Recollection", "recollectionXC" + string(i), global.recollectionXC[i]);
    
	    //ini_write_real("Recollection", "recollectionA" + string(i), global.recollectionA[i]);
	}

	ini_write_real("Recollection", "gameTutorial", global.gameTutorial);
	ini_write_real("Recollection", "gameSound", global.gameSound);
	ini_write_real("Recollection", "gameMusic", global.gameMusic);
	ini_write_real("Recollection", "gameFocusPause", global.gameFocusPause);
	ini_write_real("Recollection", "gameDamageDisplay", global.gameDamageDisplay);

	ini_close();

	//scr_Steam_Save();





}
