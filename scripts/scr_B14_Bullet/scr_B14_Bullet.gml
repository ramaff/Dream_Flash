function scr_B14_Bullet(damageamount, defenseamount) {
	if global.B[14] > 0 {
	    var bpow = damageamount - defenseamount;
		if instance_exists(other.bulletorigin) {
		    with(other.bulletorigin) {
		        var dmg = 5 + (global.B[14] * bpow * 4);
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
