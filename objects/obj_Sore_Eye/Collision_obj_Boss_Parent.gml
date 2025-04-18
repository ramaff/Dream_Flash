if soulinvincibility = 0 {

    if (scontactdamage > other.bossdefense) {
		other.bosshealth -= scontactdamage - other.bossdefense;
	}
    
	scr_setup_dmg_indicator(other.x,other.y, other.scontactdamage, c_white)
    
    soulinvincibility = 9;
    shealth -= other.bosscontactdamage
    
    if global.totalhearts <= 0 {
    if shealth <= 0 {
        instance_destroy();
    }
    }

}

