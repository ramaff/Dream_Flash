enum BOSS_TYPE {
    WALL_WATCHER,
    DEEP_WATCHER,
    GROWING_SORROWS,
    SOARING_SORROWS,
    THOUGH_CLOUD,
    INFATUATION_CLOUD,
    WALL_OF_THOUGHTS,
    DARK_STORM_CLOUD,
    AMORPHOUS_JELLO,
    ANGRY_AMORPHOUS,
    AMORPHOUS_PRIME,
    HAND_OF_THE_ACCUSOR,
    CURSED_CLAPPER,
    FRIGHTFUL_SPIRIT,
    WICKED_SPECTRE,
    HORROR_STACK,
    TWISTER_DEMON,
    FIRE_STARTER,
    WHACK_A_SOUL,
    SPIRE,
    BLIND_HUNGER,
    GUARDIAN_OF_KNOWING,
    HEART_ACHE,
    NINJA_SPIRIT,
    WISPER,
    MANIC_WALL_MAGE,
    CRAZY_EYE,
    PHASE_CRAWLER,
    BARRIER_DEMON,
    BEHEMOTH,
    SLEEPER,
    BRAIN_DEAD,
    RESTLESS,
    LOCUST,
    GRIM_APPARITION,
    DREAM_INVADER,
    POGO_PAL,
    CRUSH,
    MIGRAINE,
    VILLAIN,
    THE_VEIL,
    POCKET,
    GUTTER_BALL,
    CONGA_LINE,
    TOUGH_LUCK,
    SOUL_COLLECTOR,
    FLEEING_TWIN_HORROR,
    SCARECROW,
    MIND_CORRUPTOR,
    THE_HOST,
    DREAM_CRALWER,
    BOXER,
    SLEEP_WALKER,
    WISP_HEART,
    WALL_KING,
    RED_BOSS_BEAD,
    PUCK,
    PUCK_MASS,
    TOUCH_GHOUL,
    SMELL_GHOUL,
    TASTE_GHOUL,
    HEAR_GHOUL,
    SIGHT_GHOUL,
    SNAKE_EYES,
    KING_OF_BEASTS,
    THE_CONSTRUCT,
    BRAINWASH,
    BED_BUG,
    DUNGEON_MASTER,
    SLEEP_CASTER,
    HEAD_IN_THE_CLOUDS,
    SPIRIT_OF_MISCHIEF,
    FLASH_KNIGHT,
    SANDMAN,
    DREAMER_X_NIGHTMARE,
    MASKED_HOPE_SPIRIT,
    MASKED_BLISS_SPIRIT,
    MASKED_VANITY_SPIRIT,
    MASKED_LOATHING_SPIRIT,
    MASKED_PARANOIA_SPIRIT,
    MASKED_DESPAIR_SPIRIT
}


