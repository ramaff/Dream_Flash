function scr_Anvil_Rod_Use() {
	current_weapon_stats = scr_Setup_Default_Shot_Stats();

	current_weapon_stats.Shot_Spread += 0;
	current_weapon_stats.Shot_Accuracy += 10;
	current_weapon_stats.Shot_Count += 0;

	current_weapon_stats.Minion_Sprite = spr_Anvil_Fig;
	current_weapon_stats.Minion_Type = obj_Anvil_Fig;

	current_weapon_stats.Minion_Speed = 1.6;
	current_weapon_stats.Minion_Health = 80;
	current_weapon_stats.Shot_Power = 12;
	current_weapon_stats.Minion_Power = (current_weapon_stats.Shot_Power + spoweradd) * ((10 + spowerfactor + sattackfactorbuffamount) / 10) * spower / 10 * ((160 + global.soulstrength) / 160);
	current_weapon_stats.Shot_Knock_Back = 10;
	current_weapon_stats.Minion_Lifespan = 750;

	scr_Soul_Spawn(current_weapon_stats);



}
