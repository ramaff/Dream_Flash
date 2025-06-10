/// @description Insert description here
// You can write your code in this editor

if bosshealth <= 0 {
	scr_default_attack_settings_v2();
		
	minion_count = 1;
	minion_type = obj_vampire_bat_mullet;
	minion_health = bossmaxhealth / 3;
	minion_speed = bossbulletspeed
		
	var _minion_shots = 3;
	var _dir = 270 - (45 * _minion_shots);
	repeat(_minion_shots) {
		minion_dir = _dir
		scr_Minion_Spawn(minionbossparent)
		_dir += 60;
	}

}




