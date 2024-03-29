scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 15;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Fuse_Soul_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Imaginary -= 1;
    Shot_Explosive += 1;
	Shot_Size = 0.4;
        
    Shot_Speed = 5;
    Shot_Power = 12;
    Shot_Knockback = 10;
    Shot_Life_Span = 100;
    
    Shot_Impact_Power = 8;
    Shot_Impact_Type = 1;
    Shot_Impact_Size = 40;
    
    scr_Minion_Shot_Creation();
}

