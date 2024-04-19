function scr_Duplicate_Shot_Stats(_new_shot_stats = other.shot_stats) {
	
	//var _base_stats = scr_Setup_Default_Shot_Stats()
	shot_stats = json_parse(json_stringify(other.shot_stats));
	
	var _pow_ratio = other.shot_stats.Shot_Power / other.shot_stats.Shot_Power_Level;

	if _new_shot_stats != other.shot_stats {
		shot_stats = scr_Struct_Merge(shot_stats, _new_shot_stats, false)
	}
	
	shot_stats.Shot_Power_Level = shot_stats.Shot_Power / _pow_ratio
	
	if shot_stats.Shot_Hit_Again = 0 {
	    shot_id = other.shot_id;
		shot_boss_id = other.shot_boss_id;
		bullet_hits = other.bullet_hits;
	} else {
	    shot_id = id;
		shot_boss_id = real(shot_id);
		bullet_hits = {};
	}
	
	alarm[1] = 1;
	
	if shot_stats.Shot_Frames > 0 {
		shot_stats.Shot_Frame = irandom(shot_stats.Shot_Frames)	
	}
	
	//Print_DF(shot_stats)
	
	//shot_stats = scr_Setup_Shot_Stats_Asset(shot_stats);

	target = other.target;
	otarget = other.otarget;
	
	shot_stats.Shot_Init_Speed = shot_stats.Shot_Speed;

	image_angle = shot_stats.Shot_Angle;
	image_index = shot_stats.Shot_Frame;
	image_speed = shot_stats.Shot_Image_Speed;
	image_alpha = shot_stats.Shot_Alpha;
	
	shot_stats.Shot_Origin = other.shot_stats.Shot_Origin;
	
	shot_stats.Shot_Follow_Origin = other.shot_stats.Shot_Follow_Origin;

	/*
	shot_stats.Shot_Gem = other.shot_stats.Shot_Gem;
	otarget = noone;
	
	shot_stats.Shot_Accuracy = other.shot_stats.Shot_Accuracy
	shot_stats.Shot_Damage = other.shot_stats.Shot_Damage

	shot_stats.Shot_Angle = other.shot_stats.Shot_Angle;
	shot_stats.Shot_Frame = other.shot_stats.Shot_Frame;
	shot_stats.Shot_Image_Speed = other.shot_stats.Shot_Image_Speed;
	shot_stats.Shot_Melee = other.shot_stats.Shot_Melee;
	shot_stats.Shot_Form_Show = other.shot_stats.Shot_Form_Show;
	shot_stats.Shot_Healing = other.shot_stats.Shot_Healing;
	shothealemit = other.shothealemit;
	shot_stats.Shot_Movement = other.shot_stats.Shot_Movement;
	shot_stats.Shot_Follow_Origin = other.shot_stats.Shot_Follow_Origin;
	shot_stats.Shot_X_Maintain = other.shot_stats.Shot_X_Maintain;
	shot_stats.Shot_Y_Maintain = other.shot_stats.Shot_Y_Maintain;
	shot_stats.Shot_Size_Relation = other.shot_stats.Shot_Size_Relation;

	shot_stats.Shot_Trail = other.shot_stats.Shot_Trail;
	shot_stats.Shot_Trail_Type = other.shot_stats.Shot_Trail_Type;
	shot_stats.Shot_Trail_Sprite = other.shot_stats.Shot_Trail_Sprite;
	shot_stats.Shot_Trail_Color_1 = other.shot_stats.Shot_Trail_Color_1;
	shot_stats.Shot_Trail_Color_2 = other.shot_stats.Shot_Trail_Color_2;
	shot_stats.Shot_Trail_Life = other.shot_stats.Shot_Trail_Life;
	shot_stats.Shot_Trail_Area = other.shot_stats.Shot_Trail_Area;
	shot_stats.Shot_Trail_Speed = other.shot_stats.Shot_Trail_Speed;
	shot_stats.Shot_Trail_Direction = other.shot_stats.Shot_Trail_Direction;
	shot_stats.Shot_Trail_Frequency = other.shot_stats.Shot_Trail_Frequency;
	shot_stats.Shot_Trail_Fade = other.shot_stats.Shot_Trail_Fade;
	shot_stats.Shot_Trail_Hit_Count = other.shot_stats.Shot_Trail_Hit_Count;
	shot_stats.Shot_Trail_Hit_Speed = other.shot_stats.Shot_Trail_Hit_Speed;
	shot_stats.Shot_Trail_Hit_Life = other.shot_stats.Shot_Trail_Hit_Life;
	shot_stats.Shot_Trail_Hit_Speed = other.shot_stats.Shot_Trail_Hit_Speed;	
	shot_stats.Shot_Trail_Hit_Type = other.shot_stats.Shot_Trail_Hit_Type;
	
	shot_stats.Shot_Explosion_Sprite = other.shot_stats.Shot_Explosion_Sprite;
	shotexplosionpart = other.shotexplosionpart;
	shotexplosionsmoke = other.shotexplosionsmoke;

	shot_stats.Image_Rotation_Speed = other.shot_stats.Image_Rotation_Speed;

	shot_stats.Shot_Origin = other.shot_stats.Shot_Origin;

	*/
	
	/*
	shotduplicatesprite = other.shotduplicatesprite;
	sprite_index = other.shotduplicatesprite;
	image_angle = shot_stats.Shot_Angle;
	image_index = shot_stats.Shot_Frame;
	image_speed = shot_stats.Shot_Image_Speed;
	image = other.image
	image_alpha = other.image;
	shot_stats.Shot_Point_Angle = other.shot_stats.Shot_Point_Angle;
	shotkeepdirection = other.shotkeepdirection;
	if shotkeepdirection = 1 {
		shot_stats.Shot_Point_Angle = 1;	
	}*/
	
	/*

	im = direction;

	shot_stats.Shot_Power_Level = other.shot_stats.Shot_Power_Level;
	shot_stats.Shot_Impact_Power_Level = other.shot_stats.Shot_Impact_Power_Level;
	shot_stats.Shot_Speed = other.shot_stats.Shot_Speed;
	shot_stats.Shot_Knock_Back = other.shot_stats.Shot_Knock_Back;
	shot_stats.Shot_Life_Span = other.shot_stats.Shot_Life_Span;
	shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
	
	shot_stats.Shot_Exist_Time = other.shot_stats.Shot_Exist_Time;

	shot_stats.Shot_Init_Speed = shot_stats.Shot_Speed;

	shot_stats.Shot_Size = other.shot_stats.Shot_Size;
	if other.shot_stats.Shot_Burst_Stats = false {
		shot_stats.Shot_Power = other.shotburstpower;
	} else {
		shot_stats.Shot_Power = other.shot_stats.Shot_Power;	
	}
	
	if other.shot_stats.Shot_Air_Burst_Stats != false {
		shot_stats.Shot_Power = other.shot_stats.Shot_Power;
	}
	
	shot_stats.Shot_Beam = other.shot_stats.Shot_Beam
	*/
	
	image_xscale = shot_stats.Shot_Size;
	image_yscale = shot_stats.Shot_Size;
	
	/*
	shot_stats.Shot_Size_Max = other.shot_stats.Shot_Size_Max;
	shot_stats.Shot_Power_Max = shot_stats.Shot_Power;
	
	shot_stats.Shot_Screen_Shake = other.shot_stats.Shot_Screen_Shake - 5;

	shot_stats.Shot_Soul_Damage = other.shot_stats.Shot_Soul_Damage * other.shotburstpower / 10;

	shot_stats.Shot_Mouse_Maintain = other.shot_stats.Shot_Mouse_Maintain;
	shot_stats.Shot_Soul_Maintain = other.shot_stats.Shot_Soul_Maintain;
	shot_stats.Shot_Direction_Addition = other.shot_stats.Shot_Direction_Addition;

	shot_stats.Shot_Grow = other.shot_stats.Shot_Grow;
	shot_stats.Shot_Grow_Time = other.shot_stats.Shot_Grow_Time;
	shot_stats.Shot_Grow_Size = other.shot_stats.Shot_Grow_Size;

	shot_stats.Shot_Lobbing = other.shot_stats.Shot_Lobbing;
	shot_stats.Shot_Face_Direction = other.shot_stats.Shot_Face_Direction;
	shot_stats.Shot_Height = 0;
	shot_stats.Shot_Bounce_Speed = 10;
	shot_stats.Shot_Bounce_Direction = 1;

	if shot_stats.Shot_Lobbing = 1 {
		shot_stats.Shot_Height = 0;
	    shot_stats.Shot_Bounce_Speed = 10;
	    shot_stats.Shot_Bounce_Direction = 1;	
	}

	shot_stats.Shot_Wave_Direction = other.shot_stats.Shot_Wave_Direction;
	shot_stats.Shot_Wave_Acceleration = other.shot_stats.Shot_Wave_Acceleration;
	shot_stats.Shot_Wave_Time = other.shot_stats.Shot_Wave_Time;
	
	shot_stats.Shot_Acceleration = other.shot_stats.Shot_Acceleration

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
	shot_stats.Shot_Extra_Hit_XX = other.shot_stats.Shot_Extra_Hit_XX;
	shot_stats.Shot_Extra_Hit_YY = other.shot_stats.Shot_Extra_Hit_YY;
	
	shot_stats.Shot_Shrink = other.shot_stats.Shot_Shrink;
	shot_stats.Shot_Fade = other.shot_stats.Shot_Fade;
	
	baseDepth = other.baseDepth;

	shot_stats.Shot_Friction = 0;
	shot_stats.Shot_Min_Speed = 0;

	shotimaginary = other.shotimaginary;
	shotsharpandsolid = other.shotsharpandsolid;
	shotexplosive = other.shotexplosive;
	shotmagical = other.shotmagical;
	shotenergy = other.shotenergy;

	shot_stats.Shot_Orbital_Type = other.shot_stats.Shot_Orbital_Type;
	shot_stats.Shot_Orbital_Range = other.shot_stats.Shot_Orbital_Range;

	shot_stats.Shot_Continue = other.shot_stats.Shot_Continue;

	shot_stats.Shot_Crit_Chance = other.shot_stats.Shot_Crit_Chance;
	shot_stats.Shot_Crit_Multiple = other.shot_stats.Shot_Crit_Multiple;
	shot_stats.Shot_Melee = other.shot_stats.Shot_Melee;
	shot_stats.Shot_Air_Target = other.shot_stats.Shot_Air_Target;
	shot_stats.Shot_Phasing = other.shot_stats.Shot_Phasing;
	shot_stats.Shot_Looping = other.shot_stats.Shot_Looping;
	shot_stats.Shot_Comeback = other.shot_stats.Shot_Comeback;
	shot_stats.Shot_Pierce = other.shot_stats.Shot_Pierce;
	shot_stats.Shot_Bounce = other.shot_stats.Shot_Bounce;
	shot_stats.Shot_Armour_Pierce = other.shot_stats.Shot_Armour_Pierce;
	shot_stats.Shot_Armour_Tear = other.shot_stats.Shot_Armour_Tear;
	shot_stats.Shot_Chain = other.shot_stats.Shot_Chain;
	shot_stats.Shot_Chain_Type = other.shot_stats.Shot_Chain_Type;
	shot_stats.Shot_Chain_Power = other.shot_stats.Shot_Chain_Power;
	shot_stats.Shot_Chain_Range = other.shot_stats.Shot_Chain_Range;
	shot_stats.Shot_Chain_Speed = other.shot_stats.Shot_Chain_Speed;
	shot_stats.Shot_Homing_Type = other.shot_stats.Shot_Homing_Type;
	shot_stats.Shot_Homing_Range = other.shot_stats.Shot_Homing_Range;
	shot_stats.Shot_Homing_Speed = other.shot_stats.Shot_Homing_Speed;
	shot_stats.Shot_Impact_Power = other.shot_stats.Shot_Impact_Power;
	shot_stats.Shot_Impact_Explode = other.shot_stats.Shot_Impact_Explode;
	shot_stats.Shot_Impact_Type = other.shot_stats.Shot_Impact_Type;
	shot_stats.Shot_Impact_Size = other.shot_stats.Shot_Impact_Size;
	
	
	if other.shotbursttype = 2 {
		shot_stats.Shot_Speed = other.shotburstspeed;	
		shot_stats.Shot_Life_Span = other.shotburstlifespan;
		shot_stats.Shot_Pierce = other.shotburstpierce;
		i = 0;
		shotextrahits[i] = other.shotburstextrahits;
		shotextrahitfrequency[i] = other.shotburstextrahitfrequency;
		shotextrahitpower[i] = other.shotburstextrahitpower;
		shot_stats.Shot_Bullet_Displace = other.shotburstbulletdisplacement;
		shot_stats.Shot_Point_Angle = other.shotburstpointangle;
		shot_stats.Shot_Impact_Type = other.shotburstimpact;
	}

	shot_stats.Shot_Burst_Stats = false;
	shot_stats.Shot_Air_Burst_Stats = false;
	shot_stats.Shot_Extra_Stats = other.shot_stats.Shot_Extra_Stats;
	
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
	
	shot_stats.Shot_Aura = other.shot_stats.Shot_Aura;
	shot_stats.Shot_Aura_Power = other.shot_stats.Shot_Aura_Power;
	shot_stats.Shot_Aura_Range = other.shot_stats.Shot_Aura_Range;
	shot_stats.Shot_Aura_Sprite = other.shot_stats.Shot_Aura_Sprite;
	
	shot_stats.Shot_Recycle = other.shot_stats.Shot_Recycle;
	
	shot_stats.Shot_Shield_Type = other.shot_stats.Shot_Shield_Type;
	shot_stats.Shot_Shield_Power = 0;
	shot_stats.Shot_Rebound_Type = other.shot_stats.Shot_Rebound_Type;
	shot_stats.Shot_Rebound_Power = other.shot_stats.Shot_Rebound_Power;
	shot_stats.Shot_Weaken = other.shot_stats.Shot_Weaken;
	shot_stats.Shot_Weaken_Time = other.shot_stats.Shot_Weaken_Time;
	shot_stats.Shot_Poison = other.shot_stats.Shot_Poison;
	shot_stats.Shot_Poison_Time = other.shot_stats.Shot_Poison_Time;
	shot_stats.Shot_Poison_Ticks = other.shot_stats.Shot_Poison_Ticks;
	shot_stats.Shot_Bleed = other.shot_stats.Shot_Bleed;
	shot_stats.Shot_Bleed_Time = other.shot_stats.Shot_Bleed_Time;
	shot_stats.Shot_Bleed_Ticks = other.shot_stats.Shot_Bleed_Ticks;
	shot_stats.Shot_Fire = other.shot_stats.Shot_Fire;
	shot_stats.Shot_Fire_Time = other.shot_stats.Shot_Fire_Time;
	shot_stats.Shot_Fire_Ticks = other.shot_stats.Shot_Fire_Ticks;
	shot_stats.Shot_Freeze_Type = other.shot_stats.Shot_Freeze_Type;
	shot_stats.Shot_Freeze = other.shot_stats.Shot_Freeze;
	shot_stats.Shot_Freeze_Time = other.shot_stats.Shot_Freeze_Time;
	shot_stats.Shot_Light = other.shot_stats.Shot_Light;
	shot_stats.Shot_Light_Size = other.shot_stats.Shot_Light_Size;
	shot_stats.Shot_Life_Drain = other.shot_stats.Shot_Life_Drain;
	shot_stats.Shot_Essence_Drain = other.shot_stats.Shot_Essence_Drain;
	
	shot_stats.Shot_Speed_Power_Add = other.shot_stats.Shot_Speed_Power_Add;
	
	shot_stats.Shot_Target_X = other.shot_stats.Shot_Target_X;
	shot_stats.Shot_Target_Y = other.shot_stats.Shot_Target_Y;
	
	shot_stats.Shot_Snake_Move = 0;
	
	if shot_stats.Shot_Orbital_Type > 0 {
		shot_stats.Shot_Orbital_Range = other.shot_stats.Shot_Orbital_Range;
		shot_stats.Shot_Orbit_Angle = other.shot_stats.Shot_Orbit_Angle;
		shot_stats.Shot_Center_X = other.shot_stats.Shot_Center_X;
		shot_stats.Shot_Center_Y = other.shot_stats.Shot_Center_Y;
	}
	
	shot_stats.Shot_Bullet_Redirect = other.shot_stats.Shot_Bullet_Redirect;
	shot_stats.Shot_Bullet_Redirect_Chance = other.shot_stats.Shot_Bullet_Redirect_Chance;
	
	if other.shotbursttype != 2 {
		shot_stats.Shot_Bullet_Displace = other.shot_stats.Shot_Bullet_Displace;
	}
	
	shot_stats.Shot_Wander = other.shot_stats.Shot_Wander;
	
	shot_stats.Shot_Wishful = other.shot_stats.Shot_Wishful;
	shot_stats.Shot_Miracle = other.shot_stats.Shot_Miracle;
	
	shot_stats.Shot_Suck_Type = other.shot_stats.Shot_Suck_Type
	shot_stats.Shot_Suck = other.shot_stats.Shot_Suck;
	
	shot_stats.Shot_Angular_Velocity = other.shot_stats.Shot_Angular_Velocity;
	
	shotA07 = other.shotA07;
	followtarget = other.followtarget;
	shot_stats.Shot_Fear_Target = other.shot_stats.Shot_Fear_Target;
	*/
	
	/*
	if other.shotextrahits = 2 {
		shot_stats.Shot_Life_Span = other.shotextrahitlifespan;	
	}
	*/

	direction = other.direction + other.dir;
	speed = shot_stats.Shot_Speed;
	alarm[0] = shot_stats.Shot_Life_Span;
	alarm[2] = 1;
	alarm[3] = 15;

	
	shotA07 = other.shotA07;
	//shot_stats.Shot_Follow_Target = other.shot_stats.Shot_Follow_Target;
	//shot_stats.Shot_Fear_Target = other.shot_stats.Shot_Fear_Target;

}
