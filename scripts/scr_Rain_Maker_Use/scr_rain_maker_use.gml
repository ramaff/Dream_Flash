function scr_Rain_Maker_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 90;
	Shot_Accuracy += 30;
	Shot_Count += 3;

	Shot_Mouse = 0;
	Shot_Direction = point_direction(x,y,mouse_x,mouse_y) + 45;

	Shot_Sprite = spr_Rain_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 6.5 + random(1);
	Shot_Power = 10;
	Shot_Knockback = 10;
	Shot_Lifespan = 60;

	Shot_Size = 0.4;
	
	Shot_Point_Angle = 1;

	scr_Shot_Creation();

	Shot_Speed = 8.5 + random(1);

	scr_Shot_Creation();


}
