function scr_Default_Weapon_Stats() {
	//Shot_Spread = 0;
	//Shot_Accuracy = 15;
	//Shot_Count = 1;
	//Shot_Default_Count = 1;
	
	current_weapon_stats = scr_Setup_Default_Shot_Stats()
	//Weapon_Number = 0;
	
	umbrellaActive = false;

	/*Shot_Beam = 0;
	Shot_Beam_Count = 40;
	Shot_Beam_Curve = 0;
	
	Shot_Damage = true;
	Shot_Mouse = 1;
	Shot_Direction = 0;
	Shot_Forward = 1;
	Shot_ID = -1;
	Weapon_Mouse_Maintain = 0;
	Weapon_Soul_Maintain = 0;
	Weapon_X_Maintain = 0;
	Weapon_Y_Maintain = 0;
	Shot_Movement = 1;
	Shot_Mouse_Origin = 0;
	Shot_Forward_Amount = 16;
	Shot_Weapon_Lean = 0;
	Shot_Angles = -1;
	Shot_Boss_Aim = false; */

	/*Shot_Form_Show = 1;

	Shot_XX = 0;
	Shot_YY = 0;

	Weapon_Split_Visible = false;
	Weapon_Split_Hit_Again = true;
	Shot_Point_Angle = 0;
	Weapon_Melee = 0;

	Shot_Trail = 0;
	Shot_Trail_Type = obj_Weapon_Trail;
	Shot_Trail_Sprite = spr_Essence_Trail_Bit;
	Shot_Trail_Color1 = c_white;
	Shot_Trail_Color2 = c_white;
	Shot_Trail_Life = 15;
	Shot_Trail_Area = 15;
	Shot_Trail_Speed = 0;
	Shot_Trail_Direction = 0;
	Shot_Trail_Frequency = 4;
	Shot_Trail_Fade = 1;
	Shot_Trail_Hit_Count = 8;
	Shot_Trail_Hit_Speed = 10;
	Shot_Trail_Hit_Life = 7;
	Shot_Trail_Hit_Sprite = spr_Soul_Bit;
	Shot_Trail_Hit_Type = obj_Friction_Part;

	//Shot_Explosion = false;
	Shot_Explosion_Sprite = spr_Explosion_Part;
	Shot_Explosion_Part = spr_Explosion_Part;
	Shot_Explosion_Smoke = spr_Essence_Trail_Bit;

	Shot_Alpha = 1;

	Weapon_Vomit = 0;
	Weapon_Vomit_Min_Speed = 1;
	Weapon_Vomit_Max_Speed = 1;
	Weapon_Vomit_Min_Life = 1;
	Weapon_Vomit_Max_Life = 1;

	Shot_Direction_Offset = 0;

	Weapon_Melee = 0;
	
	Shot_Screen_Shake = 0;

	Shot_Sprite = spr_Soul_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Size = 0.5;
	Shot_Size_Max = 0.5;
	Shot_Angle = 0;
	Shot_Frame = 0;
	Shot_Frames = 0;
	Shot_Image_Speed = 1;
	Image_Rotation_Speed = 0;
	Shot_Image_Direction = -1;
	Shot_Depth = 0;
	Shot_Keep_Direction = 0;

	Shot_Duplicate_Sprite = spr_Soul_Shot;

	Shot_Speed = 4;
	Shot_Power = 10;
	Shot_Knock_Back = 10;
	Shot_Life_Span = 100;

	Shot_Soul_Damage = 0;

	Shot_Imaginary = 1;
	Shot_Sharp_And_Solid = 0;
	Shot_Explosive = 0;
	Shot_Magical = 0;
	Shot_Energy = 0;
	
	Shot_Element = "Imaginary"

	Shot_Grow = 0;
	Shot_Grow_Time = 0;
	Shot_Grow_Size = 0;

	Shot_Lobbing = 0;
	Shot_Face_Direction = 0;

	Shot_Wave_Direction = 0;
	Shot_Wave_Acceleration = 0;
	Shot_Wave_Time = 0;
	
	Shot_Ground = 0;

	var i = 0;
	for(i = 0; i < 5; i++) {
		Shot_Extra_Hits[i] = 0;
		Shot_Extra_Hits_Sprite[i] = Shot_Duplicate_Sprite;
		Shot_Extra_Hit_Frequency[i] = 0;
		Shot_Extra_Hit_Power[i] = 0;
		Shot_Extra_Hit_Speed[i] = 0;
		Shot_Extra_Hit_Lifespan[i] = 1;
		Shot_Extra_Hit_Homing[i] = 0;
		Shot_Extra_Hit_Homing_Speed[i] = 0;
		Shot_Extra_Hit_Pierce[i] = 1;
		Shot_Extra_Hit_Acceleration[i] = 0;
		Shot_Extra_Hit_Size[i] = 1;
		Shot_Extra_Hit_Shrink[i] = 0;
		Shot_Extra_Hit_Fade[i] = 0;
	}
	Shot_Extra_Hit_XX = 0;
	Shot_Extra_Hit_YY = 0;
	
	Shot_Acceleration = 0;
	Shot_Friction = 0;
	Shot_Min_Speed = 0;

	Shot_Orbital_Type = 0;
	Shot_Orbital_Range = 0;
	Shot_Orbital_Angle = 0;

	Shot_Continue = 0;
	Shot_Healing = 0;

	Shot_Crit_Chance = 0;
	Shot_Crit_Multiple = 1;
	Shot_Melee = 0;
	Shot_Air_Target = 0; 
	Shot_Phasing = 0;
	Shot_Looping = 0;
	Shot_Comeback = 0;
	Shot_Pierce = 1;
	Shot_Bounce = 0;
	Shot_Armour_Pierce = 0;
	Shot_Armour_Tear = 0;
	Shot_Chain = 0;
	Shot_Chain_Type = 0;
	Shot_Chain_Power = 0;
	Shot_Chain_Range = 0;
	Shot_Chain_Speed = 0;
	Shot_Homing_Type = 0;
	Shot_Homing_Range = 0;
	Shot_Homing_Speed = 0;
	Shot_Impact_Type = 0;
	Shot_Impact_Size = 0;
	Shot_Impact_Power = 0;
	Shot_Impact_Explode = 1;
	
	Shot_Burst_Type = 0;
	Shot_Burst_Amount = 0;
	Shot_Burst_Power = 0;
	Shot_Burst_Speed = 0;
	Shot_Burst_Lifespan = 1;
	Shot_Burst_Homing = 0;
	Shot_Burst_Homing_Speed = 0;
	Shot_Burst_Pierce = 1;
	Shot_Burst_Extra_Hits = 0;
	Shot_Burst_Extra_Hit_Power = 0;
	Shot_Burst_Extra_Hit_Frequency = 0;
	Shot_Burst_Range = 0;
	Shot_Burst_Spread = 0;
	Shot_Burst_Bullet_Displacement = 0;
	Shot_Burst_Point_Angle = 0;
	Shot_Burst_Impact = 0;
	
	Shot_Aura = 0;
	Shot_Aura_Power = 0;
	Shot_Aura_Range = 0;
	Shot_Aura_Sprite = spr_Aura_Strike_Aura;
	
	Shot_Recycle = 0;
	
	Shot_Shield_Type = 0;
	Shot_Shield_Power = 0;
	Shot_Rebound_Type = 0;
	Shot_Rebound_Power = 0;
	Shot_Weaken = 0;
	Shot_Weaken_Time = 0;
	Shot_Poison = 0;
	Shot_Poison_Time = 0;
	Shot_Poison_Ticks = 0;
	Shot_Bleed = 0;	
	Shot_Bleed_Chance = 1;
	Shot_Bleed_Time = 0;
	Shot_Bleed_Ticks = 0;
	Shot_Fire = 0;
	Shot_Fire_Time = 0;
	Shot_Fire_Ticks = 0;
	Shot_Freeze_Chance = 1;
	Shot_Freeze_Type = 0;
	Shot_Freeze = 0;
	Shot_Freeze_Time = 0;
	Shot_Light = true;
	Shot_Light_Size = 0.3;
	Shot_Life_Drain = 0;
	Shot_Essence_Drain = 0;
	
	Shot_Snake_Move = 0;
	Shot_Target_X = 0;
	Shot_Target_Y = 0;
	
	Shot_Speed_Power_Add = 0;
	Shot_Bullet_Redirect = 0;
	Shot_Bullet_Redirect_Chance = 0;
	Shot_Bullet_Displace = 0;
	
	Shot_Off_State = 0;
	Shot_Wander = 0;
	Shot_Wishful = 0;
	
	Shot_Angular_Velocity = 0;
	
	Shot_Suck_Type = 1;
	Shot_Suck = 0;
	
	Shot_Extra = false;
	Shot_Burst_Stats = false;
	Shot_Air_Burst_Stats = false;
	Shot_Extra_Stats = false;
	Shot_Angle_Relative = 0; 
	*/

}
