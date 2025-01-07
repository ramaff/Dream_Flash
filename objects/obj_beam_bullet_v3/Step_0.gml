/// @description Insert description here
// You can write your code in this editor
	//if bulletblend != 0 {
	//	scr_Bullet_Blend(bulletblend);	
	//}

if image_index < 8 || image_index >= 11 {
	bullet_stats.bullet_power = 0;	
} else {
	bullet_stats.bullet_power = global.stagedamage;	
}

if alarm[0] > 10 and image_index >= 10 {
	image_index = 10
}

seg_angle += bullet_stats.angular_velocity

scr_boss_beam_position_update()

bullet_stats.angular_velocity += bullet_stats.angular_acceleration
