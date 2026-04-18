function scr_Boss_Choose(roomNum, exclude, difficultyAdd = 0) {
	var simRoom = (roomNum + difficultyAdd)
	
	var stage_base_diff = 0.25 + (global.currentchapter * global.currentchapter)
	
	roomDifficulty = stage_base_diff + ((3.5 * simRoom) / 10);

	roomDifficulty += global.bossdifficultyadd;
	
	roomDifficulty += (((0.5 * global.currentchapter * simRoom) - 0.5) / 10);


	if roomDifficulty > 30 {
	    roomDifficulty = 30;
	}
	if roomDifficulty < stage_base_diff {
		roomDifficulty = stage_base_diff;	
	}

	bossform = 1;
	global.champ = 0;
	global.boost = 0;
	difficulty = 0;

	bosstype = noone;
	
	var _base_pool = []
	var _mini_boss_pool = []
	var _state_pool = [81,82,83,84,86,87,89,90]
	var _mini_chance = 1
	
	if global.currentchapter = 1 {
	    _base_pool =      [1, 3, 5, 9, 18, 24, 25, 42, 44, 57, 58, 98]
		_mini_boss_pool = [12, 13, 14, 16, 19, 20, 37, 43, 59, 61]
		_mini_chance = 2;
		
	}
	if global.currentchapter = 2 {
	    _base_pool = [2,3,6,10,14,17,26,27,32,34,36,38,45,48,64];
		_mini_boss_pool = [23, 35, 66, 67, 68, 69, 70]
		_mini_chance = 3.5
		
	}
	if global.currentchapter = 3 {
	    _base_pool = [2,4,7,11,15,22,26,28,29,30,31,33,39,41,45,50,56,65];
		

	}
	if global.currentchapter >= 4 {
	   _base_pool = [4,8,21,29,30,40,46,47,49,61];
		
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

	bossform += 0.1;

	if global.currentchapter = 1
	if roomNum = 15 {
	    bossform = 51.1;
	}
	if global.currentchapter = 2
	if roomNum = 15 {
	    bossform = 52.1;
	}
	if global.currentchapter = 3 and roomNum = 18 {
	    bossform = 53.1;
	}
	if global.currentchapter = 4 and roomNum = 15 {
	    bossform = 53.1;
	}

	//////////////////////////////////////////////////////////
	/////////////////// Boss Choose Stuff ////////////////////
	//////////////////////////////////////////////////////////

	if bossform = 1.1  // Wall Watcher
	{   
	    bosstype = obj_wall_watcher_v2;
	    difficulty = 1;
	    global.champ = choose(0,1,2,8);
		//global.champ = choose(1,2,8);
		//global.champ = 0;
	}

	if bossform = 2.1 // Mine Watcher 
	{   
	    bosstype = obj_deep_watcher_v2
	    difficulty = 7;
	    global.champ = choose(0,1,2,3,8);
		//global.champ = 0;
	}

	if bossform = 3.1 // Growing Sorrows
	{
	    bosstype = obj_growing_sorrows_v2;
	    difficulty = 4;
	    global.champ = choose(0,1,2,8);
	}

	if bossform = 4.1 // Soaring Sorrows
	{
	    bosstype = obj_soaring_sorrows_v2;
	    difficulty = 12;
	    global.champ = choose(0,1,8);
		//global.champ = 1;
	}


	if bossform = 5.1 // Thought Cloud
	{
	    bosstype = obj_thought_cloud_v2;
	    difficulty = 1;
	    global.champ = choose(0,1,2,3,8);
		//global.champ = 0;
	}

	if bossform = 6.1 // Infatuation Cloud
	{
	    bosstype = obj_infatuation_cloud_v2;
	    difficulty = 4;
	    global.champ = 0 + irandom(2);
	}

	if bossform = 7.1 // Wall of Thoughts
	{
	    bosstype = obj_wall_of_thoughts_v2;
	    difficulty = 8;
	    global.champ = choose(0, 1, 2);
	}
	if bossform = 8.1 // Nightmare Cloud
	{
	    bosstype = obj_dark_storm_cloud;
	    difficulty = 13;
	    global.champ = choose(0, 1, 2);
	}

	if bossform = 9.1 // Amorphous Jello
	{
	    bosstype = obj_amorphous_jello;
	    difficulty = 1;
	    global.champ = choose(0,1,2,8);
		//global.champ = 0;
	}

	if bossform = 10.1 // Agony Amorphous 
	{
	    bosstype = obj_Agony_Amorphous;
	    difficulty = 5;
	    global.champ = 0 + irandom(2);
		//global.champ = 2;
	}

	if bossform = 11.1 // Amorphous Prime
	{
	    bosstype = obj_Amorphous_Prime;
	    difficulty = 9;
	    global.champ = 0 + irandom(0);
	}

	if bossform = 12.1 // Hand of The Accuser
	{
	    bosstype = obj_hand_of_the_accusor_v2
	    difficulty = 1;
	    //global.champ = choose(0,1,2,8);
		global.champ = 0;
	}

	if bossform = 13.1 // Cursed Clappers
	{
	    bosstype = obj_cursed_clapper_v2;
	    difficulty = 1;
	    global.champ = choose(0);
	}

	if bossform = 14.1 // Spooked Spirit
	{
		if global.currentchapter = 1 {
			bosstype = obj_frightful_spirit_v2;
			difficulty = 2;
			global.champ = 0;
		} else {
			bosstype = obj_Spooked_Spirit;
			difficulty = 4;
			global.champ = choose(1,2,8);
		}
		//global.champ = 2;
	}

	if bossform = 15.1 // Wicked Spectre 
	{
	    bosstype = obj_Wicked_Spectre;
	    difficulty = 10;
	    global.champ = 0 + irandom(2);
		//global.champ = 0;
	}

	if bossform = 16.1 // Horror Stack
	{
	    bosstype = obj_horror_stack_v2;
	    difficulty = 1.5;
	}
	
	if bossform = 17.1 // Twister Demon
	{
	    bosstype = obj_Twister_Demon;
	    difficulty = 6;
	    global.champ = 0 + irandom(2);
		//global.champ = 2;
	}

	if bossform = 18.1 // Fire Starter 
	{
	    bosstype = obj_fire_starter_v2;
	    difficulty = 3;
	    global.champ = 0 + irandom(3);
		//global.champ = 3;
	}

	if bossform = 19.1 // Tri Ghoul
	{
	    bosstype = obj_whack_a_soul;
	    difficulty = 1;
		//global.champ = 8;
		//global.champ = 1;
	}

	if bossform = 20.1 // Manifest Core
	{
	    bosstype = obj_spire_v2
	    difficulty = 2;
	    //global.champ = choose(0,1,2);
	    //global.champ = 2;
	}

	if bossform = 21.1 // Blind Hunger 
	{
	    bosstype = obj_Blind_Hunger;
	    difficulty = 14;
	    global.champ = choose(0,1,8);
		//global.champ = 8;
	}

	if bossform = 22.1 // Guardian of Knowing
	{
	    bosstype = obj_Guardian_of_Knowing;
	    difficulty = 10;
	    global.champ = 0 + irandom(0);
	}

	if bossform = 23.1 // Heart Ache
	{
	    bosstype = obj_heart_ache_v2;
	    difficulty = 3.5;
	    //global.champ = 0 + irandom(0);
		//global.champ = 0;
	}

	if bossform = 24.1 // Ninja Spirit
	{
	    bosstype = obj_ninja_spirit_v2;
	    difficulty = 2;
	    global.champ = 0 + irandom(2);
		/*
		if roomNum = 1 {
			global.champ = 0;	
		}
		if roomNum = 5 {
			global.champ = 1;	
		}
		*/
	}

	if bossform = 25.1 // Wisper
	{
	    bosstype = obj_wisper_v2;
	    difficulty = 3;
		global.champ = 0 + irandom(2);
	    //global.champ = 2;
	}

	if bossform = 26.1 // Manic Woods Mage
	{
	    bosstype = obj_Manic_Wall_Mage;
	    difficulty = 8;
	    global.champ = choose(0,1);
		//global.champ = 1;
	}
	if bossform = 27.1 // Crazy Eyes
	{
	    bosstype = obj_Crazy_Eye;
	    difficulty = 5;
	    global.champ = choose(0,1,8);
		//global.champ = 0;
	}

	if bossform = 28.1 // Phase Crawler
	{
	    bosstype = obj_Phase_Crawler;
	    difficulty = 11;
	    global.champ = choose(0,1);
	}
	
	if bossform = 29.1 // Barrier Demon
	{
	    bosstype = obj_Barrier_Demon;
	    difficulty = 12;
	    global.champ = choose(0,1,8);
	}
	
	if bossform = 30.1 // Behemoth
	{
	    bosstype = obj_Behemoth;
	    difficulty = 13;
	    global.champ = choose(0,1,2);
	}

	if bossform = 31.1 // Sleeper
	{
	    bosstype = obj_Sleeper;
	    difficulty = 8;
	    global.champ = choose(0,1);
		//global.champ = 1;
	}
	if bossform = 32.1 // Animated Head
	{
	    bosstype = obj_Animated_Head;
	    difficulty = 5;
	    global.champ = choose(0,1);
		//global.champ = 1;
	}
	if bossform = 33.1 // Chaotic Unrest
	{
	    bosstype = obj_Chaotic_Unrest;
	    difficulty = 9;
	    global.champ = choose(0,1,8);
		//global.champ = 8;
	}
	if bossform = 34.1 // Locust
	{
	    bosstype = obj_Locust;
	    difficulty = 7;
	    global.champ = choose(0,1);
		//global.champ = 1;
	}
	if bossform = 35.1 // Peering Spectre
	{
	    bosstype = obj_grim_apparition_v2;
	    difficulty = 3.5;
	    //global.champ = choose(0,1);
	}
	if bossform = 36.1 // Dream Invader
	{
	    bosstype = obj_Dream_Invader;
	    difficulty = 6;
	    global.champ = choose(0,1,2);
	}
	if bossform = 37.1 // Jackhamster
	{
	    bosstype = obj_pogo_pal_v2
	    difficulty = 1.5;
	    global.champ = 0
	}
	if bossform = 38.1 // Crush
	{
	    bosstype = obj_Crush;
	    difficulty = 7;
	    global.champ = choose(0);
	}
	if bossform = 39.1 // Migraine
	{
	    bosstype = obj_Migraine;
	    difficulty = 9;
	    global.champ = choose(0);
	}
	if bossform = 40.1 // Spirit of Villainy
	{
	    bosstype = obj_Villain;
	    difficulty = 15;
	    global.champ = choose(0);
	}
	if bossform = 41.1 // The Veil
	{
	    bosstype = obj_The_Veil;
	    difficulty = 11;
	    global.champ = choose(0,1);
	}
	if bossform = 42.1 // Pocket
	{
	    bosstype = obj_pocket_v2
	    difficulty = 2;
	    global.champ = choose(0,1);
	}
	if bossform = 43.1 // Gutterball
	{
	    bosstype = obj_gutter_ball_v2;
	    difficulty = 1.5;
	}
	if bossform = 44.1 // Congaline
	{
	    bosstype = obj_conga_line_v2;
	    difficulty = 2;
	    global.champ = choose(0);
	}
	if bossform = 45.1 // Tough Luck
	{
	    bosstype = obj_Tough_Luck;
	    difficulty = 7;
	    global.champ = choose(0);
	}
	if bossform = 46.1 // Soul Collector
	{
	    bosstype = obj_Soul_Collector;
	    difficulty = 14;
	    global.champ = choose(0,1);
	}
	if bossform = 47.1 // Twin Horrors
	{
	    bosstype = obj_Fleeing_Twin_Horror;
	    difficulty = 14;
	    global.champ = choose(0);
	}
	if bossform = 48.1 // Danger Raiser
	{
	    bosstype = obj_Danger_Raiser;
	    difficulty = 6;
	    global.champ = choose(0,8);
	}
	if bossform = 49.1 // Mind Corruptor
	{
	    bosstype = obj_Mind_Corruptor;
	    difficulty = 16;
	    global.champ = choose(0);
	}
	if bossform = 50.1 // The Host
	{
	    bosstype = obj_the_host;
	    difficulty = 9;
	    global.champ = choose(0, 1);
	}
	if bossform = 56.1 // Dream Crawler
	{
	    bosstype = obj_Dream_Crawler;
	    difficulty = 9;
	    global.champ = choose(0);
	}
	if bossform = 57.1 // Boxer
	{
	    bosstype = obj_boxer;
	    difficulty = 2;
	    global.champ = choose(0, 1, 2);
	}
	if bossform = 58.1
	{
	    bosstype = obj_sleep_walker;
	    difficulty = 1;
	    global.champ = choose(0, 1);
	}
	if bossform = 59.1
	{
	    bosstype = obj_will_wisp_heart;
	    difficulty = 2;
	}
	if bossform = 60.1
	{
	    bosstype = obj_wall_king;
	    difficulty = 18;
	    global.champ = choose(0);
	}
	if bossform = 61.1
	{
	    bosstype = obj_red_boss_bead
	    difficulty = 1.5;
	}
	if bossform = 62.1
	{
	    bosstype = obj_whack_a_soul
	    difficulty = 1;
	}
	if bossform = 64.1 // Puck
	{
	    bosstype = obj_Puck;
	    difficulty = 5;
	    global.champ = choose(0,1,8);
		//global.champ = 8;
	}

	if bossform = 65.1 // Puck Mass
	{
	    bosstype = obj_Puck_Mass;
	    difficulty = 9;
	    global.champ = choose(0,1,8);
		//global.champ = 8;
	}
	if bossform = 66.1 {
	    bosstype = obj_touch_ghoul
	    difficulty = 3;
	}
	if bossform = 67.1 {
	    bosstype = obj_smell_ghoul
	    difficulty = 3;
	}
	if bossform = 68.1 {
	    bosstype = obj_taste_ghoul
	    difficulty = 3;
	}
	if bossform = 69.1 {
	    bosstype = obj_hear_ghoul
	    difficulty = 3;
	}
	if bossform = 70.1 {
	    bosstype = obj_sight_ghoul
	    difficulty = 3;
	}
	
	if bossform = 81.1
	{
	    bosstype = obj_Snake_Eyes;
	    global.champ = 0;
	    global.boost = 0;
	}
	if bossform = 82.1
	{
	    bosstype = obj_King_Of_Beasts;
	    global.champ = 0;
	    global.boost = 0;
	}
	if bossform = 83.1
	{
	    bosstype = obj_The_Construct;
	    global.champ = 0;
	    global.boost = 0;
	}
	if bossform = 84.1
	{
	    bosstype = obj_Brainwash;
	    global.champ = 0;
	    global.boost = 0;
	}
	if bossform = 86.1
	{
	    bosstype = obj_Bed_Bug;
	    global.champ = 0;
	    global.boost = 0;
	}
	if bossform = 87.1
	{
	    bosstype = obj_Dungeon_Master;
	    global.champ = 0;
	    global.boost = 0;
	}
	if bossform = 89.1
	{
	    bosstype = obj_Sleep_Caster;
	    global.champ = 0;
	    global.boost = 0;
	}
	if bossform = 90.1
	{
	    bosstype = obj_Head_In_The_Clouds;
	    global.champ = 0;
	    global.boost = 0;
	}
	
	if bossform > 80 and bossform <= 90.1 {
		difficulty = 4 * global.currentchapter;
		if global.currentchapter = 3 {
			difficulty += 1;	
		}
		if global.currentchapter = 4 {
			difficulty += 2;	
		}
	}
	

	if bossform = 98.1 // Spirit of Mischief 
	{
	    bosstype = obj_spirit_of_mischief_v2;
	    difficulty = 2;
		global.champ = choose(1,2,8);
		/*
		if roomNum = 2 {
			global.champ = 1;	
		}
		if roomNum = 7 {
			global.champ = 8;	
		}
		*/
	}

	global.boost = 0 + irandom(2);
	if array_length(_mini_boss_pool) > 0 {
		global.boost = choose(0, 2);
	}
	if bossform = 13.1 {
		global.boost = choose(0, 2, 2, 2)	
	}

	if bossform = 41.1 {
	    global.boost = 0;
	}

	if bossform = 51.1 // Flash Knight
	{
	    bosstype = obj_Flash_Knight;
	    difficulty = 5;
	    global.champ = 0 + irandom(0);
	    global.boost = 0 + irandom(0);
	}
	if bossform = 52.1 // Sandman
	{
	    bosstype = obj_Sandman;
	    difficulty = 9;
	    global.champ = 0 + irandom(0);
	    global.boost = 0 + irandom(0);
	}
	if bossform = 53.1 // Dreamer x Nightmare
	{
		bosstype = obj_Nightmare;
		difficulty = 15;
		global.champ = 0 + irandom(0);
		global.boost = 0 + irandom(0);
		if global.currentchapter = 4 {
			global.boost = 1;	
		}
	}
	if bossform = 111.1
	{
	    bosstype = obj_Masked_Hope_Spirit;
	    difficulty = 5;
	    global.champ = 0;
	    global.boost = 0;
	}
	if bossform = 112.1
	{
	    bosstype = obj_Masked_Bliss_Spirit;
	    difficulty = 5;
	    global.champ = 0;
	    global.boost = 0;
	}
	if bossform = 113.1
	{
	    bosstype = obj_Masked_Vanity_Spirit;
	    difficulty = 5;
	    global.champ = 0;
	    global.boost = 0;
	}
	if bossform = 114.1
	{
	    bosstype = obj_Masked_Loathing_Spirit;
	    difficulty = 5;
	    global.champ = 0;
	    global.boost = 0;
	}
	if bossform = 115.1
	{
	    bosstype = obj_Masked_Paranoia_Spirit;
	    difficulty = 5;
	    global.champ = 0;
	    global.boost = 0;
	}
	if bossform = 116.1
	{
	    bosstype = obj_Masked_Despair_Spirit;
	    difficulty = 5;
	    global.champ = 0;
	    global.boost = 0;
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

	//global.champ = 0;
	//global.boost = 0;
	//baseDiff = difficulty;

	difficulty += (1 * global.boost);
	if !_minion_picked and global.boost = 2 {
		difficulty += 2;
	}
	difficulty += (0.25 * global.boost) * floor(baseDiff - 1);

	global.difficultyReward = difficulty;


	var repeatBoss = 0;
	if i > roomNum {
		for(j = 1; j < roomNum; j++) {
			if bosstype = global.floor[j,21] {
				//if global.champ = global.floor[j,22] {
				repeatBoss = 1;	
				//}
			}
		}
	}
	
	if global.currentchapter = 4 {
		repeatBoss = 0;	
	}
	
	//scr_Hazard_Choose();
	//show_debug_message("roomNum: " + string(roomNum) + ", exclude: " + string(exclude) + ", difficultyAdd: " + string(difficultyAdd))
	//show_debug_message("roomDifficulty: " + string(roomDifficulty))
	//show_debug_message("boss: " + string(bossform) + ", champ: " + string(global.champ) + ", boost" + string(global.boost))

	var min_diff = (global.currentchapter * global.currentchapter) / 2
	if repeatBoss = 1 {
		return scr_Boss_Choose(roomNum, exclude);	
	} else {
		if (difficulty <= (roomDifficulty)) and (difficulty >= ((roomDifficulty) / 1.5)) {
		    return bosstype;
		}
		else {
			//if difficultyAdd > 0 {
				//difficultyAdd--;	
			//}
			difficultyAdd -= 0.25;
		    return scr_Boss_Choose(roomNum, exclude, difficultyAdd);
		}
	}


}
