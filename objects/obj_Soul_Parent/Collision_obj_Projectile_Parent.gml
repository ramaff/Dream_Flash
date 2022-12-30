if other.shotsouldamage > 0 {
    if soulinvincibility <= 0 {
		
		hitType = "Nonboss";
		
        damageamount = other.shotsouldamage;
        defenseamount = (sdefenseadd + sdefensebuffamount) + global.currentheartdefense + scr_Class_Stat_Defense_Increase();
        scr_Soul_Damage_Calculation();
        
        if global.totalhearts <= 0 {
        if shealth <= 0 {
            instance_destroy();
        }
        }
    }
    instance_destroy(other);
}

