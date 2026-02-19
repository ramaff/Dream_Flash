// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Follow_Shot_Bullet_Spawn(){
	var _attack_stats = scr_base_bullet_stats(max(0.1, speed), global.stagedamage, 1, id)
	_attack_stats.bullet_type = "obj_follow_the_soul_shot_bullet"
	_attack_stats.bullet_direction = direction;
	scr_shoot_bullets(_attack_stats, x, y)
}