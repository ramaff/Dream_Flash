function scr_Just_Shoot_No_Paranoia() {
	scr_XB05(bullet_count);
	
    var dir = -(bullet_spread * (bullet_count - 1) / 2);
    repeat(bullet_count) {
        with instance_create_depth(x + lengthdir_x(boss_radius, image_angle),y + lengthdir_y(boss_radius, image_angle),0,bullet_type) {
            scr_Bullet_Shoot_Properties();
            direction = (other.bullet_direction + dir);
        }
        dir += bullet_spread;
    }
}
