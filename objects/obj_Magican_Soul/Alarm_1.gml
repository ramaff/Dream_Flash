scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Stats.Shot_Spread += 0;
    Shot_Stats.Shot_Accuracy += 20;
    Shot_Stats.Shot_Count += 0;
    
    Shot_Stats.Shot_Sprite = spr_Magical_Soul_Shot;
    Shot_Stats.Shot_Type = obj_Lesser_Soul_Shot;
        
    Shot_Stats.Shot_Speed = 5;
    Shot_Stats.Shot_Power = 16;
    Shot_Stats.Shot_Knockback = 10;
    Shot_Stats.Shot_Life_Span = 100;
	Shot_Stats.Shot_Pierce += 1;
	Shot_Stats.Shot_Size = 0.4;
    
    Shot_Stats.Shot_Homing_Type = 1;
    Shot_Stats.Shot_Homing_Range = 180;
	
	Shot_Stats.Shot_Point_Angle = 1;
    
    scr_Minion_Shot_Creation();
}

