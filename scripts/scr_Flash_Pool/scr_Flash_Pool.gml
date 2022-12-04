function scr_Flash_Pool() {

	var bossselect = 1 + irandom(17);
	global.champ = 0;
	global.boost = 0;
	difficulty = 0;

	if bossselect = 1
	{
	    difficulty = 1;
	    bossform = 1.1;
	    global.champ = 0 + irandom(3);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 2
	{
	    difficulty = 2;
	    bossform = 3.1;
	    global.champ = 0 + irandom(3);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 3
	{
	    difficulty = 1;
	    bossform = 5.1;
	    global.champ = 0 + irandom(4);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 4
	{
	    difficulty = 3;
	    bossform = 9.1;
	    global.champ = 0 + irandom(2);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 5
	{
	    difficulty = 2;
	    bossform = 12.1;
	    global.champ = 0 + irandom(3);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 6 {
	    difficulty = 4;
	    bossform = 14.1;
	    global.champ = 0 + irandom(3);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 7 {
	    difficulty = 6;
	    bossform = 10.1;
	    global.champ = 0 + irandom(2);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 8 {
	    difficulty = 9;
	    bossform = 21.1;
	    global.champ = 0 + irandom(1);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 9 {
	    difficulty = 9;
	    bossform = 15.1;
	    global.champ = 0 + irandom(1);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 10 {
	    difficulty = 4;
	    bossform = 18.1;
	    global.champ = 0 + irandom(1);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 11 {
	    difficulty = 2;
	    bossform = 16.1;
	    global.champ = 0 + irandom(1);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 12 {
	    difficulty = 3;
	    bossform = 64.1;
	    global.champ = 0 + irandom(0);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 13 {
	    difficulty = 7;
	    bossform = 65.1;
	    global.champ = 0 + irandom(0);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 14 {
	    difficulty = 9;
	    bossform = 11.1;
	    global.champ = 0 + irandom(0);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 15 {
	    difficulty = 2;
	    bossform = 24.1;
	    global.champ = 0 + irandom(2);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 16 {
	    difficulty = 1;
	    bossform = 98.1;
	    global.champ = 0 + irandom(2);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 17
	{
	    difficulty = 4;
	    bossform = 2.1;
	    global.champ = 0 + irandom(0);
	    global.boost = 0 + irandom(2);
	}

	if bossselect = 18
	{
	    difficulty = 4;
	    bossform = 6.1;
	    global.champ = 0 + irandom(0);
	    global.boost = 0 + irandom(2);
	}

	if global.champ > 0 {
	difficulty += 2;
	}

	difficulty += (2 * global.boost);


	if (difficulty <= (global.roomdifficulty)) and (difficulty >= (global.roomdifficulty / 2) - 1) {
	    scr_Boss_Spawn();
	} else {
	    scr_Boss_Choose();
	}



}
