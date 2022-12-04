
if cloudT >= 1 {
    //global.gameTutorial = currentT;
    currentT++;
}

if currentT > maxT {
	global.spiritTutorial = 1;
	//global.recollectionStateUnlocked = 1;
	
    instance_destroy();
    scr_Save();
}

