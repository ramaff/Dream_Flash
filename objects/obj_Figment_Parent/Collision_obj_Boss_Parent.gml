if soulinvincibility <= 0 {

    if other.bossknockbackforce >= sknockbackdefense {
        sminknockbackdirection = point_direction(x,y,other.x,other.y) + 180;
        sminknockback = (other.bossknockbackforce - sknockbackdefense);
        if sminknockback >= 10 {
            sminknockback = 10;
        }
        sminknockbacktime = 6;
    }
    
    soulinvincibility = 15;
    shealth -= other.bosscontactdamage
    
	if (scontactdamage > other.bossdefense) {
		other.bosshealth -= scontactdamage - other.bossdefense;
	}
    
	scr_setup_dmg_indicator(other.x,other.y, other.scontactdamage, c_white)
    
    if shealth <= 0 {
        instance_destroy();
    }

}

