/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

if champ = 1 {
	scr_Default_Attack_Settings();

	bullet_count = 1;
	bullet_sprite = spr_Glowy_Orange_Shot;
	bullet_spread = 0;
	bullet_type = obj_Popcorn_Kernel_Bullet;
			
	bullet_speed = bossbulletspeed * (0.9 + random(0.8));
	bullet_lob_time = 45 + random(30);
	bullet_lifespan = (bullet_lob_time + 2) * 4;
	bullet_bounce_speed = 4 + random(3);
				
	bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 360)
				
	scr_Boss_Shoot();

}