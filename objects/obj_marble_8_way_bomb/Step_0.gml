/// @description Insert description here
// You can write your code in this editor

if scr_bullet_lob(bullet_stats) {
	bullet_stats.bullet_bounce_speed = bullet_stats.bullet_bounce_speed * 0.75;
	//bullet_stats.bullet_speed = bullet_stats.bullet_speed * 0.85;
	speed = speed * 0.85;
	direction = scr_Soul_Point() - 60 + random(120);
}

scr_bullet_expand_before_contract_v2(bullet_stats, alarm[0], 45, 0.015)

if alarm[0] < 15 {
	bullet_stats.bullet_size -= 0.035
	
	image_xscale = bullet_stats.bullet_size;
	image_yscale = bullet_stats.bullet_size;
}

