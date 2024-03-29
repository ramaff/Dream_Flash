alarm[0] = sfirerate - 15;

scr_Soul_Stretch("Vertical", 0.5);
sprite_index = spr_Blaze_Soul;

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Stats.Shot_Spread += 0;
    Shot_Stats.Shot_Accuracy += 5;
    Shot_Stats.Shot_Count += 0;
    
    Shot_Stats.Shot_Sprite = "spr_Blaze_Soul_Shot";
    Shot_Stats.Shot_Type = "obj_Lesser_Soul_Shot";
	Shot_Stats.Shot_Size = 0.4;
    
    Shot_Stats.Shot_Speed = 5;
    Shot_Stats.Shot_Power = 13;
    Shot_Stats.Shot_Knockback = 10;
    Shot_Stats.Shot_Life_Span = 100;
	
	Shot_Stats.Shot_Point_Angle = 1;
    
    scr_Minion_Shot_Creation();
}

