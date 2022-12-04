function scr_Forcefield_Charger_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Sprite = spr_Charged_Forcefield_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Phasing = 1;

	Shot_Speed = 5 + other.Charge_Speed;
	Shot_Power = 15 + other.Charge_Power;
	Shot_Knockback = 10;
	Shot_Lifespan = 150;
	Shot_Size = (0.5 + other.Charge_Size) / 2;

	Shot_Shield_Type = 1;
	Shot_Shield_Power = Shot_Power;

	Shot_Pierce += 3;

	if Shot_Power > 100 {
		Shot_Screen_Shake = 7;	
	}
	
	scr_Shot_Creation();

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Huge_Essence_Trail_Bit;
	Shot_Trail_Area = 20;
	//Shot_Trail_Life = 15;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(127,255,205);
	Shot_Trail_Color2 = c_white;


}
