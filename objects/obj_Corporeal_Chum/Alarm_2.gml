scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 30;
    Shot_Accuracy += 60;
    Shot_Count += 2;
    
    Shot_Sprite = spr_Corporeal_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Size = 0.5;
    
    Shot_Speed = 5.5;
    Shot_Power = 13;
    Shot_Knockback = 10;
    Shot_Life_Span = 100;
	
	Shot_Point_Angle = 1;
    
    scr_Minion_Shot_Creation();
}

