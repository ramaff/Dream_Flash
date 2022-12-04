function scr_Bleeding_Shot(xxx,yyy, power) {
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

	Shot_Sprite = other.sprite_index;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Size = other.image_xscale;
	Shot_Forward = 0;
	
	Shot_XX = xxx - x;
	Shot_YY = yyy - y;
	
	Shot_Form_Show = 0;

	Shot_Speed = (15 + other.speed);
	
	Shot_Power = 10;
	Shot_Knockback = 10;
	Shot_Lifespan = 40;
	
	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Life = 20;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(255,0,0);
	Shot_Trail_Color2 = make_color_rgb(200,0,0);
	Shot_Trail_Hit_Count = 13;
	Shot_Trail_Hit_Life = 10;
	
	scr_Shot_Creation();



}
