scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Stats.Shot_Spread += 0;
    Shot_Stats.Shot_Accuracy += 10;
    Shot_Stats.Shot_Count += 0;
    
    Shot_Stats.Shot_Sprite = spr_Lightning_Bolt_Shot;
    Shot_Stats.Shot_Type = obj_Lesser_Soul_Shot;
        
    Shot_Stats.Shot_Speed = 7.5;
    Shot_Stats.Shot_Power = 13;
    Shot_Stats.Shot_Knockback = 10;
    Shot_Stats.Shot_Life_Span = 100;
	Shot_Stats.Shot_Size = 0.4;
    
    Shot_Stats.Shot_Chain += 1;
    Shot_Stats.Shot_Chain_Type = 1;
    Shot_Stats.Shot_Chain_Power = 10;
    Shot_Stats.Shot_Chain_Range = 200;
    Shot_Stats.Shot_Chain_Speed = 12;
    
    scr_Minion_Shot_Creation();
}

