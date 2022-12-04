function scr_Blade_Staff_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Sprite = spr_Magic_Blade_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 0;
	Shot_Movement = 0;
	Shot_Power = 33;
	Shot_Knockback = 10;
	Shot_Lifespan = 15;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Ground = 1;

	Shot_XX = lengthdir_x(point_distance(x,y,mouse_x,mouse_y)*1.1,point_direction(x,y,mouse_x,mouse_y));
	Shot_YY = lengthdir_y(point_distance(x,y,mouse_x,mouse_y)*1.1,point_direction(x,y,mouse_x,mouse_y));

	Shot_Phasing = 1;
	Weapon_Melee = 1;

	Shot_Pierce += 99;

	Shot_Size = 0.6;
	Shot_Image_Speed = 1;

	scr_Shot_Creation();

	Shot_Mouse_Origin = 0;
	Shot_Size = 0.5;
	Shot_Power = 25;

	Shot_XX = lengthdir_x(point_distance(x,y,mouse_x,mouse_y)/3*2.2,point_direction(x,y,mouse_x,mouse_y));
	Shot_YY = lengthdir_y(point_distance(x,y,mouse_x,mouse_y)/3*2.2,point_direction(x,y,mouse_x,mouse_y));

	scr_Shot_Creation();

	Shot_Mouse_Origin = 0;
	Shot_Size = 0.4;
	Shot_Power = 17;

	Shot_XX = lengthdir_x(point_distance(x,y,mouse_x,mouse_y)/3*1.1,point_direction(x,y,mouse_x,mouse_y));
	Shot_YY = lengthdir_y(point_distance(x,y,mouse_x,mouse_y)/3*1.1,point_direction(x,y,mouse_x,mouse_y));

	scr_Shot_Creation();


}
