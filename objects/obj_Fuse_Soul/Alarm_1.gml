scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Stats.Shot_Spread += 0;
    Shot_Stats.Shot_Accuracy += 15;
    Shot_Stats.Shot_Count += 0;
    
    Shot_Stats.Shot_Sprite = spr_Fuse_Soul_Shot;
    Shot_Stats.Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Stats.Shot_Size = 0.4;
        
    Shot_Stats.Shot_Speed = 5;
    Shot_Stats.Shot_Power = 12;
    Shot_Stats.Shot_Knockback = 10;
    Shot_Stats.Shot_Life_Span = 100;
    
    Shot_Stats.Shot_Impact_Power = 8;
    Shot_Stats.Shot_Impact_Type = 1;
    Shot_Stats.Shot_Impact_Size = 40;
    
    scr_Minion_Shot_Creation();
}

