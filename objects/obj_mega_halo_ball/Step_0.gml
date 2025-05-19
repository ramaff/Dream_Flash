

event_inherited()

var _time = min(alarm[0], alarm[1])

scr_bullet_expand_before_contract_v2(bullet_stats, _time, 45, 0.02)

if alarm[1] < 15 {
	bullet_stats.bullet_size -= 0.035
	
	image_xscale = bullet_stats.bullet_size;
	image_yscale = bullet_stats.bullet_size;
}
