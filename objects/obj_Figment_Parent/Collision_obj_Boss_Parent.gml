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
    
    with instance_create(other.x,other.y,obj_Damage_Indicator) {
        element = 0;
        damageIndication = other.scontactdamage;
        textSize = 1;
        direction = 90;
        speed = 1 + (other.speed / 6) + random(0.05)
        friction = 0.01 + (other.speed / 600)
        alarm[0] = 30 + irandom(3);
    }
    
    if shealth <= 0 {
        instance_destroy();
    }

}

