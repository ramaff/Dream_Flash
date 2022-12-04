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
