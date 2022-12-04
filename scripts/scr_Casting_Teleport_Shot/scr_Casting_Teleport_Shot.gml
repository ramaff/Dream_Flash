function scr_Casting_Teleport_Shot(xxx,yyy) {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 5;
	Shot_Count += 0;

	Shot_Mouse = 0;
	Shot_Direction = other.direction + 180;
	
	if instance_exists(obj_Boss_Parent) {
		Shot_Direction = point_direction(xxx,yyy,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);	
	}

	Shot_Sprite = spr_Pure_Magic_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Size = 0.4;
	Shot_Size = 0.4;
	Shot_Forward = 0;

	Shot_Point_Angle = 1;
	
	Shot_Off_State = 1;
	
	Shot_XX = xxx - x;
	Shot_YY = yyy - y;


	Shot_Speed = 10; 
	Shot_Power = (5 + other.bulletpower / 4) * global.soulstateformboost * (1 + global.teleportboost);
	if Shot_Speed < 0 {
		Shot_Speed = 0;	
	}
	if Shot_Power < 0 {
		Shot_Power = 0;	
	}
	Shot_Knockback = 10;
	Shot_Lifespan = 100;

	scr_Shot_Creation();



}
