function scr_Soul_Utility_Setup() {
	soulinvincibility = 0;
	soulfade = 0;
	soulDeathFadeSpeed = 0;
	baseDepth = -0.01;
	soulSpiritHits = 0;

	soulshotmouse = 1;
	soulshotdirection = 0;
	
	soulAcceleration = 1;
	soulFriction = 1;
	soulCurrentHorizontalSpeed = 0;	
	soulCurrentVerticalSpeed = 0;
	soulCurrentDirection = 0;
	
	soulmovetimer = 0;
	
	Charge_Hold = 0;

	sNoHitTime = 0;
	sWeaponOvertime = 0;
	sWeaponOvertimeTick = 0;
	sWeaponTicker = 0;
	
	// Ticked Down in scr_Soul_Ttem_Step_Before
	sWeaponWarmUp = 0;

	Shot_Count = 1;

	sWindGustTime = 0;

	hitType = "Nonboss";
	soulFadeDirect = "Down";
	
	weaponcharge = 0;

	perX = x;
	perY = y;
	TPCooldown = 0;
	
	soulSizeX = 0.5;
	soulSizeY = 0.5;

	enum soulStates {
		normal,
		slashing,
		transitioning,
	}

	soulState = soulStates.normal;

	scr_Soul_Status_Setup();

	sBeamSprite = spr_Soul_Shot;
	sBeamNum = 0;
	sBeamNumMax = 32;
	sWeaponUseFrame = 0;

	sBeamAlpha = 0;
	sBeamFrame = 0;
	sBeamLife = 0;
	
	umbrellaActive = false;

	for(i = 0; i < sBeamNumMax; i++){
	    bArrBeamAlpha[i] = 0;
	    bArrBeamFrame[i] = 0;
	    bArrBeamLife[i] = 0;
	    bShotCount[i] = 0;
    
	    bangle[i] = 0;
	    blength[i] = 0;
	    for(j = 0; j < 32; j++) {
	        bArrangle[i,j] = 0;
	        bArrlength[i,j] = 0;
	        bArrxx[i,j] = 0;
	        bArryy[i,j] = 0;
	        bArrxs[i,j] = 0;
	        bArrys[i,j] = 0;
	    }
	}
	
	for(bi = 0; bi < 10; bi++) {
		Shot_Repetition[bi] = 0;
		Shot_Repetition_Stats[bi] = false;
		Shot_Repetition_Type[bi] = "Default";
		Shot_Repetition_Max[bi] = 0;
		Shot_Barrage_Speed[bi] = 0;
		Shot_Repetition_Direction[bi] = 0;
		alarm[11] = 1;
		Shot_Repetition_Forward_Interval[bi] = 0;
		//Shot_Default_Count[bi] = 0;
	}
	bi = 0;
	
	alarm[2] = 5;
	alarm[3] = 1;
	alarm[4] = 5;
	alarm[5] = 60;
	alarm[6] = 15;



}
