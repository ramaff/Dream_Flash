if soulinvincibility <= 0 and soul_underground <= 0 {
	
	if global.V[5] > 0 {
		var _evaded = scr_V05();
		if _evaded {
			exit;	
		}
	}
    
    var damageamount = other.bulletpower + ((global.soulloathing + global.soulloathingTemp) / 10);
    var defenseamount = scr_Soul_Defense_Calc(id)
    damageamount = scr_B05(damageamount);
    damageamount = scr_H15(damageamount);
    
    if (damageamount > defenseamount) {
		//scr_B14_Bullet(damageamount, defenseamount, other.bulletobj);
        scr_Soul_Spirit_Check_Bullet(other.bulletobj);
    }
    
	hitType = "Nonboss";
	
	if other.bulletpower != 0 {
		scr_Soul_Damage_Calculation(damageamount, defenseamount);
	}
	scr_Soul_Hit_Status_Add();
    
    if global.currentheart < 0 {
    if shealth <= 0 {
        instance_destroy();
    }
    }
}

