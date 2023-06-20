scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 15;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Friendly_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Size = 0.4;
    
    Shot_Speed = 5.5;
    Shot_Power = 16;
    Shot_Knockback = 10;
    Shot_Lifespan = 100;
    
    scr_Minion_Shot_Creation();
}

if scr_Chance(2) {
	with instance_create(x,y,obj_Healthy_Essence) {
	    speed = 0.5 + random(0.8);
	    friction = 0.01;
	    direction = random(360);
	}
}
