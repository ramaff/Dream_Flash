if soulinvincibility <= 0 {

    soulinvincibility = 15;
    shealth -= other.bulletpower;
    
    if shealth <= 0 {
        instance_destroy();
    }
}

