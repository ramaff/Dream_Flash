scr_Minion_Reload();

image_index = 2;

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 5;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Knife_Soul;
    Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Speed = 5;
    Shot_Power = 11;
    Shot_Knockback = 10;
    Shot_Lifespan = 1;
    
    Shot_Pierce += 100;
    
    scr_Minion_Shot_Creation();
}

