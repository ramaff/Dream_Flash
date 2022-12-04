function scr_Bouncer_Gun_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Bouncer_Gun_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Speed = 8;
	Shot_Power = 20;
	Shot_Knockback = 10;
	Shot_Lifespan = 180;

	Shot_Bounce += 1;
	Shot_Pierce += 1;

	Shot_Lobbing = 1;
	Shot_Size = 0.425;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 10;
	Shot_Trail_Life = 12;
	Shot_Trail_Frequency = 2;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(190,127,255);
	Shot_Trail_Color2 = make_color_rgb(126,0,255);

	scr_Shot_Creation();



}
