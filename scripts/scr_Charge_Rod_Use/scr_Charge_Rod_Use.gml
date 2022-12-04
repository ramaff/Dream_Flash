function scr_Charge_Rod_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Charge_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Forward = 0;

	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Speed = 9;
	Shot_Power = 20;
	Shot_Knockback = 10;
	Shot_Lifespan = 300;

	Shot_Orbital_Type = 1;
	Shot_Orbital_Range = 50;
	Shot_Phasing = 1;

	Shot_Size = 0.45;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Life = 10;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(127,205,255);
	Shot_Trail_Color2 = c_white;

	scr_Shot_Creation();



}
