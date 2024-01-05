function scr_Default_Shot_Stats() {
	//global.instanceidincrementer = 1;
	shot_id = global.instanceidincrementer - 1;
	shot_boss_id = shot_id;
	
	shotexisttime = 0;

	bullet_hits = {}
	
	shot_stats = {};

	image = 0;
	shothitagain = 0;

	shotorigin = noone;
	shotgem = 0;
	
	shotaccuracy = 15;
	shotdamage = true;

	shotmousemaintain = 0;
	shotsoulmaintain = 0;
	shotxmaintain = 0;
	shotymaintain = 0;
	shotdirectionaddition = 0;
	shotformshow = 1;
	shotmovement = 1;
	shothealemit = 0;
	shotlight = 0;
	shotlightsize = 0;
	shotfolloworigin = 0
	
	feartarget = noone;

	shottrail = 0;
	shottrailtype = obj_Weapon_Trail;
	shottrailhittype = obj_Friction_Part;
	shottrailsprite = spr_Essence_Trail_Bit;
	shottrailcolor1 = c_white;
	shottrailcolor2 = c_white;
	shottraillife = 15;
	shottrailarea = 12;
	shottrailspeed = 0;
	shottraildirection = 0;
	shottrailfrequency = 1;
	shottrailfade = 1;
	shottrailhitcount = 7;
	shottrailhitspeed = 10;
	shottrailhitlife = 7;
	shottrailhitsprite = spr_Soul_Bit;
	
	shotbeam = 0;
	
	shotexplosionsprite = spr_Explosion_Part;
	shotexplosionpart = spr_Explosion_Part;
	shotexplosionsmoke = spr_Essence_Trail_Bit;

	shotPowerLevel = 0;

	target = noone;
	otarget = noone;

	shotspeed = 0.4 * other.sshotspeed;
	shotpower = 1 * other.spower * ((40 + global.soulstrength) / 40);
	shotpowermax = shotpower;
	shotknockback = 1 * other.sshotknockback;
	shotlifespan = 100;
	shotsize = 1;
	shotsizemax = 1;
	shotsouldamage = 0;
	shotmelee = 0;
	shotpointangle = 0;
	shotkeepdirection = 0;
	shotSizeRelation = 1;

	shotinitspeed = shotspeed;

	shotduplicatesprite = spr_Soul_Shot;

	move_towards_point(mouse_x,mouse_y, shotspeed);
	direction += (-2.5 + random(5)) / other.saccuracy;
	alarm[0] = shotlifespan;
	baseDepth = 0;

	shotimaginary = 1;
	shotsharpandsolid = 0;
	shotexplosive = 0;
	shotmagical = 0;
	shotenergy = 0;

	shotgrow = 0;
	shotgrowtime = 0;
	shotgrowsize = 0;

	shotwavedirection = 0;
	shotwaveacceleration = 0;
	shotwavetime = 0;

	shotlobbing = 0;
	shotfacedirection = 0;
	
	shotscreenshake = 0;

	var i = 0;
	for(i = 0; i < 5; i++) {
		shotextrahits[i] = 0;
		shotextrahitssprite[i] = shotduplicatesprite; 
		shotextrahitfrequency[i] = 0;
		shotextrahitpower[i] = 0;
		shotextrahitspeed[i] = 0;
		shotextrahitlifespan[i] = 0;
		shotextrahithoming[i] = 0;
		shotextrahithomingspeed[i] = 0;
		shotextrahitpierce[i] = 1;
		shotextrahitacceleration[i] = 0;
		shotextrahitsize[i] = 1;
		shotextrahitshrink[i] = 0;
		shotextrahitfade[i] = 0;
	}
	shotextrahitxx = 0;
	shotextrahityy = 0;
	
	shotshrink = 0;
	shotfade = 0;

	shotacceleration = 0;
	shotfriction = 0;
	shotminspeed = 0;

	shotcritchance = 0;
	shotcritmultiple = 1;

	shotorbitaltype = 0;
	shotOrbit = 0;
	shotAngle = 0;

	shotmelee = 0;
	shotairtarget = 0;
	shotphasing = 0;
	shotlooping = 0;
	shotcomeback = 0;
	shotpierce = 1;
	shotbounce = 0;
	shotarmourpierce = 0;
	shotarmourtear = 0;
	shotchain = 0;
	shotchainpower = 0;
	shotchaintype = 0;
	shotchainrange = 0;
	shotchainspeed = 0;
	shothomingtype = 0;
	shothomingrange = 0;
	shothomingspeed = 0;
	shotcontinue = 0;
	shothealing = 0;

	shotImpactPowerLevel = 0;

	shotimpactpower = 0;
	shotimpacttype = 0;
	shotimpactsize = 0;
	shotimpactexplode = 1;
	
	shotbursttype = 0;
	shotburstamount = 0;
	shotburstpower = 10;
	shotburstspeed = 0;
	shotburstlifespan = 0;
	shotbursthoming = 0;
	shotbursthomingspeed = 0;
	shotburstpierce = 1;
	shotburstextrahits = 0;
	shotburstextrahitfrequency = 0;
	shotburstextrahitpower = 0;
	shotburstrange = 0;
	shotburstspread = 0;
	shotburstbulletdisplacement = 0;
	shotburstpointangle = 0;
	shotburstimpact = 0;
	
	shotburststats = false;
	shotairburststats = false;
	shotextrastats = false;
	
	shotaura = 0;
	shotaurapower = 0;
	shotaurarange = 0;
	shotaurasprite = 0;
	
	shotrecycle = 0;
	
	shotshieldtype = 0;
	shotshieldpower = 0;
	shotreboundtype = 0;
	shotreboundpower = 0;
	shotweaken = 0;
	shotweakentime = 0;
	shotpoison = 0;
	shotpoisontime = 0;
	shotpoisonticks = 0;
	shotbleed = 0;
	shotbleedtime = 0;
	shotbleedticks = 0;
	shotfire = 0;
	shotfiretime = 0;
	shotfireticks = 0;
	shotfreezetype = 0;
	shotfreeze = 0;
	shotfreezetime = 0;
	shotlifedrain = 0;
	shotessencedrain = 0;
	
	shotsnakemove = 0;
	shottargetX = 0;
	shottargetY = 0;

	shotspeedpoweradd = 0;
	shotbulletredirect = 0;
	shotbulletredirectchance = 0;
	shotbulletdisplace = 0;
	
	shotwander = 0;
	
	shotangularvelocity = 0;
	
	shotwishful = 0;
	shotmiracle = 0;
	
	shotsucktype = 1;
	shotsuck = 0;
	
	followtarget = noone;
	
	scr_A07_Setup();

}
