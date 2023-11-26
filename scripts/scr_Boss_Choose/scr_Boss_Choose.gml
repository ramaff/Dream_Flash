function scr_Boss_Choose(roomNum, exclude, difficultyAdd = 0) {
	var simRoom = (roomNum + difficultyAdd)
	
	var stage_base_diff = 1.5 + (4 * (global.currentchapter - 1))
	if global.currentchapter = 3 {
		stage_base_diff += 0.75;
	}
	if global.currentchapter >= 4 {
		stage_base_diff += 2;
	}
	
	roomDifficulty = stage_base_diff + ((3.5 * simRoom) / 10) + (global.souldespair / 8);

	roomDifficulty += global.bossdifficultyadd;
	
	if global.currentchapter = 2 {
		roomDifficulty += ((0.5 * simRoom) / 10);
	}
	if global.currentchapter = 3 {
		roomDifficulty += ((1 * simRoom) / 10);
	}
	if global.currentchapter >= 4 {
		roomDifficulty += ((1.5 * simRoom) / 10);
	}

	if roomDifficulty > 30 {
	    roomDifficulty = 30;
	}
	if roomDifficulty < stage_base_diff {
		roomDifficulty = stage_base_diff;	
	}

	/*
	if roomNum = 16 and global.currentchapter < 3 {
		roomDifficulty += 2;
		if global.currentchapter = 2 {
			roomDifficulty += 1;	
		}
	}
	if roomNum = 23 and global.currentchapter = 3 {
		roomDifficulty += 4
	} */

	bossform = 1;
	global.champ = 0;
	global.boost = 0;
	difficulty = 0;

	bosstype = noone;
	
	var sboss = false;
	
	/*
	chapter1 = [1,3,5,9,12,13,14,16,18,19,20,24,25,37,42,43,98];
	//chapter1_2 = [];
	chapter2 = [2,3,6,10,14,17,20,23,26,27,32,34,35,36,38,45,48,50,64];
	//chapter2_3 = [2];
	chapter3 = [2,4,7,11,15,21,22,26,28,29,30,31,33,41,45,50,56,65];
	//chapter3_4 = [];
	chapter4 = [8,21,29,30,40,46,47,49];
	statepool = choose(81,82,83,85,87);
	
	bosspool = chapter1 + statepool
	bossform = choose(bosspool)
	*/

	
	if global.currentchapter = 1 {
	    bossform = choose(1,3,5,9,12,13,14,16,18,19,20,24,25,37,42,43,44,57,98);
	    if exclude = 1 {
	        bossform = choose(1,3,5,9,12,14,16,18,19,20,24,25,37,42,43,44,57,98);
	    }
		sboss = scr_Chance(34);
		if sboss = true {
			bossform = choose(81,82,83,84,86,87,89,90);
		}
	}
	if global.currentchapter = 2 {
	    bossform = choose(2,3,6,10,14,17,20,23,26,27,32,34,35,36,38,45,48,50,64);
		
		if bossform = 50 and scr_Chance(2) {
			bossform = choose(2,3,6,10,14,17,20,23,26,27,32,34,35,36,38,45,48,64);
		}
		
		sboss = scr_Chance(18);
		if sboss = true {
			bossform = choose(81,82,83,84,86,87,89,90);
		}
	}
	if global.currentchapter = 3 {
	    bossform = choose(2,4,7,11,15,22,26,28,29,30,31,33,39,41,45,50,56,65);
		
		if bossform = 50 and scr_Chance(2) {
			bossform = choose(2,4,7,11,15,22,26,28,29,30,31,33,39,41,45,56,65);
		}
		
		sboss = scr_Chance(15);
		if sboss = true {
			bossform = choose(81,82,83,84,86,87,89,90);
		}
	}
	if global.currentchapter >= 4 {
	    bossform = choose(8,21,29,30,40,46,47,49);
		
		sboss = scr_Chance(5);
		if sboss = true {
			bossform = choose(81,82,83,84,86,87,89,90);
		}
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
	//////////////////// Boss Test Stuff /////////////////////
	//////////////////////////////////////////////////////////

	testbossnum = 5.1;
	bosstestdiff = 9;
	
	bosstestactive = 0;
	customBoss = 0;
	
	var champvar = 2;
	var boostvar = 0;

	if bosstestactive = 1 {

	    roomDifficulty = bosstestdiff;

	    if roomNum = 1 {
	        bossform = testbossnum;
	    }
	    if roomNum = 2 {
	        bossform = testbossnum;
	    }
	    if roomNum = 4 {
	        bossform = testbossnum;
	    }
	    if roomNum = 5 {
	        bossform = testbossnum;
	    }
	
		if customBoss = 1 {
			if roomNum = 1 {
		        bossform = 9.1;
				champvar = 0;
		    }
		    if roomNum = 2 {
		        bossform = 9.1;
				champvar = 1;
		    }
		    if roomNum = 4 {
		        bossform = 9.1;
				champvar = 2;
		    }
		    if roomNum = 5 {
		        bossform = 9.1;
				champvar = 8;
		    }
			if roomNum = 7 {
		        bossform = 5.1;
				champvar = 8;
		    }
			if roomNum = 8 {
		        bossform = 116.1;
		    }
			if roomNum = 10 {
		        bossform = 16.1;
		    } 
		}
	}

	//////////////////////////////////////////////////////////
	/////////////////// Boss Choose Stuff ////////////////////
	//////////////////////////////////////////////////////////

	if bossform = 1.1  // Wall Watcher
	{   
	    bosstype = obj_Wall_Watcher;
	    difficulty = 1;
	    global.champ = choose(0,1,2,8);
		//global.champ = choose(1,2,8);
		//global.champ = 0;
	}

	if bossform = 2.1 // Mine Watcher 
	{   
	    bosstype = obj_Mine_Watcher;
	    difficulty = 8;
	    global.champ = choose(0,1,2,3,8);
		//global.champ = 0;
	}

	if bossform = 3.1 // Growing Sorrows
	{
	    bosstype = obj_Growing_Sorrows;
	    difficulty = 4;
	    global.champ = choose(0,1,3,8);
	}

	if bossform = 4.1 // Soaring Sorrows
	{
	    bosstype = obj_Soaring_Sorrows;
	    difficulty = 10;
	    global.champ = choose(0,1);
		//global.champ = 1;
	}


	if bossform = 5.1 // Thought Cloud
	{
	    bosstype = obj_Thought_Cloud;
	    difficulty = 1;
	    global.champ = choose(0,1,2,3,8);
		//global.champ = 0;
	}

	if bossform = 6.1 // Infatuation Cloud
	{
	    bosstype = obj_Infatuation_Cloud;
	    difficulty = 4;
	    global.champ = 0 + irandom(2);
	}

	if bossform = 7.1 // Storm Cloud
	{
	    bosstype = obj_Storm_Cloud;
	    difficulty = 8;
	    global.champ = choose(0,1,2);
	}
	if bossform = 8.1 // Nightmare Cloud
	{
	    bosstype = obj_Nightmare_Cloud;
	    difficulty = 13;
	    global.champ = choose(0);
	}

	if bossform = 9.1 // Amorphous Jello
	{
	    bosstype = obj_Amorphous_Jello;
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
	    bosstype = obj_Hand_of_the_Accuser;
	    difficulty = 1;
	    global.champ = choose(0,1,2,8);
		//global.champ = 8;
	}

	if bossform = 13.1 // Cursed Clappers
	{
	    bosstype = obj_Cursed_Clapper;
	    difficulty = 2;
	    global.champ = choose(0,1,2);
	}

	if bossform = 14.1 // Spooked Spirit
	{
	    bosstype = obj_Spooked_Spirit;
	    difficulty = 4;
	    global.champ = choose(0,1,2,8);
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
	    bosstype = obj_Horror_Stack;
	    difficulty = 2;
	    global.champ = choose(0,1,2,8);
		//global.champ = 2;
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
	    //bosstype = obj_fire_starter_v2;
		bosstype = obj_Fire_Starter;
	    difficulty = 3;
	    global.champ = 0 + irandom(3);
		//global.champ = 3;
	}

	if bossform = 19.1 // Tri Ghoul
	{
	    bosstype = obj_Tri_Ghoul;
	    difficulty = 2;
	    global.champ = choose(0,1,8);
		//global.champ = 8;
		//global.champ = 1;
	}

	if bossform = 20.1 // Manifest Core
	{
	    bosstype = obj_Manifest_Core;
	    difficulty = 4;
	    global.champ = choose(0,1,2);
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
	    bosstype = obj_Heart_Ache;
	    difficulty = 5;
	    global.champ = 0 + irandom(0);
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
	    bosstype = obj_Peering_Spectre;
	    difficulty = 4;
	    global.champ = choose(0,1);
	}
	if bossform = 36.1 // Dream Invader
	{
	    bosstype = obj_Dream_Invader;
	    difficulty = 6;
	    global.champ = choose(0,1,2);
	}
	if bossform = 37.1 // Jackhamster
	{
	    bosstype = obj_Jackhamster;
	    difficulty = 3;
	    global.champ = choose(0,1);
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
	    bosstype = obj_Gutter;
	    difficulty = 3;
	    global.champ = choose(0,1);
	}
	if bossform = 44.1 // Congaline
	{
	    bosstype = obj_Conga_Line;
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
	if bossform = 50.1 // Wall of Thoughts
	{
	    bosstype = obj_Wall_Of_Thoughts;
	    difficulty = 8;
	    global.champ = choose(0);
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
	    global.champ = choose(0);
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
	    bosstype = obj_Spirit_of_Mischief;
	    difficulty = 2;
	    global.champ = choose(0,1,2,8);
		//global.champ = choose(1,2,8);
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

	if bossform = 13.1 || bossform = 41.1 {
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

	difficulty += (2 * global.boost);
	difficulty += (0.25 * global.boost) * floor(baseDiff - 1);

	global.difficultyReward = difficulty;

	if bosstestactive = 1 {
		global.champ = champvar;
		global.boost = boostvar;
		//global.champ = roomNum - 1;
		return bosstype
	}

	var repeatBoss = 0;
	if i > roomNum {
		for(j = 1; j < roomNum; j++) {
			if bosstype = global.floor[j,21] {
				if global.champ = global.floor[j,22] {
					repeatBoss = 1;	
				}
			}
		}
	}
	
	if global.currentchapter = 4 {
		repeatBoss = 0;	
	}
	
	if bosstestactive = 1 {
		difficulty = roomDifficulty;
	}
	//scr_Hazard_Choose();
	//show_debug_message("roomNum: " + string(roomNum) + ", exclude: " + string(exclude) + ", difficultyAdd: " + string(difficultyAdd))
	//show_debug_message("roomDifficulty: " + string(roomDifficulty))
	//show_debug_message("boss: " + string(bossform) + ", champ: " + string(global.champ) + ", boost" + string(global.boost))

	var min_diff = (global.currentchapter * global.currentchapter) / 2
	if repeatBoss = 1 {
		return scr_Boss_Choose(roomNum, exclude);	
	} else {
		if (difficulty <= (roomDifficulty)) and (difficulty >= ((roomDifficulty) / 2)) {
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
