/// @description Insert description here
// You can write your code in this editor

//("evil: " + string(evil) + ", good: " + string(good))

if evil = 0 {
	if good = 0 {
		exit;
	}
}

if souldist < 320 {
	if good = 1 {
	
		if instance_exists(obj_Bullet_Parent) and instance_exists(obj_Boss_Parent) {
		    scr_Default_Weapon_Stats();
        
		    current_weapon_stats.Shot_Spread = 10;
		    current_weapon_stats.Shot_Accuracy = 15;
		    current_weapon_stats.Shot_Count = 5;
        
		    current_weapon_stats.Shot_Sprite = "spr_Small_Barrier_Shot";
		    current_weapon_stats.Shot_Type = "obj_Defense_Soul_Shot";
        
		    current_weapon_stats.Shot_Speed = 10;
		    current_weapon_stats.Shot_Power = 10;
		    current_weapon_stats.Shot_Knock_Back = 10;
		    current_weapon_stats.Shot_Life_Span = 90;
			current_weapon_stats.Shot_Size = 0.4;
        
		    current_weapon_stats.Shot_Phasing = 1;
        
		    current_weapon_stats.Shot_Mouse = 0;
			if instance_exists(instance_nearest(x,y,obj_Bullet_Parent)) {
				current_weapon_stats.Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Bullet_Parent).x,instance_nearest(x,y,obj_Bullet_Parent).y);
			}
		
		    current_weapon_stats.Shot_Shield_Type = 1;
		    current_weapon_stats.Shot_Shield_Power = 10;
        
		    scr_Minion_Shot_Creation();
			
			scr_Boss_Stretch("Vertical", 0.4);
		}
	
	}
	
	if evil = 1 {

		bossbulletspeed = 4;
		bosspower = global.stagedamage;
		bossaccuracy = 1;
		bossmaxhealth = 10;
		bossknockdefense = 10;
		bossmovespeed = 1;
		bossattackspeed = 1;
		bossdefense = 0;
		bossknockbackforce = 1;
		bosscontactdamage = 10;
	
		scr_Default_Attack_Settings();
		bullet_type = obj_Basic_Bullet;
		bullet_sprite = spr_Glowy_Dreamy_Shot;
		bullet_speed = 1.75 * (1.5 + random(1));
		bullet_power = global.stagedamage;
		bullet_direction = (-60 + random(120));
		bullet_lifespan = 300;
		bullet_size = 1;
		bullet_image_speed = 1;
		boss_radius = 0;

		bullet_spread = 15;
		bullet_count = choose(5, 5, 5, 10);
		scr_Soul_Shoot();
	
		scr_Boss_Stretch("Vertical", 0.4);
	}

}

alarm[1] = 60;