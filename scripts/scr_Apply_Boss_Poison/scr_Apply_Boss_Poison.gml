// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Apply_Boss_Poison(_target = id, _poison = shot_stats.Shot_Poison, _poison_time = shot_stats.Shot_Poison_Time, _poison_ticks = shot_stats.Shot_Poison_Ticks){
	for(i = 0; i <= 49; i++) {
	    if _target.bosspoison[i] = 0 {
	        _target.bosspoison[i] = _poison;
	        _target.bosspoisontime[i] = _poison_time;
	        _target.bosspoisonmaxtime[i] = _poison_time;
	        _target.bosspoisonticks[i] = _poison_ticks;
	        break;
	    }
	}
}