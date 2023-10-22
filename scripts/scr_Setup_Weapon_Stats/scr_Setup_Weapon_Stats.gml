// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_setup_weapon_stats(_current_weapon_stats = current_weapon_stats){
	
	// Newer System ? idk
	
	//Shot_Stats = _current_weapon_stats;
	if variable_struct_exists(_current_weapon_stats, "Shot_Lobbing") {
		Shot_Stats.Shot_Lobbing = _current_weapon_stats.Shot_Lobbing;
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Lobbing_Tilt") {
		Shot_Stats.Shot_Lobbing_Tilt = _current_weapon_stats.Shot_Lobbing_Tilt;
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Lobbing_Wobble") {
		Shot_Stats.Shot_Lobbing_Wobble = _current_weapon_stats.Shot_Lobbing_Wobble;
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Height") {
		Shot_Stats.Shot_Height = _current_weapon_stats.Shot_Height;
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Fall_Speed") {
		Shot_Stats.Shot_Fall_Speed = _current_weapon_stats.Shot_Fall_Speed;
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Gravity") {
		Shot_Stats.Shot_Gravity = _current_weapon_stats.Shot_Gravity;
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Chain_Color") {
		Shot_Stats.Shot_Chain_Color = _current_weapon_stats.Shot_Chain_Color;
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Zig_Zag") {
		Shot_Stats.Shot_Zig_Zag = _current_weapon_stats.Shot_Zig_Zag;
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Init_Grow") {
		Shot_Stats.Shot_Init_Grow = _current_weapon_stats.Shot_Init_Grow;
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Stats") {
		/*if _current_weapon_stats.Shot_Extra_Stats != false {
			show_debug_message("_current_weapon_stats.Shot_Extra_Stats: " + string(_current_weapon_stats.Shot_Extra_Stats))
			Shot_Stats.Shot_Extra_Stats = json_parse(json_stringify(global.DEFAULT_SHOT_STATS));
			var _PropertyNames = variable_struct_get_names(_current_weapon_stats.Shot_Extra_Stats);
	        for (var i = 0; i < array_length(_PropertyNames); i++) {
	            variable_struct_set(Shot_Stats.Shot_Extra_Stats, _PropertyNames[i], variable_struct_get(_current_weapon_stats.Shot_Extra_Stats, _PropertyNames[i]));
	        }
		} */
		Shot_Stats.Shot_Extra_Stats = _current_weapon_stats.Shot_Extra_Stats;
	}
	
	// Older System
	
	if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Stats") {
		Shot_Extra_Stats = _current_weapon_stats.Shot_Extra_Stats
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Stats") {
		Shot_Burst_Stats = _current_weapon_stats.Shot_Burst_Stats
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Air_Burst_Stats") {
		Shot_Air_Burst_Stats = _current_weapon_stats.Shot_Air_Burst_Stats
	}
	
	if variable_struct_exists(_current_weapon_stats, "Shot_Count") {
		Shot_Count = _current_weapon_stats.Shot_Count
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Spread") {
		Shot_Spread = _current_weapon_stats.Shot_Spread
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Accuracy") {
		Shot_Accuracy = _current_weapon_stats.Shot_Accuracy
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Power") {
		Shot_Power = _current_weapon_stats.Shot_Power
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Speed") {
		Shot_Speed = _current_weapon_stats.Shot_Speed
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Lifespan") {
		Shot_Lifespan = _current_weapon_stats.Shot_Lifespan
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Knockback") {
		Shot_Knockback = _current_weapon_stats.Shot_Knockback
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Size") {
		Shot_Size = _current_weapon_stats.Shot_Size
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Light") {
		Shot_Light = _current_weapon_stats.Shot_Light
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Light_Size") {
		Shot_Light_Size = _current_weapon_stats.Shot_Light_Size
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Trail") {
		Shot_Trail = _current_weapon_stats.Shot_Trail
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Trail_Type") {
		Shot_Trail_Type = asset_get_index(_current_weapon_stats.Shot_Trail_Type)
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Trail_Sprite") {
		Shot_Trail_Sprite = asset_get_index(_current_weapon_stats.Shot_Trail_Sprite)
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Trail_Color1") {
		var cray = _current_weapon_stats.Shot_Trail_Color1
		Shot_Trail_Color1 = make_color_rgb(cray[0],cray[1],cray[2]);
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Trail_Color2") {
		var cray = _current_weapon_stats.Shot_Trail_Color2
		Shot_Trail_Color2 = make_color_rgb(cray[0],cray[1],cray[2]);
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Trail_Life") {
		Shot_Trail_Life = _current_weapon_stats.Shot_Trail_Life
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Trail_Area") {
		Shot_Trail_Area = _current_weapon_stats.Shot_Trail_Area
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Trail_Frequency") {
		Shot_Trail_Frequency = _current_weapon_stats.Shot_Trail_Frequency
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Trail_Fade") {
		Shot_Trail_Fade = _current_weapon_stats.Shot_Trail_Fade
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Trail_Hit_Count") {
		Shot_Trail_Hit_Count = _current_weapon_stats.Shot_Trail_Hit_Count
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Trail_Hit_Speed") {
		Shot_Trail_Hit_Speed = _current_weapon_stats.Shot_Trail_Hit_Speed
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Trail_Hit_Life") {
		Shot_Trail_Hit_Life = _current_weapon_stats.Shot_Trail_Hit_Life
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Trail_Hit_Sprite") {
		Shot_Trail_Hit_Sprite = asset_get_index(_current_weapon_stats.Shot_Trail_Hit_Sprite)
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Trail_Hit_Type") {
		Shot_Trail_Hit_Type = asset_get_index(_current_weapon_stats.Shot_Trail_Hit_Type)
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Alpha") {
		Shot_Alpha = _current_weapon_stats.Shot_Alpha
	}
	if variable_struct_exists(_current_weapon_stats, "Weapon_Vomit") {
		Weapon_Vomit = _current_weapon_stats.Weapon_Vomit
	}
	if variable_struct_exists(_current_weapon_stats, "Weapon_Vomit_Min_Speed") {
		Weapon_Vomit_Min_Speed = _current_weapon_stats.Weapon_Vomit_Min_Speed
	}
	if variable_struct_exists(_current_weapon_stats, "Weapon_Vomit_Max_Speed") {
		Weapon_Vomit_Max_Speed = _current_weapon_stats.Weapon_Vomit_Max_Speed
	}
	if variable_struct_exists(_current_weapon_stats, "Weapon_Vomit_Min_Life") {
		Weapon_Vomit_Min_Life = _current_weapon_stats.Weapon_Vomit_Min_Life
	}
	if variable_struct_exists(_current_weapon_stats, "Weapon_Vomit_Max_Life") {
		Weapon_Vomit_Max_Life = _current_weapon_stats.Weapon_Vomit_Max_Life
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Direction_Offset") {
		Shot_Direction_Offset = _current_weapon_stats.Shot_Direction_Offset
	}
	if variable_struct_exists(_current_weapon_stats, "Weapon_Melee") {
		Weapon_Melee = _current_weapon_stats.Weapon_Melee
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Screen_Shake") {
		Shot_Screen_Shake = _current_weapon_stats.Shot_Screen_Shake
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Sprite") {
		Shot_Sprite = asset_get_index(_current_weapon_stats.Shot_Sprite);
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Type") {
		Shot_Type = asset_get_index(_current_weapon_stats.Shot_Type)
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Size_Max") {
		Shot_Size_Max = _current_weapon_stats.Shot_Size_Max
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Angle") {
		Shot_Angle = _current_weapon_stats.Shot_Angle
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Boss_Aim") {
		Shot_Boss_Aim = _current_weapon_stats.Shot_Boss_Aim
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Frame") {
		Shot_Frame = _current_weapon_stats.Shot_Frame
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Frames") {
		Shot_Frames = _current_weapon_stats.Shot_Frames
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Image_Speed") {
		Shot_Image_Speed = _current_weapon_stats.Shot_Image_Speed
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Image_Rotation_Speed") {
		Shot_Image_Rotation_Speed = _current_weapon_stats.Shot_Image_Rotation_Speed
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Image_Direction") {
		Shot_Image_Direction = _current_weapon_stats.Shot_Image_Direction
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Depth") {
		Shot_Depth = _current_weapon_stats.Shot_Depth
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Keep_Direction") {
		Shot_Keep_Direction = _current_weapon_stats.Shot_Keep_Direction
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Point_Angle") {
		Shot_Point_Angle = _current_weapon_stats.Shot_Point_Angle
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Duplicate_Sprite") {
		Shot_Duplicate_Sprite = asset_get_index(_current_weapon_stats.Shot_Duplicate_Sprite)
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Soul_Damage") {
		Shot_Soul_Damage = _current_weapon_stats.Shot_Soul_Damage
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Element") {
		Shot_Element = _current_weapon_stats.Shot_Element
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Grow") {
		Shot_Grow = _current_weapon_stats.Shot_Grow
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Grow_Time") {
		Shot_Grow_Time = _current_weapon_stats.Shot_Grow_Time
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Grow_Size") {
		Shot_Grow_Size = _current_weapon_stats.Shot_Grow_Size
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Lobbing") {
		Shot_Lobbing = _current_weapon_stats.Shot_Lobbing
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Face_Direction") {
		Shot_Face_Direction = _current_weapon_stats.Shot_Face_Direction
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Wave_Direction") {
		Shot_Wave_Direction = _current_weapon_stats.Shot_Wave_Direction
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Wave_Acceleration") {
		Shot_Wave_Acceleration = _current_weapon_stats.Shot_Wave_Acceleration
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Wave_Time") {
		Shot_Wave_Time = _current_weapon_stats.Shot_Wave_Time
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Ground") {
		Shot_Ground = _current_weapon_stats.Shot_Ground
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Acceleration") {
		Shot_Acceleration = _current_weapon_stats.Shot_Acceleration
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Friction") {
		Shot_Friction = _current_weapon_stats.Shot_Friction
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Min_Speed") {
		Shot_Min_Speed = _current_weapon_stats.Shot_Min_Speed
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Orbital_Type") {
		Shot_Orbital_Type = _current_weapon_stats.Shot_Orbital_Type
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Orbital_Range") {
		Shot_Orbital_Range = _current_weapon_stats.Shot_Orbital_Range
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Orbital_Angle") {
		Shot_Orbital_Angle = _current_weapon_stats.Shot_Orbital_Angle
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Continue") {
		Shot_Continue = _current_weapon_stats.Shot_Continue
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Healing") {
		Shot_Healing = _current_weapon_stats.Shot_Healing
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Crit_Chance") {
		Shot_Crit_Chance = _current_weapon_stats.Shot_Crit_Chance
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Crit_Multiple") {
		Shot_Crit_Multiple = _current_weapon_stats.Shot_Crit_Multiple
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Melee") {
		Shot_Melee = _current_weapon_stats.Shot_Melee
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Air_Target") {
		Shot_Air_Target = _current_weapon_stats.Shot_Air_Target
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Forward_Amount") {
		Shot_Forward_Amount = _current_weapon_stats.Shot_Forward_Amount
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Weapon_Lean") {
		Shot_Weapon_Lean = _current_weapon_stats.Shot_Weapon_Lean
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Phasing") {
		Shot_Phasing = _current_weapon_stats.Shot_Phasing
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Phasing") {
		Shot_Phasing = _current_weapon_stats.Shot_Phasing
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Looping") {
		Shot_Looping = _current_weapon_stats.Shot_Looping
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Comeback") {
		Shot_Comeback = _current_weapon_stats.Shot_Comeback
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Pierce") {
		Shot_Pierce = _current_weapon_stats.Shot_Pierce
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Bounce") {
		Shot_Bounce = _current_weapon_stats.Shot_Bounce
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Beam") {
		Shot_Beam = _current_weapon_stats.Shot_Beam
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Beam_Count") {
		Shot_Beam_Count = _current_weapon_stats.Shot_Beam_Count
	}
	if variable_struct_exists(_current_weapon_stats, "Weapon_Split_Visible") {
		Weapon_Split_Visible = _current_weapon_stats.Weapon_Split_Visible
	}
	if variable_struct_exists(_current_weapon_stats, "Weapon_Split_Hit_Again") {
		Weapon_Split_Hit_Again = _current_weapon_stats.Weapon_Split_Hit_Again
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Armour_Pierce") {
		Shot_Armour_Pierce = _current_weapon_stats.Shot_Armour_Pierce
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Armour_Tear") {
		Shot_Armour_Tear = _current_weapon_stats.Shot_Armour_Tear
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Chain") {
		Shot_Chain = _current_weapon_stats.Shot_Chain
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Chain_Type") {
		Shot_Chain_Type = _current_weapon_stats.Shot_Chain_Type
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Chain_Power") {
		Shot_Chain_Power = _current_weapon_stats.Shot_Chain_Power
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Chain_Range") {
		Shot_Chain_Range = _current_weapon_stats.Shot_Chain_Range
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Chain_Speed") {
		Shot_Chain_Speed = _current_weapon_stats.Shot_Chain_Speed
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Homing_Type") {
		Shot_Homing_Type = _current_weapon_stats.Shot_Homing_Type
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Homing_Range") {
		Shot_Homing_Range = _current_weapon_stats.Shot_Homing_Range
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Homing_Speed") {
		Shot_Homing_Speed = _current_weapon_stats.Shot_Homing_Speed
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Impact_Type") {
		Shot_Impact_Type = _current_weapon_stats.Shot_Impact_Type
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Impact_Size") {
		Shot_Impact_Size = _current_weapon_stats.Shot_Impact_Size
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Impact_Power") {
		Shot_Impact_Power = _current_weapon_stats.Shot_Impact_Power
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Impact_Explode") {
		Shot_Impact_Explode = _current_weapon_stats.Shot_Impact_Explode
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Type") {
		Shot_Burst_Type = _current_weapon_stats.Shot_Burst_Type
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Amount") {
		Shot_Burst_Amount = _current_weapon_stats.Shot_Burst_Amount
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Power") {
		Shot_Burst_Power = _current_weapon_stats.Shot_Burst_Power
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Speed") {
		Shot_Burst_Speed = _current_weapon_stats.Shot_Burst_Speed
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Lifespan") {
		Shot_Burst_Lifespan = _current_weapon_stats.Shot_Burst_Lifespan
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Homing") {
		Shot_Burst_Homing = _current_weapon_stats.Shot_Burst_Homing
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Homing_Speed") {
		Shot_Burst_Homing_Speed = _current_weapon_stats.Shot_Burst_Homing_Speed
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Pierce") {
		Shot_Burst_Pierce = _current_weapon_stats.Shot_Burst_Pierce
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Extra_Hits") {
		Shot_Burst_Extra_Hits = _current_weapon_stats.Shot_Burst_Extra_Hits
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Extra_Hit_Power") {
		Shot_Burst_Extra_Hit_Power = _current_weapon_stats.Shot_Burst_Extra_Hit_Power
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Extra_Hit_Frequency") {
		Shot_Burst_Extra_Hit_Frequency = _current_weapon_stats.Shot_Burst_Extra_Hit_Frequency
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Range") {
		Shot_Burst_Range = _current_weapon_stats.Shot_Burst_Range
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Spread") {
		Shot_Burst_Spread = _current_weapon_stats.Shot_Burst_Spread
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Bullet_Displacement") {
		Shot_Burst_Bullet_Displacement = _current_weapon_stats.Shot_Burst_Bullet_Displacement
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Point_Angle") {
		Shot_Burst_Point_Angle = _current_weapon_stats.Shot_Burst_Point_Angle
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Burst_Impact") {
		Shot_Burst_Impact = _current_weapon_stats.Shot_Burst_Impact
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Aura") {
		Shot_Aura = _current_weapon_stats.Shot_Aura
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Aura_Power") {
		Shot_Aura_Power = _current_weapon_stats.Shot_Aura_Power
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Aura_Range") {
		Shot_Aura_Range = _current_weapon_stats.Shot_Aura_Range
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Aura_Sprite") {
		Shot_Aura_Sprite = asset_get_index(_current_weapon_stats.Shot_Aura_Sprite)
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Recycle") {
		Shot_Recycle = _current_weapon_stats.Shot_Recycle
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Shield_Type") {
		Shot_Shield_Type = _current_weapon_stats.Shot_Shield_Type
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Shield_Power") {
		Shot_Shield_Power = _current_weapon_stats.Shot_Shield_Power
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Rebound_Type") {
		Shot_Rebound_Type = _current_weapon_stats.Shot_Rebound_Type
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Rebound_Power") {
		Shot_Rebound_Power = _current_weapon_stats.Shot_Rebound_Power
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Weaken") {
		Shot_Weaken = _current_weapon_stats.Shot_Weaken
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Weaken_Time") {
		Shot_Weaken_Time = _current_weapon_stats.Shot_Weaken_Time
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Poison") {
		Shot_Poison = _current_weapon_stats.Shot_Poison
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Poison_Time") {
		Shot_Poison_Time = _current_weapon_stats.Shot_Poison_Time
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Poison_Ticks") {
		Shot_Poison_Ticks = _current_weapon_stats.Shot_Poison_Ticks
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Bleed") {
		Shot_Bleed = _current_weapon_stats.Shot_Bleed
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Bleed_Chance") {
		Shot_Bleed_Chance = _current_weapon_stats.Shot_Bleed_Chance
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Bleed_Time") {
		Shot_Bleed_Time = _current_weapon_stats.Shot_Bleed_Time
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Bleed_Ticks") {
		Shot_Bleed_Ticks = _current_weapon_stats.Shot_Bleed_Ticks
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Fire") {
		Shot_Fire = _current_weapon_stats.Shot_Fire
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Fire_Time") {
		Shot_Fire_Time = _current_weapon_stats.Shot_Fire_Time
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Fire_Ticks") {
		Shot_Fire_Ticks = _current_weapon_stats.Shot_Fire_Ticks
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Freeze_Type") {
		Shot_Freeze_Type = _current_weapon_stats.Shot_Freeze_Type
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Freeze") {
		Shot_Freeze = _current_weapon_stats.Shot_Freeze
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Freeze_Chance") {
		Shot_Freeze_Chance = _current_weapon_stats.Shot_Freeze_Chance
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Freeze_Time") {
		Shot_Freeze_Time = _current_weapon_stats.Shot_Freeze_Time
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Life_Drain") {
		Shot_Life_Drain = _current_weapon_stats.Shot_Life_Drain
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Essence_Drain") {
		Shot_Essence_Drain = _current_weapon_stats.Shot_Essence_Drain
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Snake_Move") {
		Shot_Snake_Move = _current_weapon_stats.Shot_Snake_Move
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Target_X") {
		Shot_Target_X = _current_weapon_stats.Shot_Target_X
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Target_Y") {
		Shot_Target_Y = _current_weapon_stats.Shot_Target_Y
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Speed_Power_Add") {
		Shot_Speed_Power_Add = _current_weapon_stats.Shot_Speed_Power_Add
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Bullet_Redirect") {
		Shot_Bullet_Redirect = _current_weapon_stats.Shot_Bullet_Redirect
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Bullet_Redirect_Chance") {
		Shot_Bullet_Redirect_Chance = _current_weapon_stats.Shot_Bullet_Redirect_Chance
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Bullet_Displace") {
		Shot_Bullet_Displace = _current_weapon_stats.Shot_Bullet_Displace
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Off_State") {
		Shot_Off_State = _current_weapon_stats.Shot_Off_State
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Wander") {
		Shot_Wander = _current_weapon_stats.Shot_Wander
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Wishful") {
		Shot_Wishful = _current_weapon_stats.Shot_Wishful
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Angular_Velocity") {
		Shot_Angular_Velocity = _current_weapon_stats.Shot_Angular_Velocity
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Suck") {
		Shot_Suck = _current_weapon_stats.Shot_Suck
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Angle_Relative") {
		Shot_Angle_Relative = _current_weapon_stats.Shot_Angle_Relative
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Angles") {
		Shot_Angles = _current_weapon_stats.Shot_Angles
	}
	if variable_struct_exists(_current_weapon_stats, "Weapon_Mouse_Maintain") {
		Weapon_Mouse_Maintain = _current_weapon_stats.Weapon_Mouse_Maintain
	}
	if variable_struct_exists(_current_weapon_stats, "Weapon_Soul_Maintain") {
		Weapon_Soul_Maintain = _current_weapon_stats.Weapon_Soul_Maintain
	}
	if variable_struct_exists(_current_weapon_stats, "Weapon_X_Maintain") {
		Weapon_X_Maintain = _current_weapon_stats.Weapon_X_Maintain
	}
	if variable_struct_exists(_current_weapon_stats, "Weapon_Y_Maintain") {
		Weapon_Y_Maintain = _current_weapon_stats.Weapon_Y_Maintain
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Mouse") {
		Shot_Mouse = _current_weapon_stats.Shot_Mouse
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Direction") {
		Shot_Direction = _current_weapon_stats.Shot_Direction
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_XX") {
		Shot_XX = _current_weapon_stats.Shot_XX
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_YY") {
		Shot_YY = _current_weapon_stats.Shot_YY
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Alpha") {
		Shot_Alpha = _current_weapon_stats.Shot_Alpha
	}
		
	var i = 0;
	if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Hits") {
		for(i = 0; i < array_length(_current_weapon_stats.Shot_Extra_Hits); i++) {
			Shot_Extra_Hits[i] = _current_weapon_stats.Shot_Extra_Hits[i];
		}
		if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Hits_Sprite") {
			for(i = 0; i < array_length(_current_weapon_stats.Shot_Extra_Hits); i++) {
				Shot_Extra_Hits_Sprite[i] = asset_get_index(_current_weapon_stats.Shot_Extra_Hits_Sprite[i]);
			}
		}
		if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Hit_Frequency") {
			for(i = 0; i < array_length(_current_weapon_stats.Shot_Extra_Hits); i++) {
				Shot_Extra_Hit_Frequency[i] = _current_weapon_stats.Shot_Extra_Hit_Frequency[i];
			}
		}
		if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Hit_Power") {
			for(i = 0; i < array_length(_current_weapon_stats.Shot_Extra_Hits); i++) {
				Shot_Extra_Hit_Power[i] = _current_weapon_stats.Shot_Extra_Hit_Power[i];
			}
		}
		if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Hit_Speed") {
			for(i = 0; i < array_length(_current_weapon_stats.Shot_Extra_Hits); i++) {
				Shot_Extra_Hit_Speed[i] = _current_weapon_stats.Shot_Extra_Hit_Speed[i];
			}
		}
		if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Hit_Lifespan") {
			for(i = 0; i < array_length(_current_weapon_stats.Shot_Extra_Hits); i++) {
				Shot_Extra_Hit_Lifespan[i] = _current_weapon_stats.Shot_Extra_Hit_Lifespan[i];
			}
		}
		if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Hit_Homing") {
			for(i = 0; i < array_length(_current_weapon_stats.Shot_Extra_Hits); i++) {
				Shot_Extra_Hit_Homing[i] = _current_weapon_stats.Shot_Extra_Hit_Homing[i];
			}
		}
		if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Hit_Homing_Speed") {
			for(i = 0; i < array_length(_current_weapon_stats.Shot_Extra_Hits); i++) {
				Shot_Extra_Hit_Homing_Speed[i] = _current_weapon_stats.Shot_Extra_Hit_Homing_Speed[i];
			}
		}
		if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Hit_Pierce") {
			for(i = 0; i < array_length(_current_weapon_stats.Shot_Extra_Hits); i++) {
				Shot_Extra_Hit_Pierce[i] = _current_weapon_stats.Shot_Extra_Hit_Pierce[i];
			}
		}
		if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Hit_Acceleration") {
			for(i = 0; i < array_length(_current_weapon_stats.Shot_Extra_Hits); i++) {
				Shot_Extra_Hit_Acceleration[i] = _current_weapon_stats.Shot_Extra_Hit_Acceleration[i];
			}
		}
		if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Hit_Size") {
			for(i = 0; i < array_length(_current_weapon_stats.Shot_Extra_Hits); i++) {
				Shot_Extra_Hit_Size[i] = _current_weapon_stats.Shot_Extra_Hit_Size[i];
			}
		}
		if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Hit_Shrink") {
			for(i = 0; i < array_length(_current_weapon_stats.Shot_Extra_Hits); i++) {
				Shot_Extra_Hit_Shrink[i] = _current_weapon_stats.Shot_Extra_Hit_Shrink[i];
			}
		}
		if variable_struct_exists(_current_weapon_stats, "Shot_Extra_Hit_Fade") {
			for(i = 0; i < array_length(_current_weapon_stats.Shot_Extra_Hits); i++) {
				Shot_Extra_Hit_Fade[i] = _current_weapon_stats.Shot_Extra_Hit_Fade[i];
			}
		}
	}
	
	if variable_struct_exists(_current_weapon_stats, "Shot_Extra") {
		Shot_Extra = _current_weapon_stats.Shot_Extra;
	}
	
	if variable_struct_exists(_current_weapon_stats, "Minion_Sprite") {
		Minion_Sprite = asset_get_index(_current_weapon_stats.Minion_Sprite);
	}
	if variable_struct_exists(_current_weapon_stats, "Minion_Type") {
		Minion_Type = asset_get_index(_current_weapon_stats.Minion_Type);
	}
	if variable_struct_exists(_current_weapon_stats, "Minion_Speed") {
		Minion_Speed = _current_weapon_stats.Minion_Speed;
	}
	if variable_struct_exists(_current_weapon_stats, "Minion_Health") {
		Minion_Health = _current_weapon_stats.Minion_Health;
	}
	if variable_struct_exists(_current_weapon_stats, "Minion_Power") {
		Minion_Power = _current_weapon_stats.Minion_Power;
	}
	if variable_struct_exists(_current_weapon_stats, "Minion_Lifespan") {
		Minion_Lifespan = _current_weapon_stats.Minion_Lifespan;
	}
		
	/*if variable_struct_exists(_current_weapon_stats, "Shot") {
		Shot = _current_weapon_stats.Shot
	}*/
}