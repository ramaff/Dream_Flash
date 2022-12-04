function scr_Dream_Striker_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;
	
	Shot_Phasing = 1;
	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;
	Weapon_Soul_Maintain = 1;

	Shot_Sprite = spr_Dream_Striker;
	Shot_Type = obj_Dream_Striker;
	Weapon_Melee = 1;

	Shot_Speed = 0;
	Shot_Power = 8 + (other.Charge_Power);
	Shot_Knockback = 25;
	Shot_Lifespan = 7;
	Shot_Angle = -90 + point_direction(x,y,mouse_x,mouse_y);
	Shot_Image_Rotation_Speed = 30;
	Shot_Size = (0.4 + other.Charge_Size);

	Shot_Pierce += 20;

	Shot_Shield_Type = 3;
	Shot_Shield_Power = 40 + (other.Charge_Power / 10);

	speed = 6 + (other.Charge_Power / 20);
	friction = 2;
	direction = point_direction(x,y,mouse_x,mouse_y) + 180;

	scr_Shot_Creation();
	
	scr_Sound_Effect(sd_Sword_Slash);
}
