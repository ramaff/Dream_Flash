function scr_W01() {
	// Teleport Before Position Change

	if global.W[1] > 0 {
		with instance_create((x + obj_Astral_Indicator.x) / 2,(y + obj_Astral_Indicator.y) / 2,obj_Warp_Slash_Effect) {
			size = sqrt(((obj_Astral_Indicator.x - x) * (obj_Astral_Indicator.x - x)) + ((obj_Astral_Indicator.y - y) * (obj_Astral_Indicator.y - y)));
			angle = point_direction(x,y,obj_Astral_Indicator.x,obj_Astral_Indicator.y);
		}
	
		with (obj_Boss_Parent) {
    
		    if collision_line(other.x,other.y,obj_Astral_Indicator.x,obj_Astral_Indicator.y,self,false,false) {
		        var _dmg = (30 + (global.W[01] * 30)) * (1 + global.teleportboost);
		        bosshealth -= _dmg;
            
				scr_setup_dmg_indicator(x,y, _dmg, c_white);
		    }
		}
	}


}
