scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 20;
    Shot_Accuracy += 15;
    Shot_Count += 1;
    
    Shot_Sprite = spr_Warp_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Speed = 6.5;
    Shot_Power = 18;
    Shot_Knockback = 10;
    Shot_Life_Span = 100;
	
	Shot_Point_Angle = 1;
	Shot_Size = 0.4;
    
    scr_Minion_Shot_Creation();
}

with instance_create(x,y,obj_Healthy_Essence) {
    speed = 0.5 + random(0.8);
    friction = 0.01;
    direction = random(360);
}

