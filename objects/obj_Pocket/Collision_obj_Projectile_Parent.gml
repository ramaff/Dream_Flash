/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

exit;

if bossReaction > 1 {
    repeat(bossReaction - 1) {
        
        scr_Default_Attack_Settings();
        bullet_type = obj_Basic_Bullet;
        bullet_sprite = spr_Glowy_Orange_Shot;
        bullet_speed = bossbulletspeed * (1.5 + random(0.3));
        bullet_power = bosspower;
        bullet_direction = (-15 + random(30)) / bossaccuracy;
        bullet_lifespan = 300;
        bullet_size = 1;
        bullet_spread = 0;
        boss_radius = 0;
        
        bullet_count = 2;
        bullet_spread = 30;
        
        scr_Soul_Shoot();
        
    }
    bossReaction = 1;
}
