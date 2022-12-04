function scr_W01() {
	// Teleport Before Position Change

	if global.W[1] > 0 {
		with instance_create((x + mouse_x) / 2,(y + mouse_y) / 2,obj_Warp_Slash_Effect) {
			size = sqrt(((mouse_x - x) * (mouse_x - x)) + ((mouse_y - y) * (mouse_y - y)));
			angle = point_direction(x,y,mouse_x,mouse_y);
		}
	
		with (obj_Boss_Parent) {
    
		    if collision_line(other.x,other.y,mouse_x,mouse_y,self,false,false) {
		        dmg = (30 + (global.W[01] * 30)) * (1 + global.teleportboost);
		        bosshealth -= dmg;
            
		        scr_Damage_Indicator(0, dmg, 2);
		    }
		}
	}


}
