function scr_Energy_Bomb_Cannon_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Sprite = spr_Energy_Bomb_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Energy_Spark_Shot;

	Shot_Phasing = 1;

	Shot_Speed = 6.5 + other.Charge_Speed;
	Shot_Power = 20 + other.Charge_Power;
	Shot_Knockback = 10;
	Shot_Lifespan = 200;
	Shot_Size = (0.65 + other.Charge_Size) / 2;

	Shot_Pierce += 1;

	Shot_Burst_Type = 1;
	Shot_Burst_Amount = 8;
	Shot_Burst_Power = Shot_Power / 10;

	Weapon_Split_Visible = 1;
	Weapon_Split_Hit_Again = 1;
	Shot_Keep_Direction = 1;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Huge_Essence_Trail_Bit;
	Shot_Trail_Area = 20;
	//Shot_Trail_Life = 15;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(255,255,0);
	Shot_Trail_Color2 = make_color_rgb(255,255,100);

	scr_Shot_Creation();



}
