function scr_Crossbow_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Sprite = spr_Crossbow_Bolt_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 14 + other.Charge_Speed;
	Shot_Power = 21 + other.Charge_Power;
	Shot_Knockback = 10 + other.Charge_Knockback;
	Shot_Lifespan = 90 + other.Charge_Lifespan;
	Shot_Size = (1 + other.Charge_Size) / 2;

	Shot_Pierce += 4;
	Shot_Crit_Chance = 25;
	Shot_Crit_Multiple = 2;

	Shot_Point_Angle = 1;

	Shot_Trail = 2;
	Shot_Trail_Sprite = spr_Crossbow_Part;
	Shot_Trail_Area = 15;
	Shot_Trail_Area = 0;
	Shot_Trail_Life = 12;
	Shot_Trail_Frequency = 4;
	Shot_Trail_Fade = 0;

	scr_Shot_Creation();



}
