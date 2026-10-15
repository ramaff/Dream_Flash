function scr_Soul_Shoot_Vomit() {
	scr_XB05(bullet_count)
    repeat(bullet_count) {
    var dir = -(bullet_spread / 2) + random(bullet_spread);
    with instance_create_depth(x + boss_xoffset,y + boss_yoffset, 0,bullet_type) {
            scr_Bullet_Shoot_Properties();
            bulletspeed = bulletspeed * (other.bullet_speedfac_min + random(other.bullet_speedfac_add));
            bulletlife = bulletlife * (other.bullet_timefac_min + random(other.bullet_timefac_add));
            direction = scr_Soul_Point();
            speed = bulletspeed;
            alarm[0] = bulletlife;
            direction += other.bullet_direction + dir;
            
        }
    }
}
