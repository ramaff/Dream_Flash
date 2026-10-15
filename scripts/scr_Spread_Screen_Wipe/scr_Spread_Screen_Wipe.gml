function scr_Spread_Screen_Wipe() {
    var xStart = (room_width / 2) - global.roomSizeX;

    if bossPatternDirection = 180 {
        xStart += 2 * global.roomSizeX;
    }

    var rightStartY = (room_height / 2) - (global.roomSizeY / 2) + 0.5 * (global.roomSizeY / bullet_count);
    var bulletRightY = rightStartY;
    scr_XB05(bullet_count);
    var dir = -(bullet_spread * (bullet_count - 1) / 2);
    repeat(bullet_count) {
        dir = -(bullet_spread / 2) + random(bullet_spread);
        with instance_create_depth(xStart,bulletRightY,0,bullet_type) {
            scr_Bullet_Shoot_Properties();
            speed = speed;
            direction = other.bullet_direction + dir;
            
        }
        bulletRightY += (global.roomSizeY / bullet_count);
    }
}
