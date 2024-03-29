scr_Minion_Reload();

image_index = 0;

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Stats.Shot_Spread += 0;
    Shot_Stats.Shot_Accuracy += 5;
    Shot_Stats.Shot_Count += 0;
    
    Shot_Stats.Shot_Sprite = spr_Flash_Bomb;
    Shot_Stats.Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Stats.Shot_Speed = 7.5;
    Shot_Stats.Shot_Power = 35;
    Shot_Stats.Shot_Impact_Type = 1;
    Shot_Stats.Shot_Impact_Size = 100;
    Shot_Stats.Shot_Impact_Power = 20;
    
    Shot_Stats.Shot_Knockback = 10;
    Shot_Stats.Shot_Life_Span = 100;
	
	Shot_Stats.Shot_Face_Direction = 1;
	Shot_Stats.Shot_Lobbing = 1;
	Shot_Stats.Shot_Size = 0.475;
    
    scr_Minion_Shot_Creation();
}

