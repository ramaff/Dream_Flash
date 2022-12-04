function scr_Archery_Bow_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 15;
	Shot_Accuracy += 5;
	Shot_Count += 2;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Sprite = spr_Arrow_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 6 + other.Charge_Speed;
	Shot_Power = 4 + other.Charge_Power;
	Shot_Knockback = 10 + other.Charge_Knockback;
	Shot_Lifespan = 40 + other.Charge_Lifespan;
	Shot_Size = (1 + other.Charge_Size) / 2;

	Shot_Pierce += 5;

	Shot_Crit_Chance = (Shot_Power - 4) / 2;
	if Shot_Crit_Chance <= 0 {
	    Shot_Crit_Chance = 0;
	}
	Shot_Crit_Multiple = 2;
	
	Shot_Point_Angle = 1;

	Shot_Trail = 2;
	Shot_Trail_Sprite = spr_Arrow_Part;
	Shot_Trail_Area = 15;
	Shot_Trail_Area = 0;
	Shot_Trail_Life = 12;
	Shot_Trail_Frequency = 4;
	Shot_Trail_Fade = 0;

	scr_Shot_Creation();



}
