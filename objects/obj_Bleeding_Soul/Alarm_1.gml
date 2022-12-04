scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 15;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Bleeding_Soul_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Imaginary -= 1;
    Shot_Sharp_And_Solid += 1;
        
    Shot_Speed = 5.5;
    Shot_Power = 11;
    Shot_Knockback = 10;
    Shot_Lifespan = 100;
	Shot_Size = 0.4;
    
    Shot_Bleed = 2;
    Shot_Bleed_Time = 120;
    Shot_Bleed_Ticks = 4;
    
    scr_Minion_Shot_Creation();
}

