function scr_Dream_Cell_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 5;
	Shot_Count += 0;

	Shot_Forward = 0;
	Weapon_Soul_Maintain = 1;

	Shot_Sprite = spr_Dream_Cell_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Dream_Cell_Shot;

	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Speed = 0;
	Shot_Movement = 0;
	Shot_Power = 15;
	Shot_Knockback = 0;
	Shot_Lifespan = 21;

	Shot_Pierce += 100;
	Shot_Phasing = 1;

	Shot_Size = 0.8;

	Shot_Extra_Hits[0] = 1;
	Shot_Extra_Hit_Frequency[0] = 15;
	Shot_Extra_Hit_Power[0] = 5;

	Weapon_Melee = 1;

	scr_Shot_Creation();

	scr_Default_Weapon_Stats();


	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Spread += 90;
	Shot_Accuracy += 15;
	Shot_Count = 4;

	Shot_Mouse = 0;
	Shot_Direction = point_direction(x,y,mouse_x,mouse_y) + 45;

	Shot_Sprite = spr_Sparks_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 9;
	Shot_Power = 10;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Size = 0.5;
	Shot_Point_Angle = 1;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 5;
	Shot_Trail_Life = 10;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = c_white;
	Shot_Trail_Color2 = make_color_rgb(204,255,255);

	scr_Shot_Creation();




}
