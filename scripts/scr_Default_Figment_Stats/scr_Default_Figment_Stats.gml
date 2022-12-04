function scr_Default_Figment_Stats() {
	projectile_hit_id = noone;
	projectile_hits = {}

	gembeam_hit_id = noone;
	global.gembeam_hits = {}

	scr_Soul_Particles();

	minmovedir = random(360);
	soulshotmouse = 0;

	soulinvincibility = 0;
	soulfade = 0;

	soulshotdirection = 0;
	
	sWeaponWarmUp = 0;
	sWeaponTicker = 0;

	Shot_Count = 1;

	hitType = "Nonboss";
	soulFadeDirect = "Down";

	gemBeamHeat = 0;
	gemDrawBeam = 0;
	gemBeamStandaloneHeat = 0;
	gemDrawStandaloneBeam = 0;


	sBeamNum = 0;
	sBeamNumMax = 100;
	sWeaponUseFrame = 0;

	sBeamAlpha = 0;
	sBeamFrame = 0;
	sBeamLife = 0;

	for(i = 0; i < sBeamNumMax; i++) {
	    bArrBeamAlpha[i] = 0;
	    bArrBeamFrame[i] = 0;
	    bArrBeamLife[i] = 0;
	    bShotCount[i] = 0;
    
	    bArrxx[i] = 0;
	    bArryy[i] = 0;
	    bArrxs[i] = 0;
	    bArrys[i] = 0;
	    bangle[i] = 0;
	    blength[i] = 0;
	    for(j = 0; j < 100; j++) {
	        bArrangle[i,j] = 0;
	        bArrlength[i,j] = 0;
	    }
	}
	
	/*for(bi = 0; bi < 10; bi++) {
		Shot_Repetition[bi] = 0;
		Shot_Repetition_Max[bi] = 0;
		Shot_Barrage_Speed[bi] = 0;
		alarm[11] = Shot_Barrage_Speed[bi];
		Shot_Repetition_Forward_Interval[bi] = 0;
	}*/
	for(bi = 0; bi < 10; bi++) {
		Shot_Repetition[bi] = 0;
		Shot_Repetition_Type[bi] = "Default";
		Shot_Repetition_Max[bi] = 0;
		Shot_Barrage_Speed[bi] = 0;
		Shot_Repetition_Direction[bi] = 0;
		alarm[11] = 1;
		Shot_Repetition_Forward_Interval[bi] = 0;
		Shot_Default_Count[bi] = 0;
	}
	bi = 0;
	
	TPCooldown = 0;

	shealth = 100;
	smaxhealth = 100;
	sfirerate = 100;
	spower = 10;
	spoweraddition = 0;
	smovementspeed = 0.5;
	sshotspeed = 10;
	sshotspeedaddition = 0;
	sshotknockback = 5;
	sshotknockbackaddition = 0;
	sknockbackdefense = 0;
	sknockbackforce = 5;
	scontactdamage = 5;
	sshotpierce = 0;

	sNoHitTime = 0;
	sWeaponOvertime = 0;
	sWeaponOvertimeTick = 0;

	sdelay = 10;
	senergy = 100;
	smaxenergy = 100;
	senergyconservationfactor = 1;
	senergyconservation = 0;
	sdelayconservationfactor = 1;
	sdelayconservation = 0;
	spower = 10;
	spoweradd = 0;
	spowerfactor = 0;
	sarmourpierce = 0;

	sdefensebuffduration = 0;
	sdefensebuffamount = 0;
	sattackfactorbuffduration = 0;
	sattackfactorbuffamount = 0;
	sregenfactorbuffduration = 0;
	sregenfactorbuffamount = 0;
	smovementfactorbuffduration = 0;
	smovementfactorbuffamount = 0;
	sfireratefactorbuffduration = 0;
	sfireratefactorbuffamount = 0;
	sshotlifefactor = 0;

	sshotsizefactor = 0;
	scritadd = 0;
	scritaddchance = 0;
	scontactdefenseadd = 0;
	scontactdefensefactor = 0;
	sshotamountadd = 0;
	sshotamountaddchance = 0;
	sshotamountaddtemp = 0;
	sdefenseadd = 0;
	sdefensebuffamount = 0;

	sminknockback = 0;
	sminknockbackdirection = 0;
	sminknockbacktime = 0;



}
