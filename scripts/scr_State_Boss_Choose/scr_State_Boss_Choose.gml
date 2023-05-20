function scr_State_Boss_Choose(only_forced_bosses = false) {

	if !only_forced_bosses {
		bossn = choose(1,2,3,4,6,7,9,10);
	} else {
		bossn = 0;	
	}

	var bosstype = noone;
	var cMaxProg = 2;
	
	snakedis = global.snakeprogress;
	beastdis = global.beastprogress;
	mechdis = global.mechprogress;
	scrubdis = global.scrubprogress;
	spikedis = global.spikeprogress;
	bleedingdis = global.bleedingprogress;
	castingdis = global.castingprogress;
	ascendingdis = global.ascendingprogress;
	
	scr_State_Stat_Credits();
	
	
	if snakedis >= cMaxProg {
		bossn = 1;
		cMaxProg = snakedis;
	}
	if beastdis >= cMaxProg {
		bossn = 2;
		cMaxProg = beastdis;
	}
	if mechdis >= cMaxProg {
		bossn = 3;
		cMaxProg = mechdis;
	}
	if scrubdis >= cMaxProg {
		bossn = 4;
		cMaxProg = scrubdis;
	}
	if spikedis >= cMaxProg {
		bossn = 6;
		cMaxProg = spikedis;
	}
	if bleedingdis >= cMaxProg {
		bossn = 7;
		cMaxProg = bleedingdis;
	}
	if castingdis >= cMaxProg {
		bossn = 9;
		cMaxProg = castingdis;
	}
	if ascendingdis >= cMaxProg {
		bossn = 10;
		cMaxProg = ascendingdis;
	}

	switch(bossn) {
		case 0:
			return noone;
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
