scr_Minion_Reload();

if instance_exists(obj_Bullet_Parent) and instance_exists(obj_Boss_Parent) {
    if distance_to_object(obj_Bullet_Parent) < 250 {
        scr_Default_Weapon_Stats();
        
        current_weapon_stats.Shot_Spread += 10;
        current_weapon_stats.Shot_Accuracy += 15;
        current_weapon_stats.Shot_Count += 2;
        
        current_weapon_stats.Shot_Sprite = "spr_Small_Barrier_Shot";
        current_weapon_stats.Shot_Type = "obj_Defense_Soul_Shot";
        
        current_weapon_stats.Shot_Speed = 15;
        current_weapon_stats.Shot_Power = 10;
        current_weapon_stats.Shot_Knock_Back = 10;
        current_weapon_stats.Shot_Life_Span = 50;
		Shot_Size = 0.4;
        
        current_weapon_stats.Shot_Phasing = 1;
        
        current_weapon_stats.Shot_Mouse = 0;
		if instance_exists(instance_nearest(x,y,obj_Bullet_Parent)) {
			current_weapon_stats.Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Bullet_Parent).x,instance_nearest(x,y,obj_Bullet_Parent).y);
		}
		
        current_weapon_stats.Shot_Shield_Type = 1;
        current_weapon_stats.Shot_Shield_Power = 10;
        
        scr_Minion_Shot_Creation();
    }
}
