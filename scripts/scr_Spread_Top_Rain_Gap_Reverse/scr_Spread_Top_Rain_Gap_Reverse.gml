function scr_Spread_Top_Rain_Gap_Reverse(gap) {
    var topStartX = (room_width / 2) - (global.roomSizeX / 2) + 0.5 * (global.roomSizeX / bullet_count);
    var bulletTopX = topStartX;
    
    scr_XB05(bullet_count);
    
    var dir = -(bullet_spread * (bullet_count - 1) / 2);
    
    var bcount = 0;
    repeat(bullet_count) {
        bcount++;
        dir = -(bullet_spread / 2) + random(bullet_spread);
        if ((bcount = gap) || (bcount = gap + 1) || (bcount = gap + 2) || (bcount = gap + 3) || (bcount = gap + 4) || (bcount = gap + 5) || (bcount = gap + 6) || (bcount = gap + 7) || (bcount = gap + 8)) {
            with instance_create_depth(bulletTopX,(room_height / 2) - (global.roomSizeY / 2) - 500, 0,bullet_type) {
                scr_Bullet_Shoot_Properties();
                speed = speed * (0.85 + random(0.25));
                direction = other.bullet_direction + dir;
                
            }
        }
        bulletTopX += (global.roomSizeX / bullet_count);
    }
}
