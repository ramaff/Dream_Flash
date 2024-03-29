scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Stats.Shot_Spread += 0;
    Shot_Stats.Shot_Accuracy += 5;
    Shot_Stats.Shot_Count += 0;
    
    Shot_Stats.Shot_Sprite = spr_Knife_Soul;
    Shot_Stats.Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Stats.Shot_Speed = 5;
    Shot_Stats.Shot_Power = 11;
    Shot_Stats.Shot_Knockback = 10;
    Shot_Stats.Shot_Life_Span = 1;
    
    Shot_Stats.Shot_Pierce += 100;
    
    scr_Minion_Shot_Creation();
}

