function scr_Top_Rain() {
    scr_XB05(bullet_count);
    
    var dir = -(bullet_spread * (bullet_count - 1) / 2);
    repeat(bullet_count) {
        dir = -(bullet_spread / 2) + random(bullet_spread);
        with instance_create_depth((room_width / 2) - (global.roomSizeX / 2) + random(global.roomSizeX),(room_height / 2) - (global.roomSizeY / 2) - 500,0,bullet_type) {
            scr_Bullet_Shoot_Properties();
            direction = other.bullet_direction + dir;
            
        }
    }
}
