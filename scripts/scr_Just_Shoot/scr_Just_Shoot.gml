function scr_Just_Shoot(absolute_pos = false) {
	scr_XB05(bullet_count);
    
    var dir = -(bullet_spread * (bullet_count - 1) / 2);
    var xx = x + boss_xoffset;
    var yy = y + boss_yoffset;
    if absolute_pos {
        xx = boss_xoffset;	
        yy = boss_yoffset;	
    }
    repeat(bullet_count) {
        with instance_create_depth(xx, yy,0,bullet_type) {
            scr_Bullet_Shoot_Properties();
            //direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
            direction = other.bullet_direction + dir;
            
        }
        dir += bullet_spread;
    }
}
