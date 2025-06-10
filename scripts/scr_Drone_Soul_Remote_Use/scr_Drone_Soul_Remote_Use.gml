function scr_Drone_Soul_Remote_Use() {
	current_weapon_stats = scr_Setup_Default_Shot_Stats();

	current_weapon_stats.Shot_Spread += 0;
	current_weapon_stats.Shot_Accuracy += 10;
	current_weapon_stats.Shot_Count += 0;

	current_weapon_stats.Minion_Sprite = "spr_Drone_Soul";
	current_weapon_stats.Minion_Type = "obj_Drone_Soul";

	current_weapon_stats.Minion_Speed = 2;
	current_weapon_stats.Minion_Health = 99;
	current_weapon_stats.Shot_Power = 5;
	current_weapon_stats.Minion_Power = (current_weapon_stats.Shot_Power + spoweradd) * scr_Soul_Power_Factor_Calc(id)
	current_weapon_stats.Shot_Knock_Back = 10;
	current_weapon_stats.Minion_Lifespan = 750;

	scr_Soul_Spawn(current_weapon_stats);



}
