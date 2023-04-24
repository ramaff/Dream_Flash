function scr_State_Boss_Choose(bossn) {

	var bosstype = noone;
	var cMaxProg = 1.5;
	
	
	if global.snakeprogress > cMaxProg {
		bossn = 1;
		cMaxProg = global.snakeprogress;
	}
	if global.beastprogress > cMaxProg {
		bossn = 2;
		cMaxProg = global.beastprogress;
	}
	if global.mechprogress > cMaxProg {
		bossn = 3;
		cMaxProg = global.mechprogress;
	}
	if global.scrubprogress > cMaxProg {
		bossn = 4;
		cMaxProg = global.scrubprogress;
	}
	if global.spikeprogress > cMaxProg {
		bossn = 6;
		cMaxProg = global.spikeprogress;
	}
	if global.bleedingprogress > cMaxProg {
		bossn = 7;
		cMaxProg = global.bleedingprogress;
	}
	if global.castingprogress > cMaxProg {
		bossn = 9;
		cMaxProg = global.castingprogress;
	}
	if global.ascendingprogress > cMaxProg {
		bossn = 10;
		cMaxProg = global.ascendingprogress;
	}

	switch(bossn) {
		case 1:
			bosstype = obj_Snake_Eyes;
			break;
		case 2:
			bosstype = obj_King_Of_Beasts
			break;
		case 3:
			bosstype = obj_The_Construct;
			break;
		case 4:
			bosstype = obj_Brainwash;
			break;
		case 6:
			bosstype = obj_Bed_Bug;
			break;
		case 7:
			bosstype = obj_Dungeon_Master;
			break;
		case 9:
			bosstype = obj_Sleep_Caster;
			break;
		case 10:
			bosstype = obj_Head_In_The_Clouds;
			break;
		
		
	}

	return bosstype;


}
