function scr_Spike_Ball_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Spike_Ball_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Image_Rotation_Speed = 3;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Speed = 8;
	Shot_Power = 38;
	Shot_Knockback = 15;
	Shot_Lifespan = 100;

	Shot_Pierce += 4;
	Shot_Armour_Pierce += 10;
	Shot_Face_Direction = 1;

	Shot_Size = 0.55;
	
	Shot_Screen_Shake = 5;
	
	Shot_Shield_Type = 3;
	Shot_Shield_Power = 5;

	scr_Shot_Creation();



}
