/// @description Insert description here
// You can write your code in this editor

direction = scr_Soul_Point() - 60 + random(120);
speed = bullet_stats.bullet_speed;
bullet_stats.bullet_power += global.stagedamage;
sprite_index = spr_red_bullet_v2