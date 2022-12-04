function scr_Boss_Spawn() {
	var bosstype = noone;

	numBoss = 1;

	if bossform = 1.1 {
	    bosstype = obj_Wall_Watcher;
	}

	if bossform = 2.1 {
	    bosstype = obj_Mine_Watcher;
	}

	if bossform = 3.1 {
	    bosstype = obj_Growing_Sorrows;
	}

	if bossform = 4.1 {
	    bosstype = obj_Soaring_Sorrows;
	}

	if bossform = 5.1 {
	    bosstype = obj_Thought_Cloud;
	}

	if bossform = 6.1 {
	    bosstype = obj_Infatuation_Cloud;
	}

	if bossform = 9.1 {
	    bosstype = obj_Amorphous_Jello;
	}

	if bossform = 10.1 {
	    bosstype = obj_Agony_Amorphous;
	}

	if bossform = 11.1 {
	    bosstype = obj_Amorphous_Prime;
	}

	if bossform = 12.1 {
	    bosstype = obj_Hand_of_the_Accuser;
	}

	if bossform = 14.1 {
	    bosstype = obj_Spooked_Spirit;
	}

	if bossform = 15.1 {
	    bosstype = obj_Wicked_Spectre;
	}

	if bossform = 16.1 {
	    bosstype = obj_Horror_Stack;
	}

	if bossform = 17.1 {
	    bosstype = obj_Twister_Demon;
	}

	if bossform = 18.1 {
	    bosstype = obj_Fire_Starter;
	}

	if bossform = 19.1 {
	    bosstype = obj_Tri_Ghoul;
	}

	if bossform = 20.1 {
	    bosstype = obj_Manifest_Core;
	}

	if bossform = 21.1 {
	    bosstype = obj_Blind_Hunger;
	}

	if bossform = 22.1 {
	    bosstype = obj_Guardian_of_Knowing;
	}

	if bossform = 23.1 {
	    bosstype = obj_Heart_Ache;
	}

	if bossform = 24.1 {
	    bosstype = obj_Ninja_Spirit;
	}

	if bossform = 25.1 {
	    bosstype = obj_Wisper;
	}

	if bossform = 26.1 {
	    bosstype = obj_Manic_Wall_Mage;
	}

	if bossform = 27.1 {
	    bosstype = obj_Crazy_Eye;
	    numBoss = 2;
	}
	
	if bossform = 40.1 {
	    bosstype = obj_Villain;
	}
	
	if bossform = 51.1 {
	    bosstype = obj_Flash_Knight;
	}

	if bossform = 64.1 {
	    bosstype = obj_Puck;
	}

	if bossform = 65.1 {
	    bosstype = obj_Puck_Mass;
	}

	if bossform = 98.1 {
	    bosstype = obj_Spirit_of_Mischief;
	}



	repeat(numBoss) {
	    with (instance_create(1024,576,bosstype)) {
	            difficulty = other.difficulty;
	            champ = global.champ;
	            boost = global.boost;   
	    } 
	    if global.boost = 2
	    with (instance_create(1024,576,bosstype)) {
	            difficulty = other.difficulty;
	            champ = global.champ;
	            boost = global.boost;
	            path_position = 0.5;
	            global.bosscount += 1;
	    } 
	}
	global.bosscount += numBoss;



}
