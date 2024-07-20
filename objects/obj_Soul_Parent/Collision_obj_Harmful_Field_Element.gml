

if soulinvincibility <= 0 and soul_underground <= 0 {
	
	if global.V[5] > 0 {
		var _evaded = scr_V05();
		if _evaded {
			exit;	
		}
	}
	
	if other.hazardActive = 1 {	
	hitType = "Nonboss";

    var damageamount = other.hazardDamage;
    var defenseamount = (sdefenseadd + sdefensebuffamount + scontactdefenseadd) + global.currentheartdefense + scr_Class_Stat_Defense_Increase();
    
	var negate = 2;
	
	damageamount = damageamount / negate;
	defenseamount = defenseamount / negate;
		
		
		scr_Soul_Damage_Calculation(damageamount, defenseamount);
        
        if global.totalhearts <= 0 {
        if shealth <= 0 {
            instance_destroy();
        }
    }
	}
}