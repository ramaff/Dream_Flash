function scr_Boss_Step() {
	scr_Next_Phase_Check();
	scr_Boss_Attack_Step();
	//scr_Boss_Status_Step();
	scr_Boss_Morph_In();
	//scr_Room_Depth(0);

	if boost = 1 {
	    val = irandom(6)
	    if val = 6 {
	        with instance_create(x,y,obj_Boost_Spark) {
	            alarm[0] = 15 + random(60);
	            speed = 0.2 + random(1);
	            direction = random(360);
	        }
	    }
	}

}
