function scr_Save() {
	scr_Save_Options();

	scr_Save_Run();
	
	var _save_file = "savegame.sav"
	var _backup_save_file = "savegame_backup.sav"

	scr_Handle_File_Backup(_save_file, _backup_save_file)

	ini_open(_backup_save_file)

	for(i = 0; i <= 999; i++) {
	    ini_write_real("Recollection", "recollectionWeap" + string(i), global.recollectionWeap[i]);
	}
	for(i = 0; i <= 199; i++) {
	    ini_write_real("Recollection", "recollectionBoss" + string(i), global.recollectionBoss[i]);
	}
	for(i = 0; i <= 19; i++) {
	    ini_write_real("Recollection", "recollectionState" + string(i), global.recollectionState[i]);
	}
	
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
	    ini_write_real("Recollection", "recollectionQ" + string(i), global.recollectionQ[i]);
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
	
	scr_Copy_Backup_to_Save(_save_file, _backup_save_file)
	
	//scr_Delete_File_Backup("savegame")

	//scr_Steam_Save();





}
