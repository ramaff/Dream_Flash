function scr_Essence_Whip_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 20;
	Shot_Count += 0;

	Shot_Phasing = 1;

	Shot_Sprite = spr_Essence_Whip_New;
	Shot_Type = obj_Lesser_Soul_Shot;
	Weapon_Melee = 1;

	Shot_Speed = 0;
	Shot_Power = 18;
	Shot_Knockback = 10;
	Shot_Lifespan = 12;
	Shot_Image_Speed = 0.5;
	//Shot_Frame = 6 * irandom(2);

	Shot_Pierce += 10;

	Shot_Size = 0.5;
	Shot_Point_Angle = 1;

	speed = 2;
	friction = 1;
	direction = point_direction(x,y,mouse_x,mouse_y);

	scr_Shot_Creation();



}
