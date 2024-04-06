function scr_A12() {
	// Location Shot Creation

	if global.A[12] > 0 {
		/*
		part_type_sprite(ptype,spr_Soul_Bit,0,0,0);
		part_type_color_mix(ptype, make_color_rgb(255,50,50),make_color_rgb(255,150,150));
		part_type_alpha1(ptype, 1)
		part_type_life(ptype,10,20);
				
		repeat(8) {
			scr_Soul_Part_Summon_Burst(5 + random(10));
		}
		*/
		scr_Disk_Effect(10, 0.75, c_red);
		
		var dmg = ((1 + global.A[12])/2) * current_weapon_stats.Shot_Power / 4;
	    with(obj_Boss_Parent) {
	        if distance_to_object(other) <= (150 + 10 * global.A[12]) {
	            bosshealth -= dmg;
            
	            with instance_create(x,y,obj_Damage_Indicator) {
	                element = 0;
	                damageIndication = dmg;
	                textSize = 1;
	                direction = 90;
	                speed = 1 + (other.speed / 6) + random(0.05)
	                friction = 0.01 + (other.speed / 600)
	                alarm[0] = 30 + irandom(3);
	            }
	        }
	    }
	}



}
