// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Setup_Weapon_Stats(){
	if variable_struct_exists(current_weapon_stats, "Shot_Count") {
		Shot_Count = current_weapon_stats.Shot_Count
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Spread") {
		Shot_Spread = current_weapon_stats.Shot_Spread
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Accuracy") {
		Shot_Accuracy = current_weapon_stats.Shot_Accuracy
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Power") {
		Shot_Power = current_weapon_stats.Shot_Power
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Speed") {
		Shot_Speed = current_weapon_stats.Shot_Speed
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Lifespan") {
		Shot_Lifespan = current_weapon_stats.Shot_Lifespan
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Knockback") {
		Shot_Knockback = current_weapon_stats.Shot_Knockback
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Size") {
		Shot_Size = current_weapon_stats.Shot_Size
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Light") {
		Shot_Light = current_weapon_stats.Shot_Light
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Light_Size") {
		Shot_Light_Size = current_weapon_stats.Shot_Light_Size
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Trail") {
		Shot_Trail = current_weapon_stats.Shot_Trail
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Trail_Type") {
		Shot_Trail_Type = asset_get_index(current_weapon_stats.Shot_Trail_Type)
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Trail_Sprite") {
		Shot_Trail_Sprite = asset_get_index(current_weapon_stats.Shot_Trail_Sprite)
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Trail_Color1") {
		var cray = current_weapon_stats.Shot_Trail_Color1
		Shot_Trail_Color1 = make_color_rgb(cray[0],cray[1],cray[2]);
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Trail_Color2") {
		var cray = current_weapon_stats.Shot_Trail_Color2
		Shot_Trail_Color2 = make_color_rgb(cray[0],cray[1],cray[2]);
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Trail_Life") {
		Shot_Trail_Life = current_weapon_stats.Shot_Trail_Life
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Trail_Area") {
		Shot_Trail_Area = current_weapon_stats.Shot_Trail_Area
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Trail_Frequency") {
		Shot_Trail_Frequency = current_weapon_stats.Shot_Trail_Frequency
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Trail_Fade") {
		Shot_Trail_Fade = current_weapon_stats.Shot_Trail_Fade
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Trail_Hit_Count") {
		Shot_Trail_Hit_Count = current_weapon_stats.Shot_Trail_Hit_Count
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Trail_Hit_Speed") {
		Shot_Trail_Hit_Speed = current_weapon_stats.Shot_Trail_Hit_Speed
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Trail_Hit_Life") {
		Shot_Trail_Hit_Life = current_weapon_stats.Shot_Trail_Hit_Life
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Trail_Hit_Sprite") {
		Shot_Trail_Hit_Sprite = asset_get_index(current_weapon_stats.Shot_Trail_Hit_Sprite)
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Trail_Hit_Type") {
		Shot_Trail_Hit_Type = asset_get_index(current_weapon_stats.Shot_Trail_Hit_Type)
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Alpha") {
		Shot_Alpha = current_weapon_stats.Shot_Alpha
	}
	if variable_struct_exists(current_weapon_stats, "Weapon_Vomit") {
		Weapon_Vomit = current_weapon_stats.Weapon_Vomit
	}
	if variable_struct_exists(current_weapon_stats, "Weapon_Vomit_Min_Speed") {
		Weapon_Vomit_Min_Speed = current_weapon_stats.Weapon_Vomit_Min_Speed
	}
	if variable_struct_exists(current_weapon_stats, "Weapon_Vomit_Max_Speed") {
		Weapon_Vomit_Max_Speed = current_weapon_stats.Weapon_Vomit_Max_Speed
	}
	if variable_struct_exists(current_weapon_stats, "Weapon_Vomit_Min_Life") {
		Weapon_Vomit_Min_Life = current_weapon_stats.Weapon_Vomit_Min_Life
	}
	if variable_struct_exists(current_weapon_stats, "Weapon_Vomit_Max_Life") {
		Weapon_Vomit_Max_Life = current_weapon_stats.Weapon_Vomit_Max_Life
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Direction_Offset") {
		Shot_Direction_Offset = current_weapon_stats.Shot_Direction_Offset
	}
	if variable_struct_exists(current_weapon_stats, "Weapon_Melee") {
		Weapon_Melee = current_weapon_stats.Weapon_Melee
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Screen_Shake") {
		Shot_Screen_Shake = current_weapon_stats.Shot_Screen_Shake
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Sprite") {
		Shot_Sprite = asset_get_index(current_weapon_stats.Shot_Sprite);
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Type") {
		Shot_Type = asset_get_index(current_weapon_stats.Shot_Type)
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Size_Max") {
		Shot_Size_Max = current_weapon_stats.Shot_Size_Max
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Angle") {
		Shot_Angle = current_weapon_stats.Shot_Angle
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Boss_Aim") {
		Shot_Boss_Aim = current_weapon_stats.Shot_Boss_Aim
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Frame") {
		Shot_Frame = current_weapon_stats.Shot_Frame
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Frames") {
		Shot_Frames = current_weapon_stats.Shot_Frames
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Image_Speed") {
		Shot_Image_Speed = current_weapon_stats.Shot_Image_Speed
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Image_Rotation_Speed") {
		Shot_Image_Rotation_Speed = current_weapon_stats.Shot_Image_Rotation_Speed
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Image_Direction") {
		Shot_Image_Direction = current_weapon_stats.Shot_Image_Direction
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Depth") {
		Shot_Depth = current_weapon_stats.Shot_Depth
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Keep_Direction") {
		Shot_Keep_Direction = current_weapon_stats.Shot_Keep_Direction
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Point_Angle") {
		Shot_Point_Angle = current_weapon_stats.Shot_Point_Angle
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Duplicate_Sprite") {
		Shot_Duplicate_Sprite = asset_get_index(current_weapon_stats.Shot_Duplicate_Sprite)
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Soul_Damage") {
		Shot_Soul_Damage = current_weapon_stats.Shot_Soul_Damage
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Element") {
		Shot_Element = current_weapon_stats.Shot_Element
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Grow") {
		Shot_Grow = current_weapon_stats.Shot_Grow
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Grow_Time") {
		Shot_Grow_Time = current_weapon_stats.Shot_Grow_Time
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Grow_Size") {
		Shot_Grow_Size = current_weapon_stats.Shot_Grow_Size
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Lobbing") {
		Shot_Lobbing = current_weapon_stats.Shot_Lobbing
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Face_Direction") {
		Shot_Face_Direction = current_weapon_stats.Shot_Face_Direction
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Wave_Direction") {
		Shot_Wave_Direction = current_weapon_stats.Shot_Wave_Direction
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Wave_Acceleration") {
		Shot_Wave_Acceleration = current_weapon_stats.Shot_Wave_Acceleration
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Wave_Time") {
		Shot_Wave_Time = current_weapon_stats.Shot_Wave_Time
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Ground") {
		Shot_Ground = current_weapon_stats.Shot_Ground
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Acceleration") {
		Shot_Acceleration = current_weapon_stats.Shot_Acceleration
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Friction") {
		Shot_Friction = current_weapon_stats.Shot_Friction
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Min_Speed") {
		Shot_Min_Speed = current_weapon_stats.Shot_Min_Speed
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Orbital_Type") {
		Shot_Orbital_Type = current_weapon_stats.Shot_Orbital_Type
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Orbital_Range") {
		Shot_Orbital_Range = current_weapon_stats.Shot_Orbital_Range
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Orbital_Angle") {
		Shot_Orbital_Angle = current_weapon_stats.Shot_Orbital_Angle
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Continue") {
		Shot_Continue = current_weapon_stats.Shot_Continue
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Healing") {
		Shot_Healing = current_weapon_stats.Shot_Healing
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Crit_Chance") {
		Shot_Crit_Chance = current_weapon_stats.Shot_Crit_Chance
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Crit_Multiple") {
		Shot_Crit_Multiple = current_weapon_stats.Shot_Crit_Multiple
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Melee") {
		Shot_Melee = current_weapon_stats.Shot_Melee
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Air_Target") {
		Shot_Air_Target = current_weapon_stats.Shot_Air_Target
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Forward_Amount") {
		Shot_Forward_Amount = current_weapon_stats.Shot_Forward_Amount
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Weapon_Lean") {
		Shot_Weapon_Lean = current_weapon_stats.Shot_Weapon_Lean
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Phasing") {
		Shot_Phasing = current_weapon_stats.Shot_Phasing
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Phasing") {
		Shot_Phasing = current_weapon_stats.Shot_Phasing
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Looping") {
		Shot_Looping = current_weapon_stats.Shot_Looping
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Comeback") {
		Shot_Comeback = current_weapon_stats.Shot_Comeback
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Pierce") {
		Shot_Pierce = current_weapon_stats.Shot_Pierce
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Bounce") {
		Shot_Bounce = current_weapon_stats.Shot_Bounce
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Beam") {
		Shot_Beam = current_weapon_stats.Shot_Beam
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Beam_Count") {
		Shot_Beam_Count = current_weapon_stats.Shot_Beam_Count
	}
	if variable_struct_exists(current_weapon_stats, "Weapon_Split_Visible") {
		Weapon_Split_Visible = current_weapon_stats.Weapon_Split_Visible
	}
	if variable_struct_exists(current_weapon_stats, "Weapon_Split_Hit_Again") {
		Weapon_Split_Hit_Again = current_weapon_stats.Weapon_Split_Hit_Again
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Armour_Pierce") {
		Shot_Armour_Pierce = current_weapon_stats.Shot_Armour_Pierce
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Armour_Tear") {
		Shot_Armour_Tear = current_weapon_stats.Shot_Armour_Tear
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Chain") {
		Shot_Chain = current_weapon_stats.Shot_Chain
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Chain_Type") {
		Shot_Chain_Type = current_weapon_stats.Shot_Chain_Type
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Chain_Power") {
		Shot_Chain_Power = current_weapon_stats.Shot_Chain_Power
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Chain_Range") {
		Shot_Chain_Range = current_weapon_stats.Shot_Chain_Range
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Chain_Speed") {
		Shot_Chain_Speed = current_weapon_stats.Shot_Chain_Speed
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Homing_Type") {
		Shot_Homing_Type = current_weapon_stats.Shot_Homing_Type
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Homing_Range") {
		Shot_Homing_Range = current_weapon_stats.Shot_Homing_Range
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Homing_Speed") {
		Shot_Homing_Speed = current_weapon_stats.Shot_Homing_Speed
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Impact_Type") {
		Shot_Impact_Type = current_weapon_stats.Shot_Impact_Type
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Impact_Size") {
		Shot_Impact_Size = current_weapon_stats.Shot_Impact_Size
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Impact_Power") {
		Shot_Impact_Power = current_weapon_stats.Shot_Impact_Power
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Impact_Explode") {
		Shot_Impact_Explode = current_weapon_stats.Shot_Impact_Explode
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Type") {
		Shot_Burst_Type = current_weapon_stats.Shot_Burst_Type
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Amount") {
		Shot_Burst_Amount = current_weapon_stats.Shot_Burst_Amount
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Power") {
		Shot_Burst_Power = current_weapon_stats.Shot_Burst_Power
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Speed") {
		Shot_Burst_Speed = current_weapon_stats.Shot_Burst_Speed
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Lifespan") {
		Shot_Burst_Lifespan = current_weapon_stats.Shot_Burst_Lifespan
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Homing") {
		Shot_Burst_Homing = current_weapon_stats.Shot_Burst_Homing
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Homing_Speed") {
		Shot_Burst_Homing_Speed = current_weapon_stats.Shot_Burst_Homing_Speed
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Pierce") {
		Shot_Burst_Pierce = current_weapon_stats.Shot_Burst_Pierce
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Extra_Hits") {
		Shot_Burst_Extra_Hits = current_weapon_stats.Shot_Burst_Extra_Hits
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Extra_Hit_Power") {
		Shot_Burst_Extra_Hit_Power = current_weapon_stats.Shot_Burst_Extra_Hit_Power
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Extra_Hit_Frequency") {
		Shot_Burst_Extra_Hit_Frequency = current_weapon_stats.Shot_Burst_Extra_Hit_Frequency
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Range") {
		Shot_Burst_Range = current_weapon_stats.Shot_Burst_Range
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Spread") {
		Shot_Burst_Spread = current_weapon_stats.Shot_Burst_Spread
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Bullet_Displacement") {
		Shot_Burst_Bullet_Displacement = current_weapon_stats.Shot_Burst_Bullet_Displacement
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Point_Angle") {
		Shot_Burst_Point_Angle = current_weapon_stats.Shot_Burst_Point_Angle
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Burst_Impact") {
		Shot_Burst_Impact = current_weapon_stats.Shot_Burst_Impact
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Aura") {
		Shot_Aura = current_weapon_stats.Shot_Aura
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Aura_Power") {
		Shot_Aura_Power = current_weapon_stats.Shot_Aura_Power
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Aura_Range") {
		Shot_Aura_Range = current_weapon_stats.Shot_Aura_Range
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Aura_Sprite") {
		Shot_Aura_Sprite = asset_get_index(current_weapon_stats.Shot_Aura_Sprite)
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Recycle") {
		Shot_Recycle = current_weapon_stats.Shot_Recycle
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Shield_Type") {
		Shot_Shield_Type = current_weapon_stats.Shot_Shield_Type
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Shield_Power") {
		Shot_Shield_Power = current_weapon_stats.Shot_Shield_Power
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Rebound_Type") {
		Shot_Rebound_Type = current_weapon_stats.Shot_Rebound_Type
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Rebound_Power") {
		Shot_Rebound_Power = current_weapon_stats.Shot_Rebound_Power
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Weaken") {
		Shot_Weaken = current_weapon_stats.Shot_Weaken
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Weaken_Time") {
		Shot_Weaken_Time = current_weapon_stats.Shot_Weaken_Time
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Poison") {
		Shot_Poison = current_weapon_stats.Shot_Poison
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Poison_Time") {
		Shot_Poison_Time = current_weapon_stats.Shot_Poison_Time
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Poison_Ticks") {
		Shot_Poison_Ticks = current_weapon_stats.Shot_Poison_Ticks
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Bleed") {
		Shot_Bleed = current_weapon_stats.Shot_Bleed
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Bleed_Chance") {
		Shot_Bleed_Chance = current_weapon_stats.Shot_Bleed_Chance
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Bleed_Time") {
		Shot_Bleed_Time = current_weapon_stats.Shot_Bleed_Time
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Bleed_Ticks") {
		Shot_Bleed_Ticks = current_weapon_stats.Shot_Bleed_Ticks
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Fire") {
		Shot_Fire = current_weapon_stats.Shot_Fire
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Fire_Time") {
		Shot_Fire_Time = current_weapon_stats.Shot_Fire_Time
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Fire_Ticks") {
		Shot_Fire_Ticks = current_weapon_stats.Shot_Fire_Ticks
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Freeze_Type") {
		Shot_Freeze_Type = current_weapon_stats.Shot_Freeze_Type
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Freeze") {
		Shot_Freeze = current_weapon_stats.Shot_Freeze
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Freeze_Chance") {
		Shot_Freeze_Chance = current_weapon_stats.Shot_Freeze_Chance
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Freeze_Time") {
		Shot_Freeze_Time = current_weapon_stats.Shot_Freeze_Time
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Life_Drain") {
		Shot_Life_Drain = current_weapon_stats.Shot_Life_Drain
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Essence_Drain") {
		Shot_Essence_Drain = current_weapon_stats.Shot_Essence_Drain
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Snake_Move") {
		Shot_Snake_Move = current_weapon_stats.Shot_Snake_Move
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Target_X") {
		Shot_Target_X = current_weapon_stats.Shot_Target_X
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Target_Y") {
		Shot_Target_Y = current_weapon_stats.Shot_Target_Y
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Speed_Power_Add") {
		Shot_Speed_Power_Add = current_weapon_stats.Shot_Speed_Power_Add
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Bullet_Redirect") {
		Shot_Bullet_Redirect = current_weapon_stats.Shot_Bullet_Redirect
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Bullet_Redirect_Chance") {
		Shot_Bullet_Redirect_Chance = current_weapon_stats.Shot_Bullet_Redirect_Chance
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Bullet_Displace") {
		Shot_Bullet_Displace = current_weapon_stats.Shot_Bullet_Displace
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Off_State") {
		Shot_Off_State = current_weapon_stats.Shot_Off_State
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Wander") {
		Shot_Wander = current_weapon_stats.Shot_Wander
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Wishful") {
		Shot_Wishful = current_weapon_stats.Shot_Wishful
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Angular_Velocity") {
		Shot_Angular_Velocity = current_weapon_stats.Shot_Angular_Velocity
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Suck") {
		Shot_Suck = current_weapon_stats.Shot_Suck
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Angle_Relative") {
		Shot_Angle_Relative = current_weapon_stats.Shot_Angle_Relative
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Angles") {
		Shot_Angles = current_weapon_stats.Shot_Angles
	}
	if variable_struct_exists(current_weapon_stats, "Weapon_Mouse_Maintain") {
		Weapon_Mouse_Maintain = current_weapon_stats.Weapon_Mouse_Maintain
	}
	if variable_struct_exists(current_weapon_stats, "Weapon_Soul_Maintain") {
		Weapon_Soul_Maintain = current_weapon_stats.Weapon_Soul_Maintain
	}
	if variable_struct_exists(current_weapon_stats, "Weapon_X_Maintain") {
		Weapon_X_Maintain = current_weapon_stats.Weapon_X_Maintain
	}
	if variable_struct_exists(current_weapon_stats, "Weapon_Y_Maintain") {
		Weapon_Y_Maintain = current_weapon_stats.Weapon_Y_Maintain
	}
		
	var i = 0;
	if variable_struct_exists(current_weapon_stats, "Shot_Extra_Hits") {
		for(i = 0; i < array_length(current_weapon_stats.Shot_Extra_Hits); i++) {
			Shot_Extra_Hits[i] = current_weapon_stats.Shot_Extra_Hits[i];
		}
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Extra_Hits_Sprite") {
		for(i = 0; i < array_length(current_weapon_stats.Shot_Extra_Hits); i++) {
			Shot_Extra_Hits_Sprite[i] = asset_get_index(current_weapon_stats.Shot_Extra_Hits_Sprite[i]);
		}
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Extra_Hit_Frequency") {
		for(i = 0; i < array_length(current_weapon_stats.Shot_Extra_Hits); i++) {
			Shot_Extra_Hit_Frequency[i] = current_weapon_stats.Shot_Extra_Hit_Frequency[i];
		}
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Extra_Hit_Power") {
		for(i = 0; i < array_length(current_weapon_stats.Shot_Extra_Hits); i++) {
			Shot_Extra_Hit_Power[i] = current_weapon_stats.Shot_Extra_Hit_Power[i];
		}
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Extra_Hit_Speed") {
		for(i = 0; i < array_length(current_weapon_stats.Shot_Extra_Hits); i++) {
			Shot_Extra_Hit_Speed[i] = current_weapon_stats.Shot_Extra_Hit_Speed[i];
		}
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Extra_Hit_Lifespan") {
		for(i = 0; i < array_length(current_weapon_stats.Shot_Extra_Hits); i++) {
			Shot_Extra_Hit_Lifespan[i] = current_weapon_stats.Shot_Extra_Hit_Lifespan[i];
		}
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Extra_Hit_Homing") {
		for(i = 0; i < array_length(current_weapon_stats.Shot_Extra_Hits); i++) {
			Shot_Extra_Hit_Homing[i] = current_weapon_stats.Shot_Extra_Hit_Homing[i];
		}
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Extra_Hit_Homing_Speed") {
		for(i = 0; i < array_length(current_weapon_stats.Shot_Extra_Hits); i++) {
			Shot_Extra_Hit_Homing_Speed[i] = current_weapon_stats.Shot_Extra_Hit_Homing_Speed[i];
		}
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Extra_Hit_Pierce") {
		for(i = 0; i < array_length(current_weapon_stats.Shot_Extra_Hits); i++) {
			Shot_Extra_Hit_Pierce[i] = current_weapon_stats.Shot_Extra_Hit_Pierce[i];
		}
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Extra_Hit_Acceleration") {
		for(i = 0; i < array_length(current_weapon_stats.Shot_Extra_Hits); i++) {
			Shot_Extra_Hit_Acceleration[i] = current_weapon_stats.Shot_Extra_Hit_Acceleration[i];
		}
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Extra_Hit_Size") {
		for(i = 0; i < array_length(current_weapon_stats.Shot_Extra_Hits); i++) {
			Shot_Extra_Hit_Size[i] = current_weapon_stats.Shot_Extra_Hit_Size[i];
		}
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Extra_Hit_Shrink") {
		for(i = 0; i < array_length(current_weapon_stats.Shot_Extra_Hits); i++) {
			Shot_Extra_Hit_Shrink[i] = current_weapon_stats.Shot_Extra_Hit_Shrink[i];
		}
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Extra_Hit_Fade") {
		for(i = 0; i < array_length(current_weapon_stats.Shot_Extra_Hits); i++) {
			Shot_Extra_Hit_Fade[i] = current_weapon_stats.Shot_Extra_Hit_Fade[i];
		}
	}
	
	if variable_struct_exists(current_weapon_stats, "Shot_Extra") {
		Shot_Extra = current_weapon_stats.Shot_Extra;
	}
	
	if variable_struct_exists(current_weapon_stats, "Minion_Sprite") {
		Minion_Sprite = asset_get_index(current_weapon_stats.Minion_Sprite);
	}
	if variable_struct_exists(current_weapon_stats, "Minion_Type") {
		Minion_Type = asset_get_index(current_weapon_stats.Minion_Type);
	}
	if variable_struct_exists(current_weapon_stats, "Minion_Speed") {
		Minion_Speed = current_weapon_stats.Minion_Speed;
	}
	if variable_struct_exists(current_weapon_stats, "Minion_Health") {
		Minion_Health = current_weapon_stats.Minion_Health;
	}
	if variable_struct_exists(current_weapon_stats, "Minion_Power") {
		Minion_Power = current_weapon_stats.Minion_Power;
	}
	if variable_struct_exists(current_weapon_stats, "Minion_Lifespan") {
		Minion_Lifespan = current_weapon_stats.Minion_Lifespan;
	}
		
	/*if variable_struct_exists(current_weapon_stats, "Shot") {
		Shot = current_weapon_stats.Shot
	}*/
}