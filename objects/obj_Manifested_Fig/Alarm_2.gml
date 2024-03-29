scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 5;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Manifested_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Size = 0.4;
    
    Shot_Speed = 8;
    Shot_Power = other.Shot_Power;
    Shot_Knockback = 10;
    Shot_Life_Span = 100;
    
    scr_Minion_Shot_Creation();
}

