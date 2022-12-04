function scr_Charged_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Sprite = spr_Charged_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 6 + other.Charge_Speed;
	Shot_Power = 5 + other.Charge_Power;
	Shot_Knockback = 10 + other.Charge_Knockback;
	Shot_Lifespan = 60 + other.Charge_Lifespan;
	Shot_Size = (0.25 + other.Charge_Size) / 2;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	if Shot_Size > 0.5 {
		Shot_Trail_Sprite = spr_Huge_Essence_Trail_Bit;
	}
	Shot_Trail_Area = 30 * Shot_Size;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(0,250,255);
	Shot_Trail_Color2 = make_color_rgb(0,215,255);

	scr_Shot_Creation();



}
