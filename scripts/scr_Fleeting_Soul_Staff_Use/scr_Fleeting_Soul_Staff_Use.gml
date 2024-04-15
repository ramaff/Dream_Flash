function scr_Fleeting_Soul_Staff_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Minion_Sprite = spr_Fleeting_Soul;
	Minion_Type = obj_Fleeting_Soul;

	Minion_Speed = 1.6;
	Minion_Health = 99;
	Shot_Power = 9;
	Minion_Power = (Shot_Power + spoweradd) * ((10 + spowerfactor + sattackfactorbuffamount) / 10) * spower / 10 * ((160 + global.soulstrength) / 160);
	Shot_Knock_Back = 10;
	Minion_Lifespan = 750;

	scr_Soul_Spawn();



}
