function scr_Spike_Shot_Teleport_Use(dist, ang) {
	current_weapon_stats = scr_Setup_Default_Shot_Stats();

	current_weapon_stats.Shot_Spread = 0;
	current_weapon_stats.Shot_Accuracy = 10;
	current_weapon_stats.Shot_Count = 1;
	current_weapon_stats.Shot_Sprite = "spr_Rising_Spike_Blue";
	current_weapon_stats.Shot_Type = "obj_Lesser_Soul_Shot";


	current_weapon_stats.Shot_Speed = 0;
	current_weapon_stats.Shot_Movement = 0;
	current_weapon_stats.Shot_Power = 10 * global.soulstateformboost * (1 + global.teleportboost);
	current_weapon_stats.Shot_Knock_Back = 10;
	current_weapon_stats.Shot_Life_Span = 45;
	current_weapon_stats.Shot_Off_State = 1;
	current_weapon_stats.Shot_XX = lengthdir_x(dist, ang);
	current_weapon_stats.Shot_YY = lengthdir_y(dist, ang);
	current_weapon_stats.Shot_Phasing = 1;
	current_weapon_stats.Shot_Ground = 1;
	current_weapon_stats.Shot_Melee = true;
	current_weapon_stats.Shot_Pierce = 99;
	current_weapon_stats.Shot_Size = 0.45 + random(0.15);
	current_weapon_stats.Shot_Off_State = true;
	current_weapon_stats.Shot_XX += -30 + random(60);
	current_weapon_stats.Shot_YY += -30 + random(60);

	//current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
	scr_Shot_Creation();

}
