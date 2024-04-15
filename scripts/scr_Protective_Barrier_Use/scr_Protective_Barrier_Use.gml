function scr_Protective_Barrier_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 5;
	Shot_Count += 0;

	Shot_Forward = 0;
	Weapon_Soul_Maintain = 1;

	Shot_Sprite = spr_Protective_Barrier;
	Shot_Type = obj_Defense_Soul_Shot;

	Shot_Speed = 0;
	Shot_Movement = 0;
	Shot_Power = 3;
	Shot_Knock_Back = 0;
	Shot_Life_Span = 45;
	Shot_Healing = 1;

	Shot_Shield_Type = 3;
	Shot_Shield_Power = 8;

	Shot_Pierce += 10;
	Shot_Phasing = 1;

	Shot_Size = 0.6;
	Shot_Light = 1;
	Shot_Light_Size = 1;

	scr_Shot_Creation();



}
