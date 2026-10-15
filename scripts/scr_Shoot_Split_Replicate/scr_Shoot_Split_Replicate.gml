function scr_Shoot_Split_Replicate() {
    var dir = -(bullet_spread * (bullet_count - 1) / 1);
    repeat(bullet_count) {
        with instance_create_depth(x,y,0,bullet_type) {
            scr_Bullet_Replicate_Properties();
            direction = dir;
        }
        dir += bullet_spread;
    }
}
