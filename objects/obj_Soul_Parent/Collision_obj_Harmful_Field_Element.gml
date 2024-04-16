/*
if soulinvincibility <= 0 {
    
    damageamount = 5
    defenseamount = (sdefenseadd + sdefensebuffamount) + global.currentheartdefense + (global.soulvanity / 20) - (global.souldespair / 20);
    
    if (damageamount > defenseamount) {
        shealth -= damageamount - defenseamount;
    }
    

	
    //scr_Soul_Damage_Calculation();
	//scr_Soul_Hit_Status_Add();
    
    if global.totalhearts <= 0 {
    if shealth <= 0 {
        instance_destroy();
    }
    }
}
*/

if soulinvincibility <= 0 and soul_underground <= 0 {
	
	if global.V[5] > 0 {
		var _evaded = scr_V05();
		if _evaded {
			exit;	
		}
	}
	
	if other.hazardActive = 1 {	
	hitType = "Nonboss";

    damageamount = other.hazardDamage;
    defenseamount = (sdefenseadd + sdefensebuffamount + scontactdefenseadd) + global.currentheartdefense + scr_Class_Stat_Defense_Increase();
    
	negate = 2;
	
	damageamount = damageamount / negate;
	defenseamount = defenseamount / negate;
		
		
		scr_Soul_Damage_Calculation();
        
        if global.totalhearts <= 0 {
        if shealth <= 0 {
            instance_destroy();
        }
    }
	}
}