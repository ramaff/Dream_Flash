function scr_Bounce_Forcefield_Use() {
	scr_Default_Weapon_Stats();

	current_weapon_stats.Shot_Spread += 0;
	current_weapon_stats.Shot_Accuracy += 5;
	current_weapon_stats.Shot_Count += 0;

	current_weapon_stats.Shot_Forward = 0;
	current_weapon_stats.Shot_Soul_Maintain = 1;

	current_weapon_stats.Shot_Sprite = "spr_Bounce_Forcefield";
	current_weapon_stats.Shot_Type = "obj_Defense_Soul_Shot";

	current_weapon_stats.Shot_Speed = 0;
	current_weapon_stats.Shot_Movement = 0;
	current_weapon_stats.Shot_Power = 3;
	current_weapon_stats.Shot_Knock_Back = 0;
	current_weapon_stats.Shot_Life_Span = 45;

	current_weapon_stats.Shot_Pierce += 10;
	current_weapon_stats.Shot_Phasing = 1;

	current_weapon_stats.Shot_Size = 0.6;
	current_weapon_stats.Shot_Light = 1;
	current_weapon_stats.Shot_Light_Size = 1;

	current_weapon_stats.Shot_Rebound_Type = 2;
	current_weapon_stats.Shot_Rebound_Power = 10;

	scr_Shot_Creation(current_weapon_stats);



}
