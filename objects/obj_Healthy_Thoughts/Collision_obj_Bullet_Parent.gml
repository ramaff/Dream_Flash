if soulinvincibility = 0 {
    soulinvincibility = 6;
    shealth -= other.bulletpower;
    
    val = random(9) + random(other.bulletpower);
    
    if val >= 10 {
        with instance_create(x,y,obj_Healthy_Essence) {
            speed = 0.5 + random(0.8);
            friction = 0.01;
            direction = random(360);
        }
    }
    
    if shealth <= 0 {
        instance_destroy();
    }
}

