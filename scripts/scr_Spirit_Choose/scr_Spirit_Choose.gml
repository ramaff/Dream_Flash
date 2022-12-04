function scr_Spirit_Choose() {
	roomDifficulty = 5 + (4.5 * (global.currentchapter - 1));

	bossform = 1;
	difficulty = 0;

	morality = argument[0];

	bosstype = obj_Masked_Hope_Spirit;

	//////////////////////////////////////////////////////////
	/////////////////// Boss Choose Stuff ////////////////////
	//////////////////////////////////////////////////////////

	if morality = "Good" {
	    bossform = choose(111,112,113);
	}
	if morality = "Bad" {
	    bossform = choose(114,115,116);
	}

	if bossform = 111
	{
	    bosstype = obj_Masked_Hope_Spirit;
	    difficulty = 5;
	    global.champ = 0;
	}
	if bossform = 112
	{
	    bosstype = obj_Masked_Bliss_Spirit;
	    difficulty = 5;
	    global.champ = 0;
	}
	if bossform = 113
	{
	    bosstype = obj_Masked_Vanity_Spirit;
	    difficulty = 5;
	    global.champ = 0;
	}
	if bossform = 114
	{
	    bosstype = obj_Masked_Loathing_Spirit;
	    difficulty = 5;
	    global.champ = 0;
	}
	if bossform = 115
	{
	    bosstype = obj_Masked_Paranoia_Spirit;
	    difficulty = 5;
	    global.champ = 0;
	}
	if bossform = 116
	{
	    bosstype = obj_Masked_Despair_Spirit;
	    difficulty = 5;
	    global.champ = 0;
	}


	if global.champ > 0 {
	difficulty += 1;
	}
	if global.champ >= 8 {
	difficulty += 1;
	}

	difficulty += (2 * global.boost);

	//if (difficulty <= (roomDifficulty)) and (difficulty >= ((roomDifficulty) / 2) - 1) {
	    return bosstype;
	//}
	//else {
	//    return scr_Spirit_Choose();
	//}



}
