if soulinvincibility <= 0 and soul_underground <= 0 {
	
	if global.V[5] > 0 {
		var _evaded = scr_V05();
		if _evaded {
			exit;	
		}
	}
	
	scr_soul_hit_status_add_v2(other.bullet_stats);
	
	if other.bullet_stats.bullet_power <= 0 {
		exit;	
	}
    
    var damageamount = other.bullet_stats.bullet_power + ((global.soulloathing + global.soulloathingTemp) / 10);
    var defenseamount = scr_Soul_Defense_Calc(id);
    damageamount = scr_B05_v2(damageamount);
    damageamount = scr_H15_v2(damageamount);
    
    if (damageamount > defenseamount) {
		scr_B14_Bullet(damageamount, defenseamount, other.bullet_stats.bullet_origin);
        scr_Soul_Spirit_Check_Bullet(other.bullet_stats.bullet_origin);
    }
    
	var hitType = "Nonboss";
	
	if other.bullet_stats.bullet_power != 0 {
		scr_Soul_Damage_Calculation(damageamount, defenseamount);
	}
    
    if global.totalhearts <= 0 {
	    if shealth <= 0 {
	        instance_destroy();
	    }
    }
}

