function scr_Battle_Flag_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Minion_Sprite = spr_Soul_Knight;
	Minion_Type = obj_Soul_Knight;

	Minion_Speed = 3;
	Minion_Health = 99;
	Shot_Power = 10;
	Minion_Power = (Shot_Power + spoweradd) * ((10 + spowerfactor + sattackfactorbuffamount) / 10) * spower / 10 * ((160 + global.soulstrength) / 160);
	Shot_Knockback = 10;
	Minion_Lifespan = 750;

	scr_Soul_Spawn();



}
