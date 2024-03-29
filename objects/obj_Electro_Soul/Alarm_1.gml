scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 10;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Lightning_Bolt_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Imaginary -= 1;
    Shot_Energy += 1;
        
    Shot_Speed = 7.5;
    Shot_Power = 13;
    Shot_Knockback = 10;
    Shot_Life_Span = 100;
	Shot_Size = 0.4;
    
    Shot_Chain += 1;
    Shot_Chain_Type = 1;
    Shot_Chain_Power = 10;
    Shot_Chain_Range = 200;
    Shot_Chain_Speed = 12;
    
    scr_Minion_Shot_Creation();
}

