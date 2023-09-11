with (other) {
global.bosscount -= 1;

scr_Soul_Currency_Add();

with(obj_Manifest_Core) {
    if bossID = other.bossID {
        if champ != 2 {
            bosshealth -= 25;
        }
        if champ = 2 {
            bosshealth -= 10;
        }
    }
}

if champ = 2 {
    scr_Default_Attack_Settings();

    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Pink_Shot;
    bullet_speed = bossbulletspeed * 1.9;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300 + irandom(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    bullet_count = 4;
    bullet_spread = 360 / bullet_count;
    bullet_lifespan = 300;
	
	bullet_speedfac_min = 1;
    bullet_speedfac_add = 0;
    bullet_timefac_min = 1;
    bullet_timefac_add = 0;
    
    scr_Suicide_Even_Shoot(5,bullet_speed,400);
	
	bullet_direction += 45;
    
    scr_Suicide_Even_Shoot(5,bullet_speed * 0.55,400);

}

}
