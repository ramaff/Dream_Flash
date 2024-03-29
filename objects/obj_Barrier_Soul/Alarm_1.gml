scr_Minion_Reload();

if instance_exists(obj_Bullet_Parent) and instance_exists(obj_Boss_Parent) {
    if distance_to_object(obj_Bullet_Parent) < 250 {
        scr_Default_Weapon_Stats();
        
        Shot_Stats.Shot_Spread += 10;
        Shot_Stats.Shot_Accuracy += 15;
        Shot_Stats.Shot_Count += 2;
        
        Shot_Stats.Shot_Sprite = "spr_Small_Barrier_Shot";
        Shot_Stats.Shot_Type = "obj_Defense_Soul_Shot";
        
        Shot_Stats.Shot_Speed = 15;
        Shot_Stats.Shot_Power = 10;
        Shot_Stats.Shot_Knockback = 10;
        Shot_Stats.Shot_Life_Span = 50;
		Shot_Size = 0.4;
        
        Shot_Stats.Shot_Phasing = 1;
        
        Shot_Stats.Shot_Mouse = 0;
		if instance_exists(instance_nearest(x,y,obj_Bullet_Parent)) {
			Shot_Stats.Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Bullet_Parent).x,instance_nearest(x,y,obj_Bullet_Parent).y);
		}
		
        Shot_Stats.Shot_Shield_Type = 1;
        Shot_Stats.Shot_Shield_Power = 10;
        
        scr_Minion_Shot_Creation();
    }
}
