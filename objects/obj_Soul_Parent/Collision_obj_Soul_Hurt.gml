if soulinvincibility <= 0 {
	
	if global.V[5] > 0 {
		var _evaded = scr_V05();
		if _evaded {
			exit;	
		}
	}
    
    damageamount = other.bulletpower + (global.souldespair / 20) + (global.soulloathing / 10);
    defenseamount = (sdefenseadd + sdefensebuffamount) + global.currentheartdefense + (global.soulvanity / 20);
    
	hitType = "Nonboss";
	
    if (damageamount > defenseamount) {
        scr_B14_Bullet();
        scr_Soul_Spirit_Check_Bullet();
    }
    
    scr_Soul_Damage_Calculation();
	scr_Soul_Hit_Status_Add();
    
    if global.totalhearts <= 0 {
    if shealth <= 0 {
        instance_destroy();
    }
    }
}

