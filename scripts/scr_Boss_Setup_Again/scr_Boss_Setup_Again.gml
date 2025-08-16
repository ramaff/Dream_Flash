function scr_Boss_Setup_Again() {
	for(i = 0; i <= global.maxRooms; i++) {

	    if global.floor[i,0] = "Boss" || global.floor[i,0] = "Super Boss" {
	        global.floor[i,7] = scr_Boss_Choose(i, 0); // Boss Type or Item Type
	        global.floor[i,8] = global.champ; // Boss Champ or Second Item
	        global.floor[i,9] = global.boost; // Boss Boost or Third Item
	        global.floor[i,10] = global.difficultyReward
	        if global.floor[i,9] = 2 {
	            //global.floor[i,3] += 64;
	        }
	        roomUp = irandom(global.floor[i,10]);
	        repeat(floor(roomUp / 4)) {
	            if roomUp >= 4 {
	                //global.floor[i,3] += 64;
	            }
	            roomUp -= 4
	        }
	    }

	}



}
