function scr_Baseball_Shot(xxx,yyy, power) {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 5;
	Shot_Count += 0;

	Shot_Mouse = 0;
	Shot_Direction = other.direction - 180;
	
	/*
	if instance_exists(obj_Boss_Parent) {
		Shot_Direction = point_direction(xxx,yyy,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);	
	}
	*/
	
	Shot_Direction = point_direction(xxx,yyy, mouse_x, mouse_y);

	Shot_Sprite = spr_Baseball;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Size = 0.1 + other.image_xscale;
	Shot_Forward = 0;
	
	Shot_XX = xxx - x;
	Shot_YY = yyy - y;
	
	Shot_Form_Show = 0;

	Shot_Speed = (8 + other.speed) * (power / 100);
	
	Shot_Power = (5 + other.bulletpower / 4) * (power / 100);
	if Shot_Speed < 0 {
		Shot_Speed = 0;	
	}
	if Shot_Power < 0 {
		Shot_Power = 0;	
	}
	Shot_Knockback = 10;
	Shot_Lifespan = 30;
	
	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Life = 20;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(255,246,0);
	Shot_Trail_Color2 = make_color_rgb(255,119,0);
	Shot_Trail_Hit_Count = 13;
	Shot_Trail_Hit_Life = 10;
	
	Shot_Fire = 3;
	Shot_Fire_Time = 30;
	Shot_Fire_Ticks = 3;
	
	scr_Shot_Creation();



}
