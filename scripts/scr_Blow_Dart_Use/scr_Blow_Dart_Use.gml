function scr_Blow_Dart_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Sprite = spr_Blow_Dart_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Speed = 16;
	Shot_Power = 18;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Pierce += 1;

	Shot_Poison = 3;
	Shot_Poison_Time = 90;
	Shot_Poison_Ticks = 10;

	Shot_Size = 0.5;
	
	Shot_Point_Angle = 1;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Essence_Trail_Bit;
	Shot_Trail_Area = 10;
	Shot_Trail_Color1 = make_color_rgb(107,229,0);
	Shot_Trail_Color2 = make_color_rgb(119,255,0);

	scr_Shot_Creation();



}
