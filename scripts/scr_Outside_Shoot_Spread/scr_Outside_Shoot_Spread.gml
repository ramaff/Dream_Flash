function scr_Outside_Shoot_Spread() {
	scr_XB05(bullet_count);
    
    var dir = -(bullet_spread * (bullet_count - 1) / 2);
    repeat(bullet_count) {
        with instance_create_depth(x + lengthdir_x(boss_radius, image_angle),y + lengthdir_y(boss_radius, image_angle),0,bullet_type) {
            var dirr = (other.bullet_direction + dir);
        
            x += lengthdir_x(1500,dirr);
            y += lengthdir_y(1500,dirr);
        
            bullet_direction = point_direction(x,y,other.bossX,other.bossY);
            scr_Bullet_Shoot_Properties();
            bulletlifespan = distance_to_point(other.bossX,other.bossY) / bulletspeed;
            alarm[0] = bulletlifespan;
            direction = bullet_direction
        }
        dir += bullet_spread;
    }
}
