function scr_State_Boss_Choose(only_forced_bosses = false) {

    var bossn = 0
    
	if !only_forced_bosses {
		bossn = choose(1,2,3,4,6,7,9,10);
	} else {
		bossn = 0;	
	}

	var bosstype = noone;
	var cMaxProg = 2;
	
	var snakedis = global.snakeprogress;
	var beastdis = global.beastprogress;
	var mechdis = global.mechprogress;
	var scrubdis = global.scrubprogress;
	var spikedis = global.spikeprogress;
	var bleedingdis = global.bleedingprogress;
	var castingdis = global.castingprogress;
	var ascendingdis = global.ascendingprogress;
	
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
			bosstype = BOSS_TYPE.SNAKE_EYES;
			break;
		case 2:
			bosstype = BOSS_TYPE.KING_OF_BEASTS
			break;
		case 3:
			bosstype = BOSS_TYPE.THE_CONSTRUCT;
			break;
		case 4:
			bosstype = BOSS_TYPE.BRAINWASH;
			break;
		case 6:
			bosstype = BOSS_TYPE.BED_BUG;
			break;
		case 7:
			bosstype = BOSS_TYPE.DUNGEON_MASTER;
			break;
		case 9:
			bosstype = BOSS_TYPE.SLEEP_CASTER;
			break;
		case 10:
			bosstype = BOSS_TYPE.HEAD_IN_THE_CLOUDS;
			break;
	}

	return bosstype;


}
