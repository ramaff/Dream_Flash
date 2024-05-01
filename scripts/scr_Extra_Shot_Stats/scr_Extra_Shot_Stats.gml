function scr_Extra_Shot_Stats() {
	//shot_stats.Shot_Angle = other.Shot_Angle;
	//shot_stats.Shot_Frame = other.Shot_Frame;
	if shot_stats.Shot_Frames > 0 {
		shot_stats.Shot_Frame = irandom(shot_stats.Shot_Frames)	
	}
	//shot_stats.Shot_Image_Speed = other.Shot_Image_Speed;
	
	//shot_stats = json_parse(json_stringify(other.Shot_Stats));
	
	y -= shot_stats.Shot_Height;
	
	if shot_stats.Shot_After_Images > 0 {
		alarm[8] = 10;	
	}
	
	shot_stats = scr_Setup_Shot_Stats_Asset(shot_stats);
	
	//Print_DF(shot_stats)

	var shotaddedpow = ((10 + other.spowerfactor + other.sattackfactorbuffamount) / 10) * other.spower / 10 * scr_Class_Stat_Damage_Multiplier();
	
	shot_stats.Shot_Follow_Origin = other.id;
	
	/*

	shot_stats.Shot_Image_Rotation_Speed = other.Shot_Image_Rotation_Speed;

	image = other.Weapon_Split_Visible;
	shot_stats.Shot_Hit_Again = other.Weapon_Split_Hit_Again;
	shot_stats.Shot_Melee = other.Shot_Melee;
	
	shot_stats.Shot_Burst_Stats = other.Shot_Burst_Stats;
	shot_stats.Shot_Air_Burst_Stats = other.Shot_Air_Burst_Stats;
	shot_stats.Shot_Extra_Stats = other.Shot_Extra_Stats;
	
	shot_stats.Shot_Beam = other.Shot_Beam;
	
	//Print_DF("shot_stats.Shot_Extra_Stats: " + string(shot_stats.Shot_Extra_Stats))
	//Print_DF("Shot_Extra_Stats: " + string(other.Shot_Extra_Stats))
	


	if other.Shot_Sprite = spr_Marble_Shot {
	    shot_stats.Shot_Frame = 1 + irandom(8);
	}
	*/

	image_angle = shot_stats.Shot_Angle;
	image_index = shot_stats.Shot_Frame;
	image_speed = shot_stats.Shot_Image_Speed;
	image_alpha = shot_stats.Shot_Alpha;
	
	if shot_stats.Shot_Angles > -1 {
		image_angle = random(shot_stats.Shot_Angles)	
	}

	if shot_stats.Shot_Point_Angle = 1 {
		image_angle = direction;
	}
	
	if shot_stats.Shot_Lobbing = true {
		//shot_stats.Shot_Height = 0;
	    //shot_stats.Shot_Bounce_Speed = 10;
	    //shot_stats.Shot_Bounce_Direction = 1;	
	}

	/*
	shot_id = id;

	if other.Shot_ID != -1 {
	    shot_id = other.Shot_ID;
	}

	shot_boss_id = real(shot_id);

	shot_stats.Shot_Mouse_Maintain = other.Shot_Mouse_Maintain;
	shot_stats.Shot_Soul_Maintain = other.Shot_Soul_Maintain;
	shot_stats.Shot_X_Maintain = other.Shot_X_Maintain;
	shot_stats.Shot_Y_Maintain = other.Shot_Y_Maintain;
	shot_stats.Shot_Follow_Origin = other.id;
	shot_stats.Shot_Movement = other.Shot_Movement;
	shotkeepdirection = other.Shot_Keep_Direction;
	shot_stats.Shot_Damage = other.Shot_Damage;

	shot_stats.Shot_Trail = other.Shot_Trail;
	shot_stats.Shot_Trail_Type = other.Shot_Trail_Type;
	shot_stats.Shot_Trail_Sprite = other.Shot_Trail_Sprite;
	shot_stats.Shot_Trail_Color_1 = other.Shot_Trail_Color_1;
	shot_stats.Shot_Trail_Color_2 = other.Shot_Trail_Color_2;
	shot_stats.Shot_Trail_Life = other.Shot_Trail_Life;
	shot_stats.Shot_Trail_Area = other.Shot_Trail_Area;
	shot_stats.Shot_Trail_Speed = other.Shot_Trail_Speed;
	shot_stats.Shot_Trail_Direction = other.Shot_Trail_Direction;
	shot_stats.Shot_Trail_Frequency = other.Shot_Trail_Frequency;
	shot_stats.Shot_Trail_Fade = other.Shot_Trail_Fade;
	shot_stats.Shot_Trail_Hit_Count = other.Shot_Trail_Hit_Count;
	shot_stats.Shot_Trail_Hit_Speed = other.Shot_Trail_Hit_Speed;
	shot_stats.Shot_Trail_Hit_Life = other.Shot_Trail_Hit_Life;
	shot_stats.Shot_Trail_Hit_Speed = other.Shot_Trail_Hit_Sprite;
	shot_stats.Shot_Trail_Hit_Type = other.Shot_Trail_Hit_Type;
	
	shot_stats.Shot_Explosion_Sprite = other.Shot_Explosion_Sprite;
	shotexplosionpart = other.Shot_Explosion_Part;
	shotexplosionsmoke = other.Shot_Explosion_Smoke;

	im = direction;
	baseDepth = other.Shot_Depth;

	shotduplicatesprite = other.Shot_Duplicate_Sprite;

	shot_stats.Shot_Soul_Damage = other.Shot_Soul_Damage;

	shotimaginary = other.Shot_Imaginary;
	shotsharpandsolid = other.Shot_Sharp_And_Solid;
	shotexplosive = other.Shot_Explosive;
	shotmagical = other.Shot_Magical;
	shotenergy = other.Shot_Energy;

	shot_stats.Shot_Grow = other.Shot_Grow;
	shot_stats.Shot_Grow_Time = other.Shot_Grow_Time;
	shot_stats.Shot_Grow_Size = other.Shot_Grow_Size;
	shot_stats.Shot_Form_Show = other.Shot_Form_Show;

	shot_stats.Shot_Lobbing = other.Shot_Lobbing;
	shot_stats.Shot_Face_Direction = other.Shot_Face_Direction;

	if shot_stats.Shot_Lobbing >= 1 {
		shot_stats.Shot_Height = 0;
	    shot_stats.Shot_Bounce_Speed = 10;
	    shot_stats.Shot_Bounce_Direction = 1;	
	}

	shot_stats.Shot_Wave_Direction = other.Shot_Wave_Direction;
	shot_stats.Shot_Wave_Acceleration = other.Shot_Wave_Acceleration;
	shot_stats.Shot_Wave_Time = other.Shot_Wave_Time;
	
	shot_stats.Shot_Screen_Shake = other.Shot_Screen_Shake;

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
	shot_stats.Shot_Extra_Hit_XX = other.Shot_Extra_Hit_XX;
	shot_stats.Shot_Extra_Hit_YY = other.Shot_Extra_Hit_YY;

	shot_stats.Shot_Acceleration = other.Shot_Acceleration;
	shot_stats.Shot_Friction = other.Shot_Friction;
	shot_stats.Shot_Min_Speed = other.Shot_Min_Speed;

	shot_stats.Shot_Orbital_Type = other.Shot_Orbital_Type;
	shot_stats.Shot_Orbital_Range = other.Shot_Orbital_Range;
	
	*/

	target = noone;
	otarget = noone;

	if shot_stats.Shot_Orbital_Type > 0 {
	    target = other;
		otarget = other.id;
		
		if shot_stats.Shot_Orbital_Angle = -1 {
			shot_stats.Shot_Orbital_Angle = point_direction(x,y,mouse_x,mouse_y);
			shot_stats.Shot_Orbital_Angle += other.Shot_Current_Count * (360 / shot_stats.Shot_Count)
		}
		shot_stats.Shot_Center_X = other.x;
		shot_stats.Shot_Center_Y = other.y;
		//speed = 0;
	}
	
	shot_stats.Shot_Crit_Chance += other.scritaddchance;
	shot_stats.Shot_Crit_Multiple += other.scritadd;
	
	shot_stats.Shot_Impact_Power_Level = shot_stats.Shot_Impact_Power;
	shot_stats.Shot_Pierce += other.sshotpierce;
	shot_stats.Shot_Armour_Pierce += other.sarmourpierce;
	shot_stats.Shot_Chain_Power = (shot_stats.Shot_Chain_Power + other.spoweradd) * shotaddedpow;
	shot_stats.Shot_Impact_Power = (shot_stats.Shot_Impact_Power + other.spoweradd) * shotaddedpow;
	
	shot_stats.Shot_Shield_Power = (shot_stats.Shot_Shield_Power + other.spoweradd) * shotaddedpow;
	shot_stats.Shot_Rebound_Power = (shot_stats.Shot_Rebound_Power + other.spoweradd) * shotaddedpow;
	shot_stats.Shot_Poison = shot_stats.Shot_Poison * shotaddedpow;

	if scr_Chance(1 / shot_stats.Shot_Bleed_Chance) {
		shot_stats.Shot_Bleed = shot_stats.Shot_Bleed * shotaddedpow;
	}
	
	shot_stats.Shot_Fire = shot_stats.Shot_Fire * shotaddedpow;
	if scr_Chance(1 / shot_stats.Shot_Freeze_Chance) {
		shot_stats.Shot_Freeze_Type = shot_stats.Shot_Freeze_Type;
	}
	
	shot_stats.Shot_Accuracy = shot_stats.Shot_Accuracy / global.soulaccuracy;
	
	/*

	shot_stats.Shot_Continue = other.Shot_Continue;

	shot_stats.Shot_Crit_Chance = other.Shot_Crit_Chance + other.scritaddchance;
	shot_stats.Shot_Crit_Multiple = other.Shot_Crit_Multiple + other.scritadd;
	shot_stats.Shot_Melee = other.Shot_Melee;
	shot_stats.Shot_Air_Target = other.Shot_Air_Target;
	shot_stats.Shot_Phasing = other.Shot_Phasing;
	shot_stats.Shot_Looping = other.Shot_Looping;
	shot_stats.Shot_Comeback = other.Shot_Comeback;
	shot_stats.Shot_Pierce = other.Shot_Pierce + other.sshotpierce;
	shot_stats.Shot_Armour_Pierce = other.Shot_Armour_Pierce + other.sarmourpierce;
	shot_stats.Shot_Armour_Tear = other.Shot_Armour_Tear;
	shot_stats.Shot_Bounce = other.Shot_Bounce;
	shot_stats.Shot_Chain = other.Shot_Chain;
	shot_stats.Shot_Chain_Type = other.Shot_Chain_Type;
	shot_stats.Shot_Chain_Power = (other.Shot_Chain_Power + other.spoweradd) * shotaddedpow;
	shot_stats.Shot_Chain_Range = other.Shot_Chain_Range;
	shot_stats.Shot_Chain_Speed = other.Shot_Chain_Speed;
	shot_stats.Shot_Homing_Type = other.Shot_Homing_Type;
	shot_stats.Shot_Homing_Range = other.Shot_Homing_Range;
	shot_stats.Shot_Homing_Speed = other.Shot_Homing_Speed;
	shot_stats.Shot_Impact_Power = (other.Shot_Impact_Power + other.spoweradd) * shotaddedpow;
	shot_stats.Shot_Impact_Power_Level = other.Shot_Impact_Power;
	shot_stats.Shot_Impact_Type = other.Shot_Impact_Type;
	shot_stats.Shot_Impact_Size = other.Shot_Impact_Size;
	shot_stats.Shot_Impact_Explode = other.Shot_Impact_Explode;
	
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
	
	shot_stats.Shot_Aura = other.Shot_Aura;
	shot_stats.Shot_Aura_Power = other.Shot_Aura_Power;
	shot_stats.Shot_Aura_Range = other.Shot_Aura_Range;
	shot_stats.Shot_Aura_Sprite = other.Shot_Aura_Sprite;
	
	shot_stats.Shot_Shield_Type = other.Shot_Shield_Type;
	shot_stats.Shot_Shield_Power = (other.Shot_Shield_Power + other.spoweradd) * shotaddedpow;
	shot_stats.Shot_Rebound_Type = other.Shot_Rebound_Type;
	shot_stats.Shot_Rebound_Power = (other.Shot_Rebound_Power + other.spoweradd) * shotaddedpow;
	shot_stats.Shot_Weaken = other.Shot_Weaken;
	shot_stats.Shot_Weaken_Time = other.Shot_Weaken_Time;
	shot_stats.Shot_Poison = other.Shot_Poison * shotaddedpow;
	shot_stats.Shot_Poison_Time = other.Shot_Poison_Time;
	shot_stats.Shot_Poison_Ticks = other.Shot_Poison_Ticks;
	

	if scr_Chance(1 / other.Shot_Bleed_Chance) {
		shot_stats.Shot_Bleed = other.Shot_Bleed * shotaddedpow;
		shot_stats.Shot_Bleed_Time = other.Shot_Bleed_Time;
		shot_stats.Shot_Bleed_Ticks = other.Shot_Bleed_Ticks;
	}
	shot_stats.Shot_Fire = other.Shot_Fire * shotaddedpow;
	shot_stats.Shot_Fire_Time = other.Shot_Fire_Time;
	shot_stats.Shot_Fire_Ticks = other.Shot_Fire_Ticks;
	if scr_Chance(1 / other.Shot_Freeze_Chance) {
		shot_stats.Shot_Freeze_Type = other.Shot_Freeze_Type;
		shot_stats.Shot_Freeze = other.Shot_Freeze;
		shot_stats.Shot_Freeze_Time = other.Shot_Freeze_Time;
	}
	shot_stats.Shot_Light = other.Shot_Light;
	shot_stats.Shot_Light_Size = other.Shot_Light_Size;

	shot_stats.Shot_Healing = other.Shot_Healing;
	shot_stats.Shot_Life_Drain = other.Shot_Life_Drain;
	shot_stats.Shot_Essence_Drain = other.Shot_Essence_Drain;
	
	shot_stats.Shot_Speed_Power_Add = other.Shot_Speed_Power_Add;
	shot_stats.Shot_Bullet_Redirect = other.Shot_Bullet_Redirect;
	shot_stats.Shot_Bullet_Redirect_Chance = other.Shot_Bullet_Redirect_Chance;
	shot_stats.Shot_Bullet_Displace = other.Shot_Bullet_Displace;
	
	shot_stats.Shot_Snake_Move = other.Shot_Snake_Move;
	
	shot_stats.Shot_Target_X = other.Shot_Target_X;
	shot_stats.Shot_Target_Y = other.Shot_Target_Y;
	
	shotrecyle = other.Shot_Recycle;
	shot_stats.Shot_Accuracy = other.Shot_Accuracy / global.soulaccuracy;
	
	shot_stats.Shot_Wander = other.Shot_Wander;
	
	shot_stats.Shot_Wishful = other.Shot_Wishful;
	
	shot_stats.Shot_Suck_Type = other.Shot_Suck_Type;
	shot_stats.Shot_Suck = other.Shot_Suck;
	
	shot_stats.Shot_Angular_Velocity = other.Shot_Angular_Velocity;
	
	*/
	shot_stats.Shot_Init_Speed = shot_stats.Shot_Speed;

	scr_State_Weapon_Mod();
	
	if shot_stats.Shot_Origin = obj_Soul_Parent {
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
	
		//scr_U08();
		scr_Q02();
		scr_Q04();
		
		scr_U09();
		
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
	
	shot_stats.Shot_Size_Max = shot_stats.Shot_Size;
	

}
