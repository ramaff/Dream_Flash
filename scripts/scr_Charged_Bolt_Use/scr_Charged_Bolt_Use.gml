function scr_Charged_Bolt_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Charged_Bolt_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Speed = 7;
	Shot_Power = 24;
	Shot_Knockback = 12;
	Shot_Lifespan = 120;

	Shot_Homing_Type = 1;
	Shot_Homing_Range = 400;

	Shot_Pierce += 2;

	Shot_Size = 0.5;

	Shot_Trail = 2;
	Shot_Trail_Sprite = spr_Charged_Bolt_Part
	Shot_Trail_Area = 0;
	Shot_Trail_Fade = 0;
	Shot_Trail_Frequency = 8;
	Shot_Trail_Life = 24;
	
	Shot_Point_Angle = 1;

	scr_Shot_Creation();



}
