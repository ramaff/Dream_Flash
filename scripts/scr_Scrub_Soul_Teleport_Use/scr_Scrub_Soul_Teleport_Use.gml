function scr_Scrub_Soul_Teleport_Use(dist, ang) {
	scr_Default_Weapon_Stats();
	
	current_weapon_stats.Shot_Spread = 0;
	current_weapon_stats.Shot_Accuracy = 10;
	current_weapon_stats.Shot_Count = 1;
	current_weapon_stats.Shot_Sprite = "spr_Shot_Bubble_Medium";
	current_weapon_stats.Shot_Type = "obj_Lesser_Soul_Shot";

	current_weapon_stats.Shot_Size = 0.325 + random(0.125);
	current_weapon_stats.Shot_Power = 6 * global.soulstateformboost * (1 + global.teleportboost);
	current_weapon_stats.Shot_Friction = 0.05;
	current_weapon_stats.Shot_Min_Speed = 0.33;
	current_weapon_stats.Shot_Homing_Type = 1;
	current_weapon_stats.Shot_Homing_Range = 120;
	current_weapon_stats.Shot_Speed = 3;
	current_weapon_stats.Shot_Knock_Back = 0;
	current_weapon_stats.Shot_Life_Span = 120;
	current_weapon_stats.Shot_Mouse = 0;
	current_weapon_stats.Shot_Shield_Type = 1;
	current_weapon_stats.Shot_Shield_Power = current_weapon_stats.Shot_Power * 2;
	current_weapon_stats.Shot_Direction = random(360);
	current_weapon_stats.Shot_Off_State = 1;
	current_weapon_stats.Shot_XX = lengthdir_x(dist, ang) - 75 + random(150);
	current_weapon_stats.Shot_YY = lengthdir_y(dist, ang) - 75 + random(150);
	
	current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
	
	scr_Shot_Creation();

}
