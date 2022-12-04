function scr_Guardian_Cannon_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Guardian_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Guardian_Light;

	Shot_Phasing = 1;

	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Extra_Hits[1] = 1;
	Shot_Extra_Hits_Sprite[1] = Shot_Duplicate_Sprite;
	Shot_Extra_Hit_Frequency[1] = 18;
	Shot_Extra_Hit_Power[1] = 7.5;
	Shot_Extra_Hit_Speed[1] = 15;
	Shot_Extra_Hit_Lifespan[1] = 35;
	Shot_Extra_Hit_Homing[1] = 1;
	Shot_Extra_Hit_Homing_Speed[1] = 10;
	Shot_Extra_Hit_Pierce[1] = 1;

	Shot_Homing_Type = 1;
	Shot_Homing_Range = 180;

	Shot_Friction = 0.05;
	Shot_Min_Speed = 1;

	Shot_Speed = 5;
	Shot_Power = 30;
	Shot_Knockback = 10;
	Shot_Lifespan = 300;

	Shot_Armour_Pierce += 5;
	Shot_Pierce += 4;
	Weapon_Split_Visible = 1;

	Shot_Size = 0.5;

	scr_Shot_Creation();



}
