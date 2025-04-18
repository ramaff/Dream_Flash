alarm[0] = sfirerate;

if instance_exists(obj_Boss_Parent) {
    current_weapon_stats = scr_Setup_Default_Shot_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 10;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Red_Gem_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Speed = 10;
    Shot_Power = 10;
    Shot_Knock_Back = 10;
    Shot_Life_Span = 150;
    
    Shot_ID = instance_id_get( instance_count ) + glumcount;
    
    glumcount++
    
    ds_list_add(projectile_hits, Shot_ID);
    
    scr_Minion_Shot_Creation();
}

