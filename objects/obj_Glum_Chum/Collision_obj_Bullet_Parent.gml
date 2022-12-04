if soulinvincibility = 0 {

    soulinvincibility = 6;
    
    shealth -= other.bulletpower;
    
    if shealth <= 0 {
        instance_destroy();
    }

}

