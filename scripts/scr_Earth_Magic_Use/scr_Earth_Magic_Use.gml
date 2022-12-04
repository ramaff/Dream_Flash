function scr_Earth_Magic_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Earth_Magic_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Earth_Magic_Shot;

	Shot_Phasing = 1;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;
	
	/*
	Shot_Extra_Hits = 1;
	Shot_Extra_Hit_Frequency = 15;
	Shot_Extra_Hit_Power = 6;
	*/

	Shot_Homing_Type = 1;
	Shot_Homing_Range = 180;

	Shot_Speed = 5;
	Shot_Power = 30;
	Shot_Knockback = 10;
	Shot_Lifespan = 180;

	Shot_Pierce += 2;
	Weapon_Split_Visible = 0;
	
	Shot_Aura = 1;
	Shot_Aura_Power = 30;
	Shot_Aura_Range = 80;
	Shot_Aura_Sprite = spr_Earth_Magic_Aura;

	Shot_Size = 0.5;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Frequency = 2;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = c_lime;
	Shot_Trail_Color2 = c_white;

	scr_Shot_Creation();



}
