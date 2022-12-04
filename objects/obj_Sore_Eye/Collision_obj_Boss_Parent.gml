if soulinvincibility = 0 {

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
    
    soulinvincibility = 9;
    shealth -= other.bosscontactdamage
    
    if global.totalhearts <= 0 {
    if shealth <= 0 {
        instance_destroy();
    }
    }

}

