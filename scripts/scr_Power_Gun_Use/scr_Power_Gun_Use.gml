function scr_Power_Gun_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Sprite = spr_Power_Gun_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Phasing = 1;

	Shot_Speed = 8 + other.Charge_Speed;
	Shot_Power = 10 + other.Charge_Power;
	Shot_Knockback = 10;
	Shot_Lifespan = 150;
	Shot_Size = (0.6 + other.Charge_Size) / 2;

	Shot_Continue = 1;
	Shot_Image_Rotation_Speed = 3.5;

	Shot_Homing_Type = 1;
	Shot_Homing_Range = 150 + other.Charge_Power;
	
	if Shot_Power > 100 {
		Shot_Screen_Shake = 7;	
	}

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Huge_Essence_Trail_Bit;
	Shot_Trail_Area = 20;
	//Shot_Trail_Life = 15;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = c_white;
	Shot_Trail_Color2 = make_color_rgb(204,255,255);

	scr_Shot_Creation();



}
