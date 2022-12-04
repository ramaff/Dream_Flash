function scr_Exploding_Sniper_Rifle_Use() {
	scr_Default_Weapon_Stats();

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Size = 0.5;

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Phasing = 1;

	Shot_Sprite = spr_Exploding_Sniper_Streak_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	//Shot_Beam = 1;

	Shot_Speed = 0;
	Shot_Power = 60;
	Shot_Knockback = 0;
	Shot_Lifespan = 10;

	Shot_Pierce += 100;

	Shot_Mouse = 1;
	//Shot_Direction = point_direction(x,y,mouse_x,mouse_y);
	//Length = 1000;

	scr_Hitscan_Damage(1,2000);



}
