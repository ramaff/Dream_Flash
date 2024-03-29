scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 20;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Magical_Soul_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Imaginary -= 1;
    Shot_Magical += 1;
        
    Shot_Speed = 5;
    Shot_Power = 16;
    Shot_Knockback = 10;
    Shot_Life_Span = 100;
	Shot_Pierce += 1;
	Shot_Size = 0.4;
    
    Shot_Homing_Type = 1;
    Shot_Homing_Range = 180;
	
	Shot_Point_Angle = 1;
    
    scr_Minion_Shot_Creation();
}

