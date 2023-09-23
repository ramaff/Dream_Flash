function scr_Spike_Shot_Teleport_Use(dist, ang) {
	scr_Default_Weapon_Stats();
	
	current_weapon_stats = {
		Shot_Spread: 0,
		Shot_Accuracy: 10,
		Shot_Count: 1,
		Shot_Sprite: "spr_Rising_Spike_Shot",
		Shot_Type: "obj_Lesser_Soul_Shot"
	};
	
	//scr_Setup_Weapon_Stats(current_weapon_stats);
	//current_weapon_stats.

	current_weapon_stats.Shot_Duplicate_Sprite = spr_Phase_Magic_Shot;
	current_weapon_stats.Shot_Speed = 0;
	current_weapon_stats.Shot_Movement = 0;
	current_weapon_stats.Shot_Power = 20 * global.soulstateformboost * (1 + global.teleportboost);
	current_weapon_stats.Shot_Knockback = 10;
	current_weapon_stats.Shot_Lifespan = 15;
	current_weapon_stats.Shot_Off_State = 1;
	current_weapon_stats.Shot_XX = lengthdir_x(dist, ang);
	current_weapon_stats.Shot_YY = lengthdir_y(dist, ang);
	current_weapon_stats.Shot_Phasing = 1;
	current_weapon_stats.Shot_Ground = 1;
	current_weapon_stats.Weapon_Melee = 1;
	current_weapon_stats.Shot_Pierce = 99;
	current_weapon_stats.Shot_Size = 0.5;

	scr_setup_weapon_stats(current_weapon_stats);
	scr_Shot_Creation();

}
