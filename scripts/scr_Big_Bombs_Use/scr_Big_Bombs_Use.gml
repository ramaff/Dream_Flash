function scr_Big_Bombs_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 20;
	Shot_Count += 0;

	Shot_Sprite = spr_Big_Bomb_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Speed = 5.25;
	Shot_Power = 55;
	Shot_Knockback = 30;
	Shot_Lifespan = 90;
	
	Shot_Screen_Shake = 7;

	Shot_Impact_Type = 1;
	Shot_Impact_Size = 150;
	Shot_Impact_Power = 45;

	Shot_Weaken += 10;
	Shot_Weaken_Time = 60;

	Shot_Face_Direction = 1;
	Shot_Lobbing = 1;
	Shot_Size = 0.6;

	scr_Shot_Creation();



}