function scr_Boss_Choose(roomNum, exclude, difficultyAdd = 0) {
	var simRoom = (roomNum + difficultyAdd)
	
	var stage_base_diff = 0.25 + (global.currentchapter * global.currentchapter)
	var roomDifficulty = min( stage_base_diff + (((6 + global.currentchapter) * simRoom) / 20), 30 )
	roomDifficulty += global.bossdifficultyadd;

	if roomDifficulty < stage_base_diff {
		roomDifficulty = stage_base_diff;	
	}

	var bossform = BOSS_TYPE.WALL_WATCHER;
	global.champ = 0;
	global.boost = 0;
	var difficulty = 0;
	
	var _base_pool = []
	var _mini_boss_pool = []
	var _state_pool = [
		BOSS_TYPE.SNAKE_EYES, BOSS_TYPE.KING_OF_BEASTS, BOSS_TYPE.THE_CONSTRUCT, BOSS_TYPE.BRAINWASH,
		BOSS_TYPE.BED_BUG, BOSS_TYPE.DUNGEON_MASTER, BOSS_TYPE.SLEEP_CASTER, BOSS_TYPE.HEAD_IN_THE_CLOUDS
	]
	var _mini_chance = 1
	
	if global.currentchapter = 1 {
	    _base_pool = [
			BOSS_TYPE.WALL_WATCHER, BOSS_TYPE.GROWING_SORROWS, BOSS_TYPE.THOUGH_CLOUD, BOSS_TYPE.AMORPHOUS_JELLO,
			BOSS_TYPE.FIRE_STARTER, BOSS_TYPE.NINJA_SPIRIT, BOSS_TYPE.WISPER, BOSS_TYPE.POCKET,
			BOSS_TYPE.CONGA_LINE, BOSS_TYPE.BOXER, BOSS_TYPE.SLEEP_WALKER, BOSS_TYPE.SPIRIT_OF_MISCHIEF
		]
		_mini_boss_pool = [
			BOSS_TYPE.HAND_OF_THE_ACCUSOR, BOSS_TYPE.CURSED_CLAPPER, BOSS_TYPE.FRIGHTFUL_SPIRIT, BOSS_TYPE.HORROR_STACK,
			BOSS_TYPE.WHACK_A_SOUL, BOSS_TYPE.SPIRE, BOSS_TYPE.POGO_PAL, BOSS_TYPE.GUTTER_BALL,
			BOSS_TYPE.WISP_HEART, BOSS_TYPE.RED_BOSS_BEAD
		]
		_mini_chance = 2;
    	if roomNum = 15 {
    	    bossform = BOSS_TYPE.FLASH_KNIGHT;
    	}
	}
	if global.currentchapter = 2 {
	    _base_pool = [
			BOSS_TYPE.DEEP_WATCHER, BOSS_TYPE.GROWING_SORROWS, BOSS_TYPE.INFATUATION_CLOUD, BOSS_TYPE.ANGRY_AMORPHOUS,
			BOSS_TYPE.TWISTER_DEMON, BOSS_TYPE.MANIC_WALL_MAGE, BOSS_TYPE.CRAZY_EYE, BOSS_TYPE.LOCUST,
			BOSS_TYPE.DREAM_INVADER, BOSS_TYPE.CRUSH, BOSS_TYPE.TOUGH_LUCK, BOSS_TYPE.SCARECROW, BOSS_TYPE.PUCK
		]
		_mini_boss_pool = [
			BOSS_TYPE.HEART_ACHE, BOSS_TYPE.BRAIN_DEAD, BOSS_TYPE.GRIM_APPARITION, BOSS_TYPE.TOUCH_GHOUL,
			BOSS_TYPE.SMELL_GHOUL, BOSS_TYPE.TASTE_GHOUL, BOSS_TYPE.HEAR_GHOUL, BOSS_TYPE.SIGHT_GHOUL
		]
		_mini_chance = 2.8
    	if roomNum = 15 {
    	    bossform = BOSS_TYPE.SANDMAN;
    	}
	}
	if global.currentchapter = 3 {
	    _base_pool = [
			BOSS_TYPE.DEEP_WATCHER, BOSS_TYPE.SOARING_SORROWS, BOSS_TYPE.WALL_OF_THOUGHTS, BOSS_TYPE.AMORPHOUS_PRIME,
			BOSS_TYPE.WICKED_SPECTRE, BOSS_TYPE.GUARDIAN_OF_KNOWING, BOSS_TYPE.MANIC_WALL_MAGE, BOSS_TYPE.PHASE_CRAWLER,
			BOSS_TYPE.BARRIER_DEMON, BOSS_TYPE.BEHEMOTH, BOSS_TYPE.SLEEPER, BOSS_TYPE.MIGRAINE,
			BOSS_TYPE.THE_VEIL, BOSS_TYPE.TOUGH_LUCK, BOSS_TYPE.DREAM_CRALWER, BOSS_TYPE.PUCK_MASS
		]
		_mini_boss_pool = [BOSS_TYPE.RESTLESS, BOSS_TYPE.THE_HOST]
		_mini_chance = 6.5
        if roomNum == 18{
            bossform = BOSS_TYPE.DREAMER_X_NIGHTMARE;
        }
	}
	if global.currentchapter >= 4 {
	   _base_pool = [
			BOSS_TYPE.SOARING_SORROWS, BOSS_TYPE.DARK_STORM_CLOUD, BOSS_TYPE.BLIND_HUNGER, BOSS_TYPE.BARRIER_DEMON,
			BOSS_TYPE.BEHEMOTH, BOSS_TYPE.VILLAIN, BOSS_TYPE.SOUL_COLLECTOR, BOSS_TYPE.FLEEING_TWIN_HORROR,
			BOSS_TYPE.MIND_CORRUPTOR, BOSS_TYPE.WALL_KING
		]
        if roomNum == 15{
            bossform = BOSS_TYPE.DREAMER_X_NIGHTMARE;
        }
	}
	
	if scr_Chance(array_length(_base_pool) * 4 / global.currentchapter) {
		bossform = _state_pool[irandom(array_length(_state_pool) - 1)]
	} else {
		bossform = _base_pool[irandom(array_length(_base_pool) - 1)]
	}
	
	var _minion_picked = false
	
	if array_length(_mini_boss_pool) > 0 and scr_Chance(_mini_chance) {
		_minion_picked = true;
		bossform = _mini_boss_pool[irandom(array_length(_mini_boss_pool) - 1)]
	}

	// Default boost. Individual bosses below can override it.
	global.boost = 0 + irandom(2);
	if array_length(_mini_boss_pool) > 0 {
		global.boost = choose(0, 2);
	}

	//////////////////////////////////////////////////////////
	/////////////////// Boss Choose Stuff ////////////////////
	//////////////////////////////////////////////////////////
	switch (bossform) {
		case BOSS_TYPE.WALL_WATCHER: difficulty = 1 global.champ = choose(0,1,2,8) break;
		case BOSS_TYPE.DEEP_WATCHER: difficulty = 7 global.champ = choose(0,1,2,3,8) break;
		case BOSS_TYPE.GROWING_SORROWS: difficulty = 4 global.champ = choose(0,1,2,8) break;
		case BOSS_TYPE.SOARING_SORROWS: difficulty = 12 global.champ = choose(0,1,8) break;
		case BOSS_TYPE.THOUGH_CLOUD: difficulty = 1 global.champ = choose(0,1,2,3,8) break;
		case BOSS_TYPE.INFATUATION_CLOUD: difficulty = 4 global.champ = irandom(2) break;
		case BOSS_TYPE.WALL_OF_THOUGHTS: difficulty = 8 global.champ = choose(0,1,2) break;
		case BOSS_TYPE.DARK_STORM_CLOUD: difficulty = 13 global.champ = choose(0,1,2) break;
		case BOSS_TYPE.AMORPHOUS_JELLO: difficulty = 1 global.champ = choose(0,1,2,8) break;
		case BOSS_TYPE.ANGRY_AMORPHOUS: difficulty = 5 global.champ = irandom(2) break;
		case BOSS_TYPE.AMORPHOUS_PRIME: difficulty = 9 global.champ = 0 break;
		case BOSS_TYPE.HAND_OF_THE_ACCUSOR: difficulty = 1 global.champ = 0 break;
		case BOSS_TYPE.CURSED_CLAPPER: difficulty = 1 global.champ = 0 global.boost = choose(0,2,2,2) break;
		case BOSS_TYPE.FRIGHTFUL_SPIRIT: difficulty = 2 global.champ = 0 break;
		case BOSS_TYPE.WICKED_SPECTRE: difficulty = 10 global.champ = irandom(2) break;
		case BOSS_TYPE.HORROR_STACK: difficulty = 1.5 break;
		case BOSS_TYPE.TWISTER_DEMON: difficulty = 6 global.champ = irandom(2) break;
		case BOSS_TYPE.FIRE_STARTER: difficulty = 3 global.champ = irandom(3) break;
		case BOSS_TYPE.WHACK_A_SOUL: difficulty = 1 break;
		case BOSS_TYPE.SPIRE: difficulty = 2 break;
		case BOSS_TYPE.BLIND_HUNGER: difficulty = 14 global.champ = choose(0,1,8) break;
		case BOSS_TYPE.GUARDIAN_OF_KNOWING: difficulty = 10 global.champ = 0 break;
		case BOSS_TYPE.HEART_ACHE: difficulty = 3.5 break;
		case BOSS_TYPE.NINJA_SPIRIT: difficulty = 2 global.champ = irandom(2) break;
		case BOSS_TYPE.WISPER: difficulty = 3 global.champ = irandom(2) break;
		case BOSS_TYPE.MANIC_WALL_MAGE: difficulty = 8 global.champ = choose(0,1) break;
		case BOSS_TYPE.CRAZY_EYE: difficulty = 5 global.champ = choose(0,1,8) break;
		case BOSS_TYPE.PHASE_CRAWLER: difficulty = 11 global.champ = choose(0,1) break;
		case BOSS_TYPE.BARRIER_DEMON: difficulty = 12 global.champ = choose(0,1,8) break;
		case BOSS_TYPE.BEHEMOTH: difficulty = 13 global.champ = choose(0,1,2) break;
		case BOSS_TYPE.SLEEPER: difficulty = 8 global.champ = choose(0,1) break;
		case BOSS_TYPE.BRAIN_DEAD: difficulty = 4.5 global.champ = 0 break;
		case BOSS_TYPE.RESTLESS: difficulty = 9 global.champ = 0 break;
		case BOSS_TYPE.LOCUST: difficulty = 7 global.champ = choose(0,1) break;
		case BOSS_TYPE.GRIM_APPARITION: difficulty = 3.5 break;
		case BOSS_TYPE.DREAM_INVADER: difficulty = 6 global.champ = choose(0,1,2) break;
		case BOSS_TYPE.POGO_PAL: difficulty = 1.5 global.champ = 0 break;
		case BOSS_TYPE.CRUSH: difficulty = 7 global.champ = 0 break;
		case BOSS_TYPE.MIGRAINE: difficulty = 9 global.champ = 0 break;
		case BOSS_TYPE.VILLAIN: difficulty = 15 global.champ = 0 break;
		case BOSS_TYPE.THE_VEIL: difficulty = 11 global.champ = choose(0,1) global.boost = 0 break;
		case BOSS_TYPE.POCKET: difficulty = 2 global.champ = choose(0,1) break;
		case BOSS_TYPE.GUTTER_BALL: difficulty = 1.5 break;
		case BOSS_TYPE.CONGA_LINE: difficulty = 2 global.champ = 0 break;
		case BOSS_TYPE.TOUGH_LUCK: difficulty = 7 global.champ = 0 break;
		case BOSS_TYPE.SOUL_COLLECTOR: difficulty = 14 global.champ = choose(0,1) break;
		case BOSS_TYPE.FLEEING_TWIN_HORROR: difficulty = 14 global.champ = 0 break;
		case BOSS_TYPE.SCARECROW: difficulty = 7 global.champ = 0 break;
		case BOSS_TYPE.MIND_CORRUPTOR: difficulty = 16 global.champ = 0 break;
		case BOSS_TYPE.THE_HOST: difficulty = 9 global.champ = choose(0,1) break;
		case BOSS_TYPE.DREAM_CRALWER: difficulty = 9 global.champ = 0 break;
		case BOSS_TYPE.BOXER: difficulty = 2 global.champ = choose(0,1,2) break;
		case BOSS_TYPE.SLEEP_WALKER: difficulty = 1 global.champ = choose(0,1) break;
		case BOSS_TYPE.WISP_HEART: difficulty = 2 break;
		case BOSS_TYPE.WALL_KING: difficulty = 18 global.champ = 0 break;
		case BOSS_TYPE.RED_BOSS_BEAD: difficulty = 1.5 break;
		case BOSS_TYPE.PUCK: difficulty = 5 global.champ = choose(0,1,8) break;
		case BOSS_TYPE.PUCK_MASS: difficulty = 9 global.champ = choose(0,1,8) break;
		case BOSS_TYPE.TOUCH_GHOUL:
		case BOSS_TYPE.SMELL_GHOUL:
		case BOSS_TYPE.TASTE_GHOUL:
		case BOSS_TYPE.HEAR_GHOUL:
		case BOSS_TYPE.SIGHT_GHOUL:
			difficulty = 3;
		break;

		// "State" bosses: difficulty scales with the chapter
		case BOSS_TYPE.SNAKE_EYES:
		case BOSS_TYPE.KING_OF_BEASTS:
		case BOSS_TYPE.THE_CONSTRUCT:
		case BOSS_TYPE.BRAINWASH:
		case BOSS_TYPE.BED_BUG:
		case BOSS_TYPE.DUNGEON_MASTER:
		case BOSS_TYPE.SLEEP_CASTER:
		case BOSS_TYPE.HEAD_IN_THE_CLOUDS:
			global.champ = 0;
			difficulty = 4 * global.currentchapter;
			if global.currentchapter = 3 { difficulty += 1; }
			if global.currentchapter = 4 { difficulty += 2; }
		break;

		case BOSS_TYPE.SPIRIT_OF_MISCHIEF: difficulty = 2 global.champ = choose(1,2,8) break;

		case BOSS_TYPE.FLASH_KNIGHT: difficulty = 5 global.champ = 0 global.boost = 0 break;
		case BOSS_TYPE.SANDMAN: difficulty = 9 global.champ = 0 global.boost = 0 break;
		case BOSS_TYPE.DREAMER_X_NIGHTMARE:
			difficulty = 15;
			global.champ = 0;
			global.boost = 0;
			if global.currentchapter = 4 {
				global.boost = 1;
			}
		break;

		case BOSS_TYPE.MASKED_HOPE_SPIRIT:
		case BOSS_TYPE.MASKED_BLISS_SPIRIT:
		case BOSS_TYPE.MASKED_VANITY_SPIRIT:
		case BOSS_TYPE.MASKED_LOATHING_SPIRIT:
		case BOSS_TYPE.MASKED_PARANOIA_SPIRIT:
		case BOSS_TYPE.MASKED_DESPAIR_SPIRIT:
			difficulty = 5;
			global.champ = 0;
			global.boost = 0;
		break;
	}

	var baseDiff = difficulty;

	if global.champ > 0 {
		difficulty += 1;
		difficulty += 0.125 * (baseDiff - 1);
	}
	if global.champ >= 8 {
		difficulty += 1;
		difficulty += 0.125 * (baseDiff - 1);
	}

	difficulty += (1 * global.boost);
	if !_minion_picked and global.boost = 2 {
		difficulty += 2;
	}
	difficulty += (0.25 * global.boost) * floor(baseDiff - 1);

	global.difficultyReward = difficulty;


	var repeatBoss = 0;
	if i > roomNum and global.currentchapter != 4{
		for(j = 1; j < roomNum; j++) {
			if bossform = global.floor[j,21] {
				repeatBoss = 1;	
			}
		}
	}
	
	if repeatBoss = 1 {
		return scr_Boss_Choose(roomNum, exclude)
	} else {
		if (difficulty <= (roomDifficulty)) and (difficulty >= ((roomDifficulty) / 1.5)) {
		    return bossform;
		}
		else {
			difficultyAdd -= 0.25;
		    return scr_Boss_Choose(roomNum, exclude, difficultyAdd);
		}
	}

}
