function scr_Safety_Scissors_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Phasing = 1;

	Shot_Sprite = spr_Safety_Scissors_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Weapon_Melee = 1;
	Weapon_Soul_Maintain = 1;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Speed = 0;
	Shot_Power = 21;
	Shot_Knockback = 15;
	Shot_Lifespan = 14;
	Shot_Image_Speed = 1;
	Shot_Point_Angle = 1;

	Shot_Pierce += 20;

	Shot_Shield_Type = 3;
	Shot_Shield_Power = 6;

	Shot_Bleed = 4;
	Shot_Bleed_Time = 120;
	Shot_Bleed_Ticks = 4;

	Shot_Size = 0.55;

	speed = 5;
	friction = 1;
	direction = point_direction(x,y,mouse_x,mouse_y);

	scr_Shot_Creation();



}
