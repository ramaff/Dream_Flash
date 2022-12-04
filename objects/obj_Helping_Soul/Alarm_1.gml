scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 5;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Rain_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Speed = 5;
    Shot_Power = 15;
    Shot_Knockback = 10;
    Shot_Lifespan = 100;
	
	Shot_Point_Angle = 1;
	Shot_Size = 0.4;
    
    scr_Minion_Shot_Creation();
}

