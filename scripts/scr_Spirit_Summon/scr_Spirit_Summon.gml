function scr_Spirit_Summon(bossform = obj_Masked_Hope_Spirit) {

	if bossform != obj_Masked_Hope_Spirit and bossform != obj_Masked_Bliss_Spirit and bossform != obj_Masked_Vanity_Spirit and bossform != obj_Masked_Loathing_Spirit and bossform != obj_Masked_Paranoia_Spirit and bossform != obj_Masked_Despair_Spirit {
	    exit;
	}

	var numBoss = 1;

	var bossOrder = 1;

	var xx = choose(750,-750);
	var yy = choose(750,-750);

	//repeat(numBoss) {
		if object_exists(bossform) {
		    with (instance_create(room_width/2+xx,room_height/2+yy,bossform)) {
		        difficulty = other.bossDifficulty;
		        bossNum = bossOrder;
		        bossOrder++;
				global.bosscount++;
		    } 
		}
	//}





}
