function scr_Soul_Utility_Setup() {
	soulinvincibility = 0;
	soulfade = 0;
	soulDeathFadeSpeed = 0;
	baseDepth = -0.01;
	soulSpiritHits = 0;
	
	soul_underground = -1;

	soulshotmouse = 1;
	soulshotdirection = 0;
	
	soulAcceleration = 1;
	soulFriction = 1;
	soulCurrentHorizontalSpeed = 0;	
	soulCurrentVerticalSpeed = 0;
	soulCurrentDirection = 0;
	
	
	soulmovetimer = 0;

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

	//scr_Soul_Status_Setup();

	sBeamSprite = spr_Soul_Shot;
	sBeamNum = 0;
	sBeamNumMax = 32;
	sWeaponUseFrame = 0;

	sBeamAlpha = 0;
	sBeamFrame = 0;
	sBeamLife = 0;
	
	umbrellaActive = false;
	
	var _i;
	for(_i = 0; _i < 10; _i++) {
		Shot_Repetition[_i] = 0;
		Shot_Repetition_Stats[_i] = false;
		Shot_Repetition_Type[_i] = "Default";
		Shot_Repetition_Max[_i] = 0;
		Shot_Barrage_Speed[_i] = 0;
		Shot_Repetition_Direction[_i] = 0;
		alarm[11] = 1;
		Shot_Repetition_Forward_Interval[_i] = 0;
		Shot_Default_Count[_i] = 0;
	}
	bi = 0;
	
	alarm[2] = 5;
	alarm[3] = 1;
	alarm[4] = 5;
	alarm[5] = 60;
	alarm[6] = 15;
	
	scr_Set_Soul_Scripts(id)
	soul_step_status_effects = {}
	soul_status_effects = {}
	soul_draw_status_effects = {}



}
