function scr_Stink_Bomb_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Stink_Bomb_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Stink_Cloud;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Speed = 5.75;
	Shot_Power = 20;
	Shot_Knockback = 14;
	Shot_Lifespan = 90;

	Shot_Impact_Type = 1;
	Shot_Impact_Size = 80;
	Shot_Impact_Power = 20;

	Shot_Face_Direction = 1;
	Shot_Lobbing = 1;
	Shot_Size = 0.45;
	
	Weapon_Split_Visible = 1;
	Weapon_Split_Hit_Again = 1;
	
	Shot_Burst_Type = 2;
	Shot_Burst_Amount = 1;
	Shot_Burst_Power = 6;
	Shot_Burst_Speed = 0;
	Shot_Burst_Pierce = 2;
	Shot_Burst_Lifespan = 90;
	Shot_Burst_Extra_Hits = 1;
	Shot_Burst_Extra_Hit_Frequency = 15;
	Shot_Burst_Extra_Hit_Power = 3;
	
	Shot_Trail_Hit_Sprite = spr_Explosion_Part;
	Shot_Trail_Hit_Count = 13;
	Shot_Trail_Hit_Life = 10;
	
	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 10;
	Shot_Trail_Life = 6;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(243,153,255);
	Shot_Trail_Color2 = make_color_rgb(243,153,255);

	scr_Shot_Creation();



}
