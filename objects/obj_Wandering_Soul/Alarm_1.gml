scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 15;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Wander_Soul_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Size = 0.4;

    Shot_Speed = 6.5;
    Shot_Power = 10;
    Shot_Knockback = 10;
    Shot_Lifespan = 60;
    
    scr_Minion_Shot_Creation();
}


