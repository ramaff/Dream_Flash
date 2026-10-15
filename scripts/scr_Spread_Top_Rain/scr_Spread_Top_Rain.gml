function scr_Spread_Top_Rain() {
    var topStartX = (room_width / 2) - (global.roomSizeX / 2) + 0.5 * (global.roomSizeX / bullet_count);
    var bulletTopX = topStartX;
    
    scr_XB05(bullet_count);
    
    var dir = -(bullet_spread * (bullet_count - 1) / 2);
    
    repeat(bullet_count) {
        dir = -(bullet_spread / 2) + random(bullet_spread);
        with instance_create_depth(bulletTopX,(room_height / 2) - (global.roomSizeY / 2) - 500, 0,bullet_type) {
            scr_Bullet_Shoot_Properties();
            speed = speed * (0.95 + random(0.1));
            direction = other.bullet_direction + dir;
            
        }
        bulletTopX += (global.roomSizeX / bullet_count);
    }
}
