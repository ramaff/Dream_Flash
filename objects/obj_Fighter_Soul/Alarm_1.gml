alarm[0] = sfirerate - 15;

scr_Soul_Stretch("Vertical", 0.5);
sprite_index = spr_Fighter_Soul;

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Stats.Shot_Spread += 0;
    Shot_Stats.Shot_Accuracy += 15;
    Shot_Stats.Shot_Count += 0;
    
    Shot_Stats.Shot_Sprite = spr_Fighter_Soul_Shot;
    Shot_Stats.Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Stats.Shot_Size = 0.4;
    
    Shot_Stats.Shot_Speed = 6;
    Shot_Stats.Shot_Power = 9;
    Shot_Stats.Shot_Knockback = 10;
    Shot_Stats.Shot_Life_Span = 100;
    
    scr_Minion_Shot_Creation();
}


