function scr_soul_hit_status_add_v2(_bullet_stats) {

	if soulstun = 0 {
		soulstun = _bullet_stats.bullet_stun;
	}
	if _bullet_stats.bullet_stun_time > soulstuntime {
		soulstuntime = _bullet_stats.bullet_stun_time;
	}
	if soulsleep = 0 {
		soulsleep = _bullet_stats.bullet_sleep;	
	}
	if _bullet_stats.bullet_sleep_time > soulsleeptime {
		soulsleeptime = _bullet_stats.bullet_sleep_time;	
	}


}


function scr_Soul_Hit_Status_Add() {

	if soulstun = 0 {
		soulstun = other.bulletstun;
	}
	if other.bulletstuntime > soulstuntime {
		soulstuntime = other.bulletstuntime;
	}
	if soulsleep = 0 {
		soulsleep = other.bulletsleep;	
	}
	if other.bulletsleeptime > soulsleeptime {
		soulsleeptime = other.bulletsleeptime;	
	}


}
