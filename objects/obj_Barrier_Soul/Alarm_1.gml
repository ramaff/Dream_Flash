scr_Minion_Reload();

if instance_exists(obj_Bullet_Parent) and instance_exists(obj_Boss_Parent) {
    if distance_to_object(obj_Bullet_Parent) < 250 {
        scr_Default_Weapon_Stats();
        
        Shot_Spread += 10;
        Shot_Accuracy += 15;
        Shot_Count += 2;
        
        Shot_Sprite = spr_Small_Barrier_Shot;
        Shot_Type = obj_Defense_Soul_Shot;
        
        Shot_Speed = 15;
        Shot_Power = 10;
        Shot_Knockback = 10;
        Shot_Lifespan = 50;
		Shot_Size = 0.4;
        
        Shot_Phasing = 1;
        
        Shot_Mouse = 0;
		if instance_exists(instance_nearest(x,y,obj_Bullet_Parent)) {
			Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Bullet_Parent).x,instance_nearest(x,y,obj_Bullet_Parent).y);
		}
		
        Shot_Shield_Type = 1;
        Shot_Shield_Power = 10;
        
        scr_Minion_Shot_Creation();
    }
}
