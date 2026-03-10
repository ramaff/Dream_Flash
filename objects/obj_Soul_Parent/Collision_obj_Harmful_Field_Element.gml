

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
    var defenseamount = scr_Soul_Defense_Calc(id) + scontactdefenseadd
    
	var negate = 2;
	
	damageamount = damageamount / negate;
	defenseamount = defenseamount / negate;
	damageamount = scr_B05_v2(damageamount, false);
		
		
		scr_Soul_Damage_Calculation(damageamount, defenseamount);
        
        if global.currentheart < 0 {
        if shealth <= 0 {
            instance_destroy();
        }
    }
	}
}