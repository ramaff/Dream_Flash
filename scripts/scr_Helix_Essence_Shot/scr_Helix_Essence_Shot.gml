function scr_Helix_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Helix_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 8.5;
	Shot_Power = 14;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Size = 0.4;

	Shot_Wave_Direction = 20;
	Shot_Wave_Acceleration = 4;
	Shot_Wave_Time = 10;

	scr_Shot_Creation();

	Shot_Wave_Direction = -20;
	Shot_Wave_Acceleration = -4;
	Shot_Wave_Time = 10;

	scr_Shot_Creation();



}
