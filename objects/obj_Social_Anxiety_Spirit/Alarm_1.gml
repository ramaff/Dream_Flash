/// @description Insert description here
// You can write your code in this editor

if !evil {
	exit;	
}

alarm[1] = 60;

if souldist < 320 {
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
	bullet_speed = 2.5 * (1.5 + random(1));
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
	
	alarm[1] = 30;

}