function scr_Tesla_Coil_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	if instance_exists(obj_Boss_Parent) {
	    Shot_Mouse = 0;
	    Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
	}

	Shot_Sprite = spr_Tesla_Coil_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Speed = 1;
	Shot_Power = 11;
	Shot_Knockback = 0;
	Shot_Lifespan = 12;

	Shot_Pierce += 10;
	Shot_Phasing = 1;
	
	Shot_Point_Angle = 1;
	
	Shot_Size = 0.5;

	scr_Shot_Creation();



}
