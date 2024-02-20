/// @description Insert description here
// You can write your code in this editor

scr_Default_Attack_Settings();

repeat(5) {

	bullet_sprite = choose(spr_Glowy_Enemy_Shot, spr_Glowy_Blue_Shot, spr_Glowy_Green_Shot, spr_Glowy_Yellow_Shot, spr_Glowy_Pink_Shot)
		
	bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 360)
	bullet_type = obj_Marble_Bullet;
	bullet_lob_time = 45 + random(30);
	bullet_lifespan = (bullet_lob_time + 2) * 4;
	bullet_bounce_speed = 3 + random(2);
	bullet_speed = bossbulletspeed * (0.4 + random(0.4))
		
	scr_Boss_Shoot();

}

// Inherit the parent event
event_inherited();

