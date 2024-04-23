function scr_Beast_Maw_Teleport_Use(dist, ang) {
	scr_Default_Weapon_Stats();
	
	current_weapon_stats = {
		Shot_Spread: 0,
		Shot_Accuracy: 10,
		Shot_Count: 1,
		Shot_Sprite: "spr_Beast_Maw",
		Shot_Type: "obj_Lesser_Soul_Shot"
	};

	/*Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Sprite = spr_Beast_Maw;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Phase_Magic_Shot;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;*/

	current_weapon_stats.Shot_Speed = 0;
	current_weapon_stats.Shot_Movement = 0;
	current_weapon_stats.Shot_Power = 30 * global.soulstateformboost * (1 + global.teleportboost);
	current_weapon_stats.Shot_Knock_Back = 10;
	current_weapon_stats.Shot_Life_Span = 23;
	
	current_weapon_stats.Shot_Screen_Shake = 6;

	current_weapon_stats.Shot_XX = lengthdir_x(dist, ang);
	current_weapon_stats.Shot_YY = lengthdir_y(dist, ang);
	current_weapon_stats.Shot_Life_Drain = 0.5;

	current_weapon_stats.Shot_Phasing = 1;
	current_weapon_stats.Weapon_Melee = true;

	current_weapon_stats.Shot_Pierce = 100;

	current_weapon_stats.Shot_Size = 0.8;
	
	current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);

	scr_Shot_Creation();

}
