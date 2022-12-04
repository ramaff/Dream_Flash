function scr_Spinning_Top_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Spinning_Top_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Spinning_Top_Shot;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Extra_Hits[0] = 1;
	Shot_Extra_Hit_Frequency[0] = 15;
	Shot_Extra_Hit_Power[0] = 3;

	Shot_Friction = 0.1;
	Shot_Min_Speed = 0.33;

	Shot_Speed = 6;
	Shot_Power = 18;
	Shot_Knockback = 10;
	Shot_Lifespan = 270;
	
	Shot_Bullet_Redirect = 1;
	Shot_Bullet_Redirect_Chance = 25;

	Shot_Size = 0.5;

	Shot_Pierce += 1;

	scr_Shot_Creation();



}
