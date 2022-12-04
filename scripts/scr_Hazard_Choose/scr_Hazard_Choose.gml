function scr_Hazard_Choose(argument0, argument1) {
	var roomNum = argument0;
	var eType = argument1;
	var roomDifficulty = 1.5 + (4 * (global.currentchapter - 1)) + ((2.5 * roomNum) / 10) + (global.souldespair / 8) + (global.soulloathing / 10);

	var hReturn = 0;

	if global.currentchapter = 2 {
		roomDifficulty += ((1 * roomNum) / 10);
	}
	if global.currentchapter = 3 {
		roomDifficulty += ((2 * roomNum) / 10);
	}

	if roomDifficulty > 30 {
	    roomDifficulty = 30;
	}

	if roomNum = 16 and global.currentchapter < 3 {
		roomDifficulty += 2;
	}

	if eType = bg_Dungeon_Tiles {
		hReturn = choose(0,0,0,0,0,0,1,2,3);
	}
	if eType = bg_Flash_Dungeon_Tiles {
		hReturn = choose(0,0,0,0,0,0,1,2,3);
	}
	hReturn = choose(0,0,0,0,0,0,1,2,3);

	return hReturn;


}
