function scr_Manifesting_Rod_Use() {
	scr_Default_Weapon_Stats();

	current_weapon_stats.Shot_Spread += 0;
	current_weapon_stats.Shot_Accuracy += 10;
	current_weapon_stats.Shot_Count += 0;

	current_weapon_stats.Minion_Sprite = "spr_Manifested_Fig";
	current_weapon_stats.Minion_Type = "obj_Manifested_Fig";

	current_weapon_stats.Minion_Speed = 1.1;
	current_weapon_stats.Minion_Health = 50;
	current_weapon_stats.Shot_Power = 12;
	current_weapon_stats.Minion_Power = (current_weapon_stats.Shot_Power + spoweradd) * ((10 + spowerfactor + sattackfactorbuffamount) / 10) * spower / 10 * ((160 + global.soulstrength) / 160);
	current_weapon_stats.Shot_Knock_Back = 10;
	current_weapon_stats.Minion_Lifespan = 750;

	scr_Soul_Spawn(current_weapon_stats);



}
