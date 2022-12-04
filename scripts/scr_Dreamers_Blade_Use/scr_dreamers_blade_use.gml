function scr_Dreamers_Blade_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Phasing = 1;

	Shot_Sprite = spr_Dreamers_Blade_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Weapon_Melee = 1;
	Weapon_Soul_Maintain = 1;

	Shot_Speed = 0;
	Shot_Power = 45;
	Shot_Knockback = 20;
	Shot_Lifespan = 7;
	Shot_Angle = -90 + point_direction(x,y,mouse_x,mouse_y);
	Shot_Image_Rotation_Speed = 30;

	Shot_Pierce += 20;

	Shot_Shield_Type = 3;
	Shot_Shield_Power = 7;

	speed = 7;
	friction = 1;
	direction = point_direction(x,y,mouse_x,mouse_y);

	Shot_Size = 0.56;

	scr_Shot_Creation();

	Shot_Sprite = spr_Dream_Blade_Blast_Shot;
	Weapon_Melee = 0;
	Weapon_Soul_Maintain = 0;

	Shot_Speed = 12.5;
	Shot_Power = 8;
	Shot_Knockback = 10;
	Shot_Lifespan = 30;
	
	Shot_Forward = 0;

	Shot_Pierce -= 20;

	Shot_Shield_Type = 0;
	Shot_Shield_Power = 0;

	Shot_Image_Rotation_Speed = 0;

	var ang = 0;

	repeat(3) {
	
		Shot_Direction = point_direction(x,y,mouse_x,mouse_y) -20 + ang * 20;
		Shot_Point_Angle = 1;
	
		Shot_XX = lengthdir_x(90,point_direction(x,y,mouse_x,mouse_y) -20 + ang * 20);
		Shot_YY = lengthdir_y(90,point_direction(x,y,mouse_x,mouse_y) -20 + ang * 20);
	
		Shot_Mouse = 0;
	
		scr_Shot_Creation();
	
		ang++;

	}


}
