scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 15;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Poison_Essence_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Speed = 5;
    Shot_Power = 5;
    Shot_Knockback = 10;
    Shot_Life_Span = 100;
    
    Shot_Poison = 2;
    Shot_Poison_Time = 120;
    Shot_Poison_Ticks = 6;
	
	Shot_Size = 0.4;
    
    scr_Minion_Shot_Creation();
}

