if soulinvincibility = 0 {

    soulinvincibility = 10;

    if sknockbackdefense < other.bossknockbackforce {
                direction = other.direction;
                speed = (other.bossknockbackforce - sknockbackdefense) / 2;
                alarm[10] = 6;
            }
            
    shealth -= other.bosscontactdamage;
    
    if global.totalhearts <= 0 {
    if shealth <= 0 {
        instance_destroy();
    }
    }
    
    alarm[4] = 1;
    corporealHit += 1;

}

