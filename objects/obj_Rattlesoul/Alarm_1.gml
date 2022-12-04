scr_Minion_Reload();

with instance_create(x,y,obj_Snake_Rattle) {

}

with (obj_Boss_Parent) {
    for(i = 0; i <= 49; i++) {
        if bossweaken[i] = 0 {
            bossweaken[i] = 4;
            bossweakentime[i] = 120;
            break;
        }
    }	
}
	
alarm[2] = 5;
/*
if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 15;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Weakening_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
        
    Shot_Speed = 6;
    Shot_Power = 3;
    Shot_Knockback = 10;
    Shot_Lifespan = 100;
    
    Shot_Weaken += 3;
    Shot_Weaken_Time = 120;
	
	Shot_Size = 0.4;
    
    scr_Minion_Shot_Creation();
}

