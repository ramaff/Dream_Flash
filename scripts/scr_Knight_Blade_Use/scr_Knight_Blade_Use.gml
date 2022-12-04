function scr_Knight_Blade_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Phasing = 1;
	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;
	Weapon_Soul_Maintain = 1;

	Shot_Sprite = spr_Knight_Blade_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Weapon_Melee = 1;

	Shot_Speed = 0;
	Shot_Power = 32;
	Shot_Knockback = 25;
	Shot_Lifespan = 7;
	Shot_Angle = -90 + point_direction(x,y,mouse_x,mouse_y);
	Shot_Image_Rotation_Speed = 30;

	Shot_Pierce += 20;

	Shot_Shield_Type = 3;
	Shot_Shield_Power = 7;

	speed = 6;
	friction = 1;
	direction = point_direction(x,y,mouse_x,mouse_y);

	Shot_Size = 0.56;

	scr_Shot_Creation();
	
	scr_Sound_Effect(sd_Sword_Slash);



}
