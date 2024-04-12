function scr_Default_Shot_Stats() {
	//global.instanceidincrementer = 1;
	
	bullet_hits = {}
	
	shot_stats = {};
	
	//shot_id = global.instanceidincrementer - 1;
	//shot_boss_id = shot_id;
	shot_id = id;
	shot_boss_id = id;
	
	/*
	shot_id = global.instanceidincrementer - 1;
	shot_boss_id = shot_id;
	
	shot_stats.Shot_Exist_Time = 0;

	bullet_hits = {}
	
	shot_stats = {};

	image = 0;
	shot_stats.Shot_Hit_Again = 0;

	shot_stats.Shot_Origin = noone;
	shot_stats.Shot_Gem = 0;
	
	shot_stats.Shot_Accuracy = 15;
	shot_stats.Shot_Damage = true;

	shot_stats.Shot_Mouse_Maintain = 0;
	shot_stats.Shot_Soul_Maintain = 0;
	shotxmaintain = 0;
	shotymaintain = 0;
	shotdirectionaddition = 0;
	shot_stats.Shot_Form_Show = 1;
	shot_stats.Shot_Movement = 1;
	shothealemit = 0;
	shot_stats.Shot_Light = 0;
	shot_stats.Shot_Light_Size = 0;
	shotfolloworigin = 0
	
	shot_stats.Shot_Fear_Target = noone;

	shot_stats.Shot_Trail = 0;
	shot_stats.Shot_Trail_Type = obj_Weapon_Trail;
	shot_stats.Shot_Trail_Hit_Type = obj_Friction_Part;
	shot_stats.Shot_Trail_Sprite = spr_Essence_Trail_Bit;
	shot_stats.Shot_Trail_Color1 = c_white;
	shot_stats.Shot_Trail_Color2 = c_white;
	shot_stats.Shot_Trail_Life = 15;
	shot_stats.Shot_Trail_Area = 12;
	shot_stats.Shot_Trail_Speed = 0;
	shot_stats.Shot_Trail_Direction = 0;
	shot_stats.Shot_Trail_Frequency = 1;
	shot_stats.Shot_Trail_Fade = 1;
	shot_stats.Shot_Trail_Hit_Count = 7;
	shot_stats.Shot_Trail_Hit_Speed = 10;
	shot_stats.Shot_Trail_Hit_Life = 7;
	shot_stats.Shot_Trail_Hit_Speed = spr_Soul_Bit;
	
	shot_stats.Shot_Beam = 0;
	
	shot_stats.Shot_Explosion_Sprite = spr_Explosion_Part;
	shotexplosionpart = spr_Explosion_Part;
	shotexplosionsmoke = spr_Essence_Trail_Bit;

	shot_stats.Shot_Power_Level = 0;

	target = noone;
	otarget = noone;

	shot_stats.Shot_Speed = 0.4 * other.sshotspeed;
	shot_stats.Shot_Power = 1 * other.spower * ((40 + global.soulstrength) / 40);
	shot_stats.Shot_Power_Max = shot_stats.Shot_Power;
	shot_stats.Shot_Knock_Back = 1 * other.sshotknockback;
	shot_stats.Shot_Life_Span = 100;
	shot_stats.Shot_Size = 1;
	shot_stats.Shot_Size_Max = 1;
	shot_stats.Shot_Soul_Damage = 0;
	shot_stats.Shot_Melee = 0;
	shot_stats.Shot_Point_Angle = 0;
	shotkeepdirection = 0;
	shot_stats.Shot_Size_Relation = 1;

	shot_stats.Shot_Init_Speed = shot_stats.Shot_Speed;

	shotduplicatesprite = spr_Soul_Shot;
	
	*/

	/*
	move_towards_point(mouse_x,mouse_y, shot_stats.Shot_Speed);
	direction += (-2.5 + random(5)) / other.saccuracy;
	alarm[0] = shot_stats.Shot_Life_Span;
	
	/*
	baseDepth = 0;

	shotimaginary = 1;
	shotsharpandsolid = 0;
	shotexplosive = 0;
	shotmagical = 0;
	shotenergy = 0;

	shot_stats.Shot_Grow = 0;
	shot_stats.Shot_Grow_Time = 0;
	shot_stats.Shot_Grow_Size = 0;

	shot_stats.Shot_Wave_Direction = 0;
	shot_stats.Shot_Wave_Acceleration = 0;
	shot_stats.Shot_Wave_Time = 0;

	shot_stats.Shot_Lobbing = 0;
	shot_stats.Shot_Face_Direction = 0;
	
	shot_stats.Shot_Screen_Shake = 0;

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
	shot_stats.Shot_Extra_Hit_XX = 0;
	shot_stats.Shot_Extra_Hit_YY = 0;
	
	shot_stats.Shot_Shrink = 0;
	shot_stats.Shot_Fade = 0;

	shot_stats.Shot_Acceleration = 0;
	shot_stats.Shot_Friction = 0;
	shot_stats.Shot_Min_Speed = 0;

	shot_stats.Shot_Crit_Chance = 0;
	shot_stats.Shot_Crit_Multiple = 1;

	shot_stats.Shot_Orbital_Type = 0;
	shot_stats.Shot_Orbital_Range = 0;
	shot_stats.Shot_Orbit_Angle = 0;

	shot_stats.Shot_Melee = 0;
	shot_stats.Shot_Air_Target = 0;
	shot_stats.Shot_Phasing = 0;
	shot_stats.Shot_Looping = 0;
	shot_stats.Shot_Comeback = 0;
	shot_stats.Shot_Pierce = 1;
	shot_stats.Shot_Bounce = 0;
	shot_stats.Shot_Armour_Pierce = 0;
	shot_stats.Shot_Armour_Tear = 0;
	shot_stats.Shot_Chain = 0;
	shot_stats.Shot_Chain_Power = 0;
	shot_stats.Shot_Chain_Type = 0;
	shot_stats.Shot_Chain_Range = 0;
	shot_stats.Shot_Chain_Speed = 0;
	shot_stats.Shot_Homing_Type = 0;
	shot_stats.Shot_Homing_Range = 0;
	shot_stats.Shot_Homing_Speed = 0;
	shot_stats.Shot_Continue = 0;
	shot_stats.Shot_Healing = 0;

	shot_stats.Shot_Impact_Power_Level = 0;

	shot_stats.Shot_Impact_Power = 0;
	shot_stats.Shot_Impact_Type = 0;
	shot_stats.Shot_Impact_Size = 0;
	shot_stats.Shot_Impact_Explode = 1;
	
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
	
	shot_stats.Shot_Burst_Stats = false;
	shot_stats.Shot_Air_Burst_Stats = false;
	shot_stats.Shot_Extra_Stats = false;
	
	shot_stats.Shot_Aura = 0;
	shot_stats.Shot_Aura_Power = 0;
	shot_stats.Shot_Aura_Range = 0;
	shot_stats.Shot_Aura_Sprite = 0;
	
	shot_stats.Shot_Recycle = 0;
	
	shot_stats.Shot_Shield_Type = 0;
	shot_stats.Shot_Shield_Power = 0;
	shot_stats.Shot_Rebound_Type = 0;
	shot_stats.Shot_Rebound_Power = 0;
	shot_stats.Shot_Weaken = 0;
	shot_stats.Shot_Weaken_Time = 0;
	shot_stats.Shot_Poison = 0;
	shot_stats.Shot_Poison_Time = 0;
	shot_stats.Shot_Poison_Ticks = 0;
	shot_stats.Shot_Bleed = 0;
	shot_stats.Shot_Bleed_Time = 0;
	shot_stats.Shot_Bleed_Ticks = 0;
	shot_stats.Shot_Fire = 0;
	shot_stats.Shot_Fire_Time = 0;
	shot_stats.Shot_Fire_Ticks = 0;
	shot_stats.Shot_Freeze_Type = 0;
	shot_stats.Shot_Freeze = 0;
	shot_stats.Shot_Freeze_Time = 0;
	shot_stats.Shot_Life_Drain = 0;
	shot_stats.Shot_Essence_Drain = 0;
	
	shot_stats.Shot_Snake_Move = 0;
	shot_stats.Shot_Target_X = 0;
	shot_stats.Shot_Target_Y = 0;

	shot_stats.Shot_Speed_Power_Add = 0;
	shot_stats.Shot_Bullet_Redirect = 0;
	shot_stats.Shot_Bullet_Redirect_Chance = 0;
	shot_stats.Shot_Bullet_Displace = 0;
	
	shot_stats.Shot_Wander = 0;
	
	shot_stats.Shot_Angular_Velocity = 0;
	
	shot_stats.Shot_Wishful = 0;
	shot_stats.Shot_Miracle = 0;
	
	shot_stats.Shot_Suck_Type = 1;
	shot_stats.Shot_Suck = 0;
	
	*/
	//shot_stats.Shot_Init_Speed = shot_stats.Shot_Speed;
	followtarget = noone;
	
	scr_A07_Setup();

}
