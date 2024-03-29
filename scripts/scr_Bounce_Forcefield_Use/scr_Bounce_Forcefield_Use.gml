function scr_Bounce_Forcefield_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 5;
	Shot_Count += 0;

	Shot_Forward = 0;
	Weapon_Soul_Maintain = 1;

	Shot_Sprite = spr_Bounce_Forcefield;
	Shot_Type = obj_Defense_Soul_Shot;

	Shot_Speed = 0;
	Shot_Movement = 0;
	Shot_Power = 3;
	Shot_Knockback = 0;
	Shot_Life_Span = 45;

	Shot_Pierce += 10;
	Shot_Phasing = 1;

	Shot_Size = 0.6;
	Shot_Light = 1;
	Shot_Light_Size = 1;

	Shot_Rebound_Type = 2;
	Shot_Rebound_Power = 10;

	scr_Shot_Creation();



}
