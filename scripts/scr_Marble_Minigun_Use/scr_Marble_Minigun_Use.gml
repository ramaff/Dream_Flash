function scr_Marble_Minigun_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Marble_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Frame = 1 + irandom(6);
	Shot_Image_Speed = 0;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Speed = 12.5;
	Shot_Power = 8;
	Shot_Knockback = 10;
	Shot_Lifespan = 60;

	Shot_Bounce = 2;
	Shot_Pierce += 1;

	Shot_Size = 0.45;

	Shot_Wave_Direction = 20;
	Shot_Wave_Acceleration = 5;
	Shot_Wave_Time = 8;

	//Shot_Direction_Offset = -20;

	scr_Shot_Creation();

	Shot_Wave_Direction = -20;
	Shot_Wave_Acceleration = -5;
	Shot_Wave_Time = 8;

	//Shot_Direction_Offset = 20;

	scr_Shot_Creation();



}
