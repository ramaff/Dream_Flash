function scr_H15_v2(damageamount) {
	// Location Soul Hit by Bullet Event

	if global.totalhearts > 0 {
		if Soul_Hearts_Control.heart[global.currentheart, 2] = 15 {
		    var chance = irandom(2);
			scr_Rubber_Soul_Rebound_Shot(other.bullet_stats.bullet_speed, other.bullet_stats.bullet_power);
		    if chance >= 1 {
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
		    var chance = irandom(2);
			scr_Rubber_Soul_Rebound_Shot(other.bulletspeed, other.bulletpower);
		    if chance >= 1 {
		        return 2;
		    }
		}
	}
	return damageamount
}

