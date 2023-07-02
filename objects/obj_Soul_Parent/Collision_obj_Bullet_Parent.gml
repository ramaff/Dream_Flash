if soulinvincibility <= 0 {
    
    damageamount = other.bulletpower + ((global.soulloathing + global.soulloathingTemp) / 10);
    defenseamount = (sdefenseadd + sdefensebuffamount) + global.currentheartdefense + scr_Class_Stat_Defense_Increase();
    scr_B05();
    scr_H15();
    
    if (damageamount > defenseamount) {
        //scr_B14_Bullet();
        scr_Soul_Spirit_Check_Bullet();
    }
    
	hitType = "Nonboss";
	
	if other.bulletpower != 0 {
		scr_Soul_Damage_Calculation();
	}
	scr_Soul_Hit_Status_Add();
    
    if global.totalhearts <= 0 {
    if shealth <= 0 {
        instance_destroy();
    }
    }
}

