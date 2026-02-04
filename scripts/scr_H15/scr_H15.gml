function scr_H15_v2(damageamount) {
	// Location Soul Hit by Bullet Event

	if global.totalhearts > 0 {
		if Soul_Hearts_Control.heart[global.currentheart, 2] = 15 {
			scr_Rubber_Soul_Rebound_Shot(other.bullet_stats.bullet_speed, other.bullet_stats.bullet_power);
		    if scr_Chance(1 + (1 / global.soulheartboost)) {
		        return 2;
		    }
		}
	}
	return damageamount
}

function scr_H15(damageamount) {
	// Location Soul Hit by Bullet Event

	if global.totalhearts > 0 {
		if Soul_Hearts_Control.heart[global.currentheart, 2] = 15 {
			scr_Rubber_Soul_Rebound_Shot(other.bulletspeed, other.bulletpower);
		    if scr_Chance(1 + (1 / global.soulheartboost)) {
		        return 2;
		    }
		}
	}
	return damageamount
}

