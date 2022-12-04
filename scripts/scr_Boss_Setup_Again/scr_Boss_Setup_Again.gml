function scr_Boss_Setup_Again() {
	for(i = 0; i <= global.maxRooms; i++) {

	    if Floor_Layout_Control.Flash[i,0] = "Boss" || Floor_Layout_Control.Flash[i,0] = "Super Boss" {
	        Floor_Layout_Control.Flash[i,7] = scr_Boss_Choose(i, 0); // Boss Type or Item Type
	        Floor_Layout_Control.Flash[i,8] = global.champ; // Boss Champ or Second Item
	        Floor_Layout_Control.Flash[i,9] = global.boost; // Boss Boost or Third Item
	        Floor_Layout_Control.Flash[i,10] = global.difficultyReward
	        if Floor_Layout_Control.Flash[i,9] = 2 {
	            Floor_Layout_Control.Flash[i,3] += 64;
	        }
	        roomUp = irandom(Floor_Layout_Control.Flash[i,10]);
	        repeat(floor(roomUp / 4)) {
	            if roomUp >= 4 {
	                Floor_Layout_Control.Flash[i,3] += 64;
	            }
	            roomUp -= 4
	        }
	    }

	}



}
