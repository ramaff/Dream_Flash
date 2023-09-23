function scr_Extra_Shot_Stats() {
	shotangle = other.Shot_Angle;
	shotframe = other.Shot_Frame;
	if other.Shot_Frames > 0 {
		shotframe = irandom(other.Shot_Frames)	
	}
	shotimagespeed = other.Shot_Image_Speed;
	
	shot_stats = json_parse(json_stringify(other.Shot_Stats));
	
	y -= shot_stats.Shot_Height;

	var shotaddedpow = ((10 + other.spowerfactor + other.sattackfactorbuffamount) / 10) * other.spower / 10 * scr_Class_Stat_Damage_Multiplier();

	image_rotation_speed = other.Shot_Image_Rotation_Speed;

	image = other.Weapon_Split_Visible;
	shothitagain = other.Weapon_Split_Hit_Again;
	shotmelee = other.Weapon_Melee;
	
	shotburststats = other.Shot_Burst_Stats;
	shotairburststats = other.Shot_Air_Burst_Stats;
	shotextrastats = other.Shot_Extra_Stats;
	
	shotbeam = other.Shot_Beam;
	
	//Print_DF("shotextrastats: " + string(shotextrastats))
	//Print_DF("Shot_Extra_Stats: " + string(other.Shot_Extra_Stats))
	

	if other.Shot_Sprite = spr_Marble_Shot {
	    shotframe = 1 + irandom(8);
	}

	image_angle = shotangle;
	image_index = shotframe;
	image_speed = shotimagespeed;
	image_alpha = other.Shot_Alpha;
	
	if other.Shot_Angles > -1 {
		image_angle = random(other.Shot_Angles)	
	}

	if other.Shot_Point_Angle = 1 {
		image_angle = direction;	
		shotpointangle = other.Shot_Point_Angle;
	}

	shot_id = id;

	if other.Shot_ID != -1 {
	    shot_id = other.Shot_ID;
	}

	shot_boss_id = real(shot_id);

	shotmousemaintain = other.Weapon_Mouse_Maintain;
	shotsoulmaintain = other.Weapon_Soul_Maintain;
	shotxmaintain = other.Weapon_X_Maintain;
	shotymaintain = other.Weapon_Y_Maintain;
	shotfolloworigin = other.id;
	shotmovement = other.Shot_Movement;
	shotkeepdirection = other.Shot_Keep_Direction;
	shotdamage = other.Shot_Damage;

	shottrail = other.Shot_Trail;
	shottrailtype = other.Shot_Trail_Type;
	shottrailsprite = other.Shot_Trail_Sprite;
	shottrailcolor1 = other.Shot_Trail_Color1;
	shottrailcolor2 = other.Shot_Trail_Color2;
	shottraillife = other.Shot_Trail_Life;
	shottrailarea = other.Shot_Trail_Area;
	shottrailfrequency = other.Shot_Trail_Frequency;
	shottrailfade = other.Shot_Trail_Fade;
	shottrailhitcount = other.Shot_Trail_Hit_Count;
	shottrailhitspeed = other.Shot_Trail_Hit_Speed;
	shottrailhitlife = other.Shot_Trail_Hit_Life;
	shottrailhitsprite = other.Shot_Trail_Hit_Sprite;
	shottrailhittype = other.Shot_Trail_Hit_Type;
	
	shotexplosionsprite = other.Shot_Explosion_Sprite;
	shotexplosionpart = other.Shot_Explosion_Part;
	shotexplosionsmoke = other.Shot_Explosion_Smoke;

	im = direction;
	baseDepth = other.Shot_Depth;

	shotduplicatesprite = other.Shot_Duplicate_Sprite;

	shotsouldamage = other.Shot_Soul_Damage;

	shotimaginary = other.Shot_Imaginary;
	shotsharpandsolid = other.Shot_Sharp_And_Solid;
	shotexplosive = other.Shot_Explosive;
	shotmagical = other.Shot_Magical;
	shotenergy = other.Shot_Energy;

	shotgrow = other.Shot_Grow;
	shotgrowtime = other.Shot_Grow_Time;
	shotgrowsize = other.Shot_Grow_Size;
	shotformshow = other.Shot_Form_Show;

	shotlobbing = other.Shot_Lobbing;
	shotfacedirection = other.Shot_Face_Direction;

	if shotlobbing >= 1 {
		shotbounceY = 0;
	    shotbouncespeed = 10;
	    shotbouncedirection = 1;	
	}

	shotwavedirection = other.Shot_Wave_Direction;
	shotwaveacceleration = other.Shot_Wave_Acceleration;
	shotwavetime = other.Shot_Wave_Time;
	
	shotscreenshake = other.Shot_Screen_Shake;

	var i = 0;
	for(i = 0; i < 5; i++) {
		shotextrahits[i] = other.Shot_Extra_Hits[i];
		shotextrahitssprite[i] = other.Shot_Extra_Hits_Sprite[i];
		shotextrahitfrequency[i] = other.Shot_Extra_Hit_Frequency[i];
		shotextrahitpower[i] = (other.Shot_Extra_Hit_Power[i] + other.spoweradd) * ((10 + other.spowerfactor + other.sattackfactorbuffamount) / 10) * other.spower / 10 * scr_Class_Stat_Damage_Multiplier();
		shotextrahitspeed[i] = other.Shot_Extra_Hit_Speed[i];
		shotextrahitlifespan[i] = other.Shot_Extra_Hit_Lifespan[i];
		shotextrahithoming[i] = other.Shot_Extra_Hit_Homing[i];
		shotextrahithomingspeed[i] = other.Shot_Extra_Hit_Homing_Speed[i];
		shotextrahitpierce[i] = other.Shot_Extra_Hit_Pierce[i];
		shotextrahitacceleration[i] = other.Shot_Extra_Hit_Acceleration[i];
		alarm[1] = 1 + shotextrahitfrequency[i];
	
		shotextrahitsize[i] = other.Shot_Extra_Hit_Size[i];
		shotextrahitshrink[i] = other.Shot_Extra_Hit_Shrink[i];
		shotextrahitfade[i] = other.Shot_Extra_Hit_Fade[i];
	}
	shotextrahitxx = other.Shot_Extra_Hit_XX;
	shotextrahityy = other.Shot_Extra_Hit_YY;

	shotacceleration = other.Shot_Acceleration;
	shotfriction = other.Shot_Friction;
	shotminspeed = other.Shot_Min_Speed;

	shotorbitaltype = other.Shot_Orbital_Type;
	shotOrbit = other.Shot_Orbital_Range;

	target = noone;
	otarget = noone;

	if shotorbitaltype > 0 {
	    target = other;
		otarget = other.id;
	}

	shotcontinue = other.Shot_Continue;

	shotcritchance = other.Shot_Crit_Chance + other.scritaddchance;
	shotcritmultiple = other.Shot_Crit_Multiple + other.scritadd;
	shotmelee = other.Shot_Melee;
	shotairtarget = other.Shot_Air_Target;
	shotphasing = other.Shot_Phasing;
	shotlooping = other.Shot_Looping;
	shotcomeback = other.Shot_Comeback;
	shotpierce = other.Shot_Pierce + other.sshotpierce;
	shotarmourpierce = other.Shot_Armour_Pierce + other.sarmourpierce;
	shotarmourtear = other.Shot_Armour_Tear;
	shotbounce = other.Shot_Bounce;
	shotchain = other.Shot_Chain;
	shotchaintype = other.Shot_Chain_Type;
	shotchainpower = (other.Shot_Chain_Power + other.spoweradd) * shotaddedpow;
	shotchainrange = other.Shot_Chain_Range;
	shotchainspeed = other.Shot_Chain_Speed;
	shothomingtype = other.Shot_Homing_Type;
	shothomingrange = other.Shot_Homing_Range;
	shothomingspeed = other.Shot_Homing_Speed;
	shotimpactpower = (other.Shot_Impact_Power + other.spoweradd) * shotaddedpow;
	shotImpactPowerLevel = other.Shot_Impact_Power;
	shotimpacttype = other.Shot_Impact_Type;
	shotimpactsize = other.Shot_Impact_Size;
	shotimpactexplode = other.Shot_Impact_Explode;
	
	shotbursttype = other.Shot_Burst_Type;
	shotburstamount = other.Shot_Burst_Amount;
	shotburstpower = (other.Shot_Burst_Power + other.spoweradd) * shotaddedpow;
	shotburstspeed = other.Shot_Burst_Speed;
	shotburstlifespan = other.Shot_Burst_Lifespan;
	shotbursthoming = other.Shot_Burst_Homing;
	shotbursthomingspeed = other.Shot_Burst_Homing_Speed;
	shotburstpierce = other.Shot_Burst_Pierce;
	shotburstextrahits = other.Shot_Burst_Extra_Hits;
	shotburstextrahitfrequency = other.Shot_Burst_Extra_Hit_Frequency;
	shotburstextrahitpower = other.Shot_Burst_Extra_Hit_Power;
	shotburstrange = other.Shot_Burst_Range;
	shotburstspread = other.Shot_Burst_Spread / other.saccuracy;
	shotburstbulletdisplacement = other.Shot_Burst_Bullet_Displacement;
	shotburstpointangle = other.Shot_Burst_Point_Angle;
	shotburstimpact = other.Shot_Burst_Impact;
	
	shotaura = other.Shot_Aura;
	shotaurapower = other.Shot_Aura_Power;
	shotaurarange = other.Shot_Aura_Range;
	shotaurasprite = other.Shot_Aura_Sprite;
	
	shotshieldtype = other.Shot_Shield_Type;
	shotshieldpower = (other.Shot_Shield_Power + other.spoweradd) * shotaddedpow;
	shotreboundtype = other.Shot_Rebound_Type;
	shotreboundpower = (other.Shot_Rebound_Power + other.spoweradd) * shotaddedpow;
	shotweaken = other.Shot_Weaken;
	shotweakentime = other.Shot_Weaken_Time;
	shotpoison = other.Shot_Poison * shotaddedpow;
	shotpoisontime = other.Shot_Poison_Time;
	shotpoisonticks = other.Shot_Poison_Ticks;
	

	if scr_Chance(1 / other.Shot_Bleed_Chance) {
		shotbleed = other.Shot_Bleed * shotaddedpow;
		shotbleedtime = other.Shot_Bleed_Time;
		shotbleedticks = other.Shot_Bleed_Ticks;
	}
	shotfire = other.Shot_Fire * shotaddedpow;
	shotfiretime = other.Shot_Fire_Time;
	shotfireticks = other.Shot_Fire_Ticks;
	if scr_Chance(1 / other.Shot_Freeze_Chance) {
		shotfreezetype = other.Shot_Freeze_Type;
		shotfreeze = other.Shot_Freeze;
		shotfreezetime = other.Shot_Freeze_Time;
	}
	shotlight = other.Shot_Light;
	shotlightsize = other.Shot_Light_Size;

	shothealing = other.Shot_Healing;
	shotlifedrain = other.Shot_Life_Drain;
	shotessencedrain = other.Shot_Essence_Drain;

	shotinitspeed = shotspeed;
	
	shotspeedpoweradd = other.Shot_Speed_Power_Add;
	shotbulletredirect = other.Shot_Bullet_Redirect;
	shotbulletredirectchance = other.Shot_Bullet_Redirect_Chance;
	shotbulletdisplace = other.Shot_Bullet_Displace;
	
	shotsnakemove = other.Shot_Snake_Move;
	
	shottargetX = other.Shot_Target_X;
	shottargetY = other.Shot_Target_Y;
	
	shotrecyle = other.Shot_Recycle;
	shotaccuracy = other.Shot_Accuracy / global.soulaccuracy;
	
	shotwander = other.Shot_Wander;
	
	shotwishful = other.Shot_Wishful;
	shotsuck = other.Shot_Suck;
	
	shotangularvelocity = other.Shot_Angular_Velocity;

	scr_State_Weapon_Mod();
	
	if shotorigin = obj_Soul_Parent {
		scr_A06();
		
		scr_E06();
		scr_E07();
		scr_U01();
		scr_U05();
	
		//scr_V06();
		scr_V08();
		scr_V09_old();
	
		scr_P06();
		scr_P07();
	
		scr_U08();
		scr_U09();
		
		scr_D10_Shot_Mod();
		
		scr_OA04();
		scr_OA06();
		
		if global.XA[2] > 0 {
			scr_XA02_Shot_Mod();	
		}
		scr_XA03_Shot_Mod();
		scr_XA04_Shot_Mod();
		
		//scr_XB02();
		
		if global.XC[2] > 0 {
			scr_XC02_Shot_Mod();
		}
		
	}
	
	scr_XC06_Setup();
	
	shotsizemax = shotsize;
	

}
