if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 5;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Explosion_Effect;
    Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Speed = 0;
    Shot_Power = 100;
    Shot_Knock_Back = 10;
    Shot_Life_Span = 16;
    Shot_Size = 0.75;
	
	Shot_Pierce += 50;
	Shot_Phasing = 1;
    
    scr_Minion_Shot_Creation();
}

