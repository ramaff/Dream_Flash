function scr_Offset_Soul_Shoot() {
	scr_XB05(bullet_count);
    
    var dir = -(bullet_spread * (bullet_count - 1) / 2);
    repeat(bullet_count) {
        with instance_create_depth(x + boss_xoffset,y + boss_yoffset,0,bullet_type) {
            scr_Bullet_Shoot_Properties();
            direction = scr_Soul_Point();
            speed = bulletspeed;
            direction += (other.bullet_direction + dir);
            
        }
        dir += bullet_spread;
    }
}
