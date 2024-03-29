if corporealHit > 0 {

    alarm[4] = 3;
    corporealHit--;

    if instance_exists(obj_Boss_Parent) {
        scr_Default_Weapon_Stats();
        
        Shot_Spread += 180;
        Shot_Accuracy += 10;
        Shot_Count += 1;
        
		Shot_Direction = corporealdir;
        Shot_Sprite = spr_Corporeal_Shot;
        Shot_Type = obj_Lesser_Soul_Shot;
        
        Shot_Speed = 5.5;
        Shot_Power = 9;
        Shot_Knockback = 10;
        Shot_Life_Span = 100;
		Shot_Size = 0.5;
		
		Shot_Point_Angle = 1;
        
        scr_Minion_Shot_Creation();
		
		corporealdir += 10;
    }

}

