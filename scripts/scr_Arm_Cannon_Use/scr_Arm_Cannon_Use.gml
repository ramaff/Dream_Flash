function scr_Arm_Cannon_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Bomb_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Speed = 5.75;
	Shot_Power = 20;
	Shot_Knockback = 14;
	Shot_Lifespan = 90;

	Shot_Impact_Type = 1;
	Shot_Impact_Size = 80;
	Shot_Impact_Power = 20;

	Shot_Face_Direction = 1;
	Shot_Lobbing = 1;
	Shot_Size = 0.45;
	
	Shot_Trail_Hit_Sprite = spr_Explosion_Part;
	Shot_Trail_Hit_Count = 0;
	Shot_Trail_Hit_Life = 10;
	
	scr_Shot_Creation();

}
