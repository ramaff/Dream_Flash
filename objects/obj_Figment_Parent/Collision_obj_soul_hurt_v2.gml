if soulinvincibility <= 0 {

    soulinvincibility = 15;
    shealth -= other.bullet_stats.bullet_power;
    
	instance_destroy(other)
	
    if shealth <= 0 {
        instance_destroy();
    }
}

