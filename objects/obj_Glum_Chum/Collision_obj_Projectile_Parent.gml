//var hit_again = ds_list_find_index(projectile_hits, other.shot_id);
//if hit_again = -1 
var hit_again = variable_struct_exists(projectile_hits, other.shot_id)

if !hit_again and other.shot_stats.Shot_Origin != id { 
    
    if soulinvincibility = 0 {

    soulinvincibility = 3 
    
    shealth -= 5;
    
    //ds_list_add(projectile_hits, other.shot_id);  
	variable_struct_set(projectile_hits, other.shot_id, other.shot_id);
    
    if shealth <= 0 {
        instance_destroy();
    }
    
    alarm[1] = 1;
    corporealHit += 1;
    
    //instance_destroy(other);

    }
}

