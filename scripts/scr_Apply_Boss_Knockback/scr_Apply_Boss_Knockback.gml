// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Apply_Boss_Knockback(_target = other.id, _knockback = shot_stats.Shot_Knock_Back, _knockback_time = 5, _direction = direction){
	if _knockback >= _target.bossknockdefense {
		_target.bossknockbackdirection = _direction;
		_target.bossknockback = max(_target.bossknockback, (_knockback - _target.bossknockdefense) / 2);
		_target.bossknockbacktime = _knockback_time;
		_target.bossknockbackmaxtime = _knockback_time;
		if _target.bossknockback > 200 {
			_target.bossknockback = 200;	
		}
	}
	_target.deadknockdirection = _direction
}