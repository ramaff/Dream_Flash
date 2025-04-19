if other.shot_stats.Shot_Soul_Damage > 0 and soul_underground <= 0 {
    if soulinvincibility <= 0 {
		
		if global.V[5] > 0 {
			var _evaded = scr_V05();
			if _evaded {
				exit;	
			}
		}
		
		hitType = "Nonboss";
		
        var damageamount = other.shot_stats.Shot_Soul_Damage;
        var defenseamount = (sdefenseadd + sdefensebuffamount) + global.currentheartdefense + scr_Class_Stat_Defense_Increase();
        scr_Soul_Damage_Calculation(damageamount, defenseamount);
        
        if global.totalhearts <= 0 {
        if shealth <= 0 {
            instance_destroy();
        }
        }
    }
    instance_destroy(other);
}

scr_Soul_Shot_Soul_Hit();