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

if instance_exists(bullet_stats.bullet_origin) {
	var _diff = angle_difference(seg_angle, scr_Soul_Point())
	
	if _diff < 0 {
		bullet_stats.angular_acceleration = bullet_stats.homing_speed / 60
		if bullet_stats.angular_velocity > bullet_stats.homing_speed {
			bullet_stats.angular_velocity = bullet_stats.homing_speed	
		}
	} else {
		bullet_stats.angular_acceleration = -bullet_stats.homing_speed / 60
		if bullet_stats.angular_velocity < -abs(bullet_stats.homing_speed) {
			bullet_stats.angular_velocity = -abs(bullet_stats.homing_speed)
		}
	}
	//bullet_stats.angular_velocity = min(bullet_stats.homing_speed, bullet_stats.angular_velocity);
	//seg_angle = scr_Angle_Converge(seg_angle, scr_Soul_Point(), bullet_stats.homing_speed)
}

scr_boss_beam_position_update()

bullet_stats.angular_velocity += bullet_stats.angular_acceleration
