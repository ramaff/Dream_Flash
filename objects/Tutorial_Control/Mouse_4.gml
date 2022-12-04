
if cloudT >= 1 {
    global.gameTutorial = currentT;
    currentT++;
}

if currentT > maxT {
    instance_destroy();
    scr_Save();
}

