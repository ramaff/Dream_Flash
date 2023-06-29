scr_Minion_Reload();

with (obj_Boss_Parent) {
    for(i = 0; i <= 49; i++) {
        if bossweaken[i] = 0 {
            bossweaken[i] = 4;
            bossweakentime[i] = 180;
            break;
        }
    }	
}

rattling = 150;
	
alarm[2] = 1;
