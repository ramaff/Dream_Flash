if soulinvincibility <= 0 and other.bulletpower > 0 and soul_underground <= 0 {
	
	if global.V[5] > 0 {
		var _evaded = scr_V05();
		if _evaded {
			exit;	
		}
	}
    
    var damageamount = other.bulletpower;
    var defenseamount = scr_Soul_Defense_Calc(id)
    damageamount = scr_B05_v2(damageamount, false);
	
	hitType = "Nonboss";
	
    if (damageamount > defenseamount) {
        scr_B14_Bullet(damageamount, defenseamount, other.bulletobj);
        scr_Soul_Spirit_Check_Bullet(other.bulletobj);
    }
    
    scr_Soul_Damage_Calculation(damageamount, defenseamount);
	scr_Soul_Hit_Status_Add();
    
    if global.totalhearts <= 0 {
    if shealth <= 0 {
        instance_destroy();
    }
    }
}

