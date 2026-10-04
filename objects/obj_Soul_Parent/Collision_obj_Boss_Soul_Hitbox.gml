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
        
			scr_setup_dmg_indicator(other.bossid.x,other.bossid.y, cdam, c_white)
	    }
		
		hitType = "Boss";
    
	    var damageamount = other.bossid.bosscontactdamage + (global.soulloathing / 10);
	    var defenseamount = scr_Soul_Defense_Calc(id) + scontactdefenseadd
    
		damageamount = scr_B05_v2(damageamount, false);
	
		if global.A[11] > 0 {
			if (other.bossid.bosshealth < 0) {
				damageamount = 0;
			}
		}
	
	    if (damageamount > defenseamount) {
			//scr_B14_Boss(damageamount, defenseamount);
	        scr_Soul_Spirit_Check_Boss();
	    }
    	
	    scr_Soul_Damage_Calculation(damageamount, defenseamount);
		soulinvincibility += 5;
    
	    if global.currentheart < 0 {
	    if shealth <= 0 {
	        instance_destroy();
	    }
	    }
		
		if scr_State_Active_Check("Bleeding") and speed > 2 and soulinvincibility > 0 {
			exit;	
		}
	
		var i;
		i = point_direction(other.bossid.x, other.bossid.y, x, y);
		x += lengthdir_x(2, i);
		y += lengthdir_y(2, i);

	}
			
}

//}