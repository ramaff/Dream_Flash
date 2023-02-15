function scr_Duplicate_Shot_Stats() {
	shothitagain = other.shothitagain;
	if shothitagain = 0 {
	    shot_id = other.shot_id;
		shot_boss_id = other.shot_boss_id;
		bullet_hits = other.bullet_hits;
	} else {
	    shot_id = id;
		shot_boss_id = real(shot_id);
		bullet_hits = {};
	}
	
	shot_stats = json_parse(json_stringify(other.shot_stats));
	
	//ptype = other.ptype;

	target = other.target;
	otarget = other.otarget;
	shotgem = other.shotgem;
	
	otarget = noone;
	
	shotaccuracy = other.shotaccuracy
	shotdamage = other.shotdamage

	shotangle = other.shotangle;
	shotframe = other.shotframe;
	shotimagespeed = other.shotimagespeed;
	shotmelee = other.shotmelee;
	shotformshow = other.shotformshow;
	shothealing = other.shothealing;
	shothealemit = other.shothealemit;
	shotmovement = other.shotmovement;
	shotfolloworigin = other.shotfolloworigin;
	shotxmaintain = other.shotxmaintain;
	shotymaintain = other.shotymaintain;
	shotSizeRelation = other.shotSizeRelation;

	shottrail = other.shottrail;
	shottrailtype = other.shottrailtype;
	shottrailsprite = other.shottrailsprite;
	shottrailcolor1 = other.shottrailcolor1;
	shottrailcolor2 = other.shottrailcolor2;
	shottraillife = other.shottraillife;
	shottrailarea = other.shottrailarea;
	shottrailfrequency = other.shottrailfrequency;
	shottrailfade = other.shottrailfade;
	shottrailhitcount = other.shottrailhitcount;
	shottrailhitspeed = other.shottrailhitspeed;
	shottrailhitlife = other.shottrailhitlife;
	shottrailhitsprite = other.shottrailhitsprite;	
	shottrailhittype = other.shottrailhittype;
	
	shotexplosionsprite = other.shotexplosionsprite;
	shotexplosionpart = other.shotexplosionpart;
	shotexplosionsmoke = other.shotexplosionsmoke;

	image_rotation_speed = other.image_rotation_speed;

	shotorigin = other.shotorigin;

	shotduplicatesprite = other.shotduplicatesprite;
	sprite_index = other.shotduplicatesprite;
	image_angle = shotangle;
	image_index = shotframe;
	image_speed = shotimagespeed;
	image = other.image
	image_alpha = other.image;
	shotpointangle = other.shotpointangle;
	shotkeepdirection = other.shotkeepdirection;
	if shotkeepdirection = 1 {
		shotpointangle = 1;	
	}

	im = direction;

	shotPowerLevel = other.shotPowerLevel;
	shotImpactPowerLevel = other.shotImpactPowerLevel;
	shotspeed = other.shotspeed;
	shotknockback = other.shotknockback;
	shotlifespan = other.shotlifespan;
	shottimer = shotlifespan;
	
	shotexisttime = other.shotexisttime;

	shotinitspeed = shotspeed;

	shotsize = other.shotsize;
	if other.shotburststats = false {
		shotpower = other.shotburstpower;
	} else {
		shotpower = other.shotpower;	
	}
	
	if other.shotairburststats != false {
		shotpower = other.shotpower;
	}
	
	/*
	var oshotburststats = other.shotburststats
	
	if oshotburststats = false {
		shotpower = other.shotburstpower;
	} else {
		shotpower = other.shotpower;	
		shotsize = other.shotsize;
		if variable_struct_exists(oshotburststats, "Burst_Power") {
			shotpower = oshotburststats.Burst_Power;
		}
		if variable_struct_exists(oshotburststats, "Burst_Size") {
			shotsize = oshotburststats.Burst_Size;
		}
	}
	*/
	
	image_xscale = shotsize;
	image_yscale = shotsize;
	shotsizemax = other.shotsizemax;
	shotpowermax = shotpower;
	
	shotscreenshake = other.shotscreenshake - 5;

	shotsouldamage = other.shotsouldamage * other.shotburstpower / 10;

	shotmousemaintain = other.shotmousemaintain;
	shotsoulmaintain = other.shotsoulmaintain;
	shotdirectionaddition = other.shotdirectionaddition;

	shotgrow = other.shotgrow;
	shotgrowtime = other.shotgrowtime;
	shotgrowsize = other.shotgrowsize;

	shotlobbing = other.shotlobbing;
	shotfacedirection = other.shotfacedirection;
	shotbounceY = 0;
	shotbouncespeed = 10;
	shotbouncedirection = 1;

	if shotlobbing = 1 {
		shotbounceY = 0;
	    shotbouncespeed = 10;
	    shotbouncedirection = 1;	
	}

	shotwavedirection = other.shotwavedirection;
	shotwaveacceleration = other.shotwaveacceleration;
	shotwavetime = other.shotwavetime;
	
	shotacceleration = other.shotacceleration

	var i = 0;
	for(i = 0; i < 5; i++) {
		shotextrahits[i] = other.shotextrahits[i];
		shotextrahitssprite[i] = other.shotextrahitssprite[i]; 
		shotextrahitfrequency[i] = other.shotextrahitfrequency[i];
		shotextrahitpower[i] = other.shotextrahitpower[i];
		shotextrahitspeed[i] = other.shotextrahitspeed[i];
		shotextrahitlifespan[i] = other.shotextrahitlifespan[i];
		shotextrahithoming[i] = other.shotextrahithoming[i];
		shotextrahithomingspeed[i] = other.shotextrahithomingspeed[i];
		shotextrahitpierce[i] = other.shotextrahitpierce[i];
		shotextrahitacceleration[i] = other.shotextrahitacceleration[i];
		alarm[1] = 1 + shotextrahitfrequency[i];
	
		shotextrahitsize[i] = other.shotextrahitsize[i];
		shotextrahitshrink[i] = other.shotextrahitshrink[i];
		shotextrahitfade[i] = other.shotextrahitfade[i];
	}
	shotextrahitxx = other.shotextrahitxx;
	shotextrahityy = other.shotextrahityy;
	
	shotshrink = other.shotshrink;
	shotfade = other.shotfade;
	
	baseDepth = other.baseDepth;

	shotfriction = 0;
	shotminspeed = 0;

	shotimaginary = other.shotimaginary;
	shotsharpandsolid = other.shotsharpandsolid;
	shotexplosive = other.shotexplosive;
	shotmagical = other.shotmagical;
	shotenergy = other.shotenergy;

	shotorbitaltype = other.shotorbitaltype;
	shotOrbit = other.shotOrbit;

	shotcontinue = other.shotcontinue;

	shotcritchance = other.shotcritchance;
	shotcritmultiple = other.shotcritmultiple;
	shotmelee = other.shotmelee;
	shotairtarget = other.shotairtarget;
	shotphasing = other.shotphasing;
	shotlooping = other.shotlooping;
	shotcomeback = other.shotcomeback;
	shotpierce = other.shotpierce;
	shotbounce = other.shotbounce;
	shotarmourpierce = other.shotarmourpierce;
	shotarmourtear = other.shotarmourtear;
	shotchain = other.shotchain;
	shotchaintype = other.shotchaintype;
	shotchainpower = other.shotchainpower;
	shotchainrange = other.shotchainrange;
	shotchainspeed = other.shotchainspeed;
	shothomingtype = other.shothomingtype;
	shothomingrange = other.shothomingrange;
	shothomingspeed = other.shothomingspeed;
	shotimpactpower = other.shotimpactpower;
	shotimpactexplode = other.shotimpactexplode;
	shotimpacttype = other.shotimpacttype;
	shotimpactsize = other.shotimpactsize;
	
	
	if other.shotbursttype = 2 {
		shotspeed = other.shotburstspeed;	
		shotlifespan = other.shotburstlifespan;
		shotpierce = other.shotburstpierce;
		i = 0;
		shotextrahits[i] = other.shotburstextrahits;
		shotextrahitfrequency[i] = other.shotburstextrahitfrequency;
		shotextrahitpower[i] = other.shotburstextrahitpower;
		shotbulletdisplace = other.shotburstbulletdisplacement;
		shotpointangle = other.shotburstpointangle;
		shotimpacttype = other.shotburstimpact;
	}

	shotburststats = false;
	shotairburststats = false;
	shotextrastats = other.shotextrastats;
	
	shotbursttype = -1;
	shotburstamount = 0;
	shotburstpower = 0;
	shotburstspeed = 0;
	shotburstlifespan = 0;
	shotbursthoming = 0;
	shobursthomingspeed = 0;
	shotburstpierce = 0;
	shotburstrange = 0;
	shotburstspread = 0;
	
	shotaura = other.shotaura;
	shotaurapower = other.shotaurapower;
	shotaurarange = other.shotaurarange;
	shotaurasprite = other.shotaurasprite;
	
	shotrecycle = other.shotrecycle;
	
	shotshieldtype = other.shotshieldtype;
	shotshieldpower = 0;
	shotreboundtype = other.shotreboundtype;
	shotreboundpower = 0;
	shotweaken = other.shotweaken;
	shotweakentime = other.shotweakentime;
	shotpoison = other.shotpoison;
	shotpoisontime = other.shotpoisontime;
	shotpoisonticks = other.shotpoisonticks;
	shotbleed = other.shotbleed;
	shotbleedtime = other.shotbleedtime;
	shotbleedticks = other.shotbleedticks;
	shotfire = other.shotfire;
	shotfiretime = other.shotfiretime;
	shotfireticks = other.shotfireticks;
	shotfreezetype = other.shotfreezetype;
	shotfreeze = other.shotfreeze;
	shotfreezetime = other.shotfreezetime;
	shotlight = other.shotlight;
	shotlightsize = other.shotlightsize;
	shotlifedrain = other.shotlifedrain;
	shotessencedrain = other.shotessencedrain;
	
	shotspeedpoweradd = other.shotspeedpoweradd;
	
	shottargetX = other.shottargetX;
	shottargetY = other.shottargetY;
	
	shotsnakemove = 0;
	
	if shotorbitaltype > 0 {
		shotOrbit = other.shotOrbit;
		shotAngle = other.shotAngle;
		shotCenterX = other.shotCenterX;
		shotCenterY = other.shotCenterY;
	}
	
	shotbulletredirect = other.shotbulletredirect;
	shotbulletredirectchance = other.shotbulletredirectchance;
	
	if other.shotbursttype != 2 {
		shotbulletdisplace = other.shotbulletdisplace;
	}
	
	shotwander = other.shotwander;
	
	shotwishful = other.shotwishful;
	shotmiracle = other.shotmiracle;
	
	shotsuck = other.shotsuck;
	
	shotangularvelocity = other.shotangularvelocity;
	
	shotA07 = other.shotA07;
	followtarget = other.followtarget;
	
	/*
	if other.shotextrahits = 2 {
		shotlifespan = other.shotextrahitlifespan;	
	}
	*/

	direction = other.direction + other.dir;
	speed = shotspeed;
	alarm[0] = shotlifespan;
	alarm[2] = 1;
	alarm[3] = 15;

	scr_Shot_Particle_Setup();

}
