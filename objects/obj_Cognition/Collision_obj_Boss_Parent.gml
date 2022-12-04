if soulinvincibility = 0 {
    soulinvincibility = 6;
    if sknockbackdefense < other.bossknockbackforce {
                direction = other.direction;
                speed = (other.bossknockbackforce - sknockbackdefense) / 2;
                alarm[10] = 6;
            }
            
    shealth -= other.bosscontactdamage;
    
    val = random(9) + random(other.bosscontactdamage);
    
    if val >= 8 {
        with instance_create(x,y,obj_Essential_Essence) {
            speed = 0.5 + random(0.8);
            friction = 0.01;
            direction = random(360);
        }
    }
    
    if shealth <= 0 {
        instance_destroy();
    }
}

