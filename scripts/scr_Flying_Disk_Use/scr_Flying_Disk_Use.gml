function scr_Flying_Disk_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Flying_Disk_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Speed = 5.75;
	Shot_Power = 18;
	Shot_Knockback = 12;
	Shot_Lifespan = 100;

	Shot_Pierce += 3;
	Shot_Size = 0.55;
	Shot_Lobbing = 1;
	
	Shot_Bullet_Redirect = 1;
	Shot_Bullet_Redirect_Chance = 40;
	
	Shot_Extra_Hits[0] = 1;
	Shot_Extra_Hit_Frequency[0] = 10;
	Shot_Extra_Hit_Power[0] = 3;

	scr_Shot_Creation();



}
