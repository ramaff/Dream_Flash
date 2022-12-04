if soulinvincibility = 0 {

    soulinvincibility = 6;
    
    shealth -= other.bulletpower;
    
    if shealth <= 0 {
        instance_destroy();
    }
    
    alarm[4] = 1;
    corporealHit += 1;

}

