function scr_Boss_Status_Setup(version=1) {
	projectile_hit_id = noone;
	//projectile_hits = ds_list_create();
	projectile_hits = {};

	bossID = id;

	bossNum = 0;

	pathBoss = 0;

	if version = 1 {
		scr_Boss_Dash_Setup();
	} else {
		scr_Boss_Dash_Setup_v2();
	}

	currentphase = 1;
	finalphase = 2;

	patterncount = 0;
	patterndirection = 0;
	bossbeamattackactive = 0;

	bossReaction = 0;
	
	//bossHeight = 0;

	enum states {
		normal,
		jumping,
		leaping,
		digging,
		spawned,
		phasing
	}

	state = states.normal;
	
	if instance_exists(Mind_Chamber_Room_Control) {
		state = states.spawned;	
		alarm[11] = 150;
		image_speed = 0;
		path_speed = 0;
	}
	
	init_path_position = path_position;
	alarm[7] = 3;
	//state = states.spawned;


	    bossImaginaryResistance = 0;
	    bossSharpSolidResistance = 0;
	    bossMagicResistance = 0;
	    bossExplosiveResistance = 0;
	    bossEnergyResistance = 0;
    
	    for(i = 0; i <= 49; i++) {
	        bosspoison[i] = 0;
	        bosspoisontime[i] = 0;
	        bosspoisonmaxtime[i] = 0;
	        bosspoisonticks[i] = 0;
        
	        bossbleed[i] = 0;
	        bossbleedtime[i] = 0;
	        bossbleedmaxtime[i] = 0;
	        bossbleedticks[i] = 0;
        
	        bossstagger[i] = 0;
	        bossstaggertime[i] = 0;
        
	        bossfreeze[i] = 0;
	        bossfreezetime[i] = 0;
        
	        bossfire[i] = 0;
	        bossfiretime[i] = 0;
	        bossfiremaxtime[i] = 0;
	        bossfireticks[i] = 0;
        
	        bossweaken[i] = 0;
	        bossweakentime[i] = 0;
        
	    }
    
	    bossfreezetype = 0;
	    bossfreeze = 0;
	    bossfreezetime = 0;
    
	    bossstun = 0;
	    bossstuntime = 0;
    
	    bossknockback = 0;
	    bossknockbackdirection = 0;
	    bossknockbacktime = 0;
	    bossknockbackmaxtime = 0;



}
