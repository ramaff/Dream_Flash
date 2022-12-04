    scr_Default_Attack_Settings();
    bullet_type = obj_Bounce_Bullet;
    bullet_sprite = spr_Lob_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 170;
    bullet_size = 0.5;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;

bossattack = 1 + irandom(3);

if bossattack <= 3 {
    var fast = bossmovespeed * (0.5 + random(1));
    direction = scr_Soul_Point();
	speed = fast;
} else {
	var fast = bossmovespeed * (0.5 + random(1));
    direction = 45 * random(8);
}
speed = fast;

alarm[0] = (60 + random(30)) / bossattackspeed;


