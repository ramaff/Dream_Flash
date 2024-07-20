//if other.bossid.state = states.normal {
if instance_exists(other.bossid) and soul_underground <= 0 {
	
	if global.V[5] > 0 {
		var _evaded = scr_V05();
		if _evaded {
			exit;	
		}
	}

	if soulinvincibility <= 0 {
		
	    if (scontactdamage + scontactdamageadd) > 0 {
			
			var cdam = scontactdamage + scontactdamageadd
			var bspd = other.bossid.speed;
			
	        other.bossid.bosshealth -= cdam;
        
	        with instance_create(other.bossid.x,other.bossid.y,obj_Damage_Indicator) {
	            element = 0;
	            damageIndication = cdam;
	            textSize = 1;
	            direction = 90;
	            speed = 1 + (bspd / 6) + random(0.05)
	            friction = 0.01 + (bspd / 600)
	            alarm[0] = 30 + irandom(3);
	        }
	    }
		
		hitType = "Boss";
    
	    var damageamount = other.bossid.bosscontactdamage + (global.soulloathing / 10);
	    var defenseamount = (sdefenseadd + sdefensebuffamount + scontactdefenseadd) + global.currentheartdefense + scr_Class_Stat_Defense_Increase();
    
		if global.A[11] > 0 {
			if (other.bossid.bosshealth < 0) {
				damageamount = 0;
			}
		}
	
	    if (damageamount > defenseamount) {
	        //scr_B14_Boss();
	        scr_Soul_Spirit_Check_Boss();
	    }
    	
	    scr_Soul_Damage_Calculation(damageamount, defenseamount);
		soulinvincibility += 5;
    
	    if global.totalhearts <= 0 {
	    if shealth <= 0 {
	        instance_destroy();
	    }
	    }

	}
	
	if scr_State_Active_Check("Bleeding") and speed > 2 and soulinvincibility > 0 {
		exit;	
	}
	
	var i;
	i = point_direction(other.bossid.x, other.bossid.y, x, y);
	x += lengthdir_x(2, i);
	y += lengthdir_y(2, i);


	if sknockbackdefense < other.bossid.bossknockbackforce {
	    direction = other.bossid.direction;
	    speed = (other.bossid.bossknockbackforce - sknockbackdefense);
	    alarm[10] = 6;
	    scr_Knockback_Reactions();
	}
			
}

//}