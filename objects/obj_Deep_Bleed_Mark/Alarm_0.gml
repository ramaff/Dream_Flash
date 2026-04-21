/// @description Insert description here
// You can write your code in this editor
alarm[0] = frequency

if instance_exists(target) {
	target.bosshealth -= potency;
	scr_setup_dmg_indicator(x,y, potency, c_red);

	var _attack_stats = scr_base_bullet_stats(4, global.stagedamage, 1, id)
	_attack_stats.bullet_direction = random(360);
	_attack_stats.bullet_type = "obj_lob_bullet_v2"
	_attack_stats.bullet_life_span = 105 + random(30);
	_attack_stats.bullet_bounce_speed = 3 + random(2);
	_attack_stats.bullet_speed += random(2);
	_attack_stats.bullet_lob_time = _attack_stats.bullet_life_span + 2;
	scr_shoot_bullets(_attack_stats, x, y)

}

ticks--;

if ticks <= 0 {
	instance_destroy()	
}