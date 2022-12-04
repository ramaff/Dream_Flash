function scr_Pop_Gun_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Pop_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Pop_Corn_Shot;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Speed = 10;
	Shot_Power = 16;
	Shot_Knockback = 13;
	Shot_Lifespan = 90;
	
	Shot_Burst_Type = 2;
	Shot_Burst_Amount = 1;
	Shot_Burst_Power = 5;
	Shot_Burst_Speed = 0;
	Shot_Burst_Pierce = 2;
	Shot_Burst_Lifespan = 90;
	Shot_Burst_Bullet_Displacement = 1;
	
	Weapon_Split_Visible = 1;
	Weapon_Split_Hit_Again = 1;
	Shot_Point_Angle = 1;

	Shot_Size = 0.45;

	scr_Shot_Creation();



}
