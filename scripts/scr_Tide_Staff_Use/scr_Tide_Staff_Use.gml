function scr_Tide_Staff_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 10;
	Shot_Accuracy += 20;
	Shot_Count += 2;

	Shot_Sprite = spr_Tide_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Phasing = 1;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Speed = 7.5;
	Shot_Power = 8;
	Shot_Knockback = 15;
	Shot_Lifespan = 60;

	Shot_Pierce += 1;
	Shot_Armour_Tear += 1;
	Shot_Bullet_Displace = 1;
	
	Shot_Point_Angle = 1;

	Shot_Size = 0.5;

	scr_Shot_Creation();



}
