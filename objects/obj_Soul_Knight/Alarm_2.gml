scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 5;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Knight_Soul_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Speed = 0.5;
    Shot_Power = 15;
    Shot_Knockback = 11;
    Shot_Lifespan = 7;
	Shot_Angle = -90 + point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
	Shot_Image_Rotation_Speed = 30;
	Shot_Phasing = 1;
	
	speed = 9;
	direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
	friction = 1;
	
	Shot_Pierce += 19;
	Shot_Size = 0.4;
	
	Shot_Shield_Type = 3;
	Shot_Shield_Power = 4;
    
    scr_Minion_Shot_Creation();
}


