function scr_W01(_xx, _yy) {
	// Teleport Before Position Change

	if global.W[1] > 0 {
		with instance_create((x + _xx) / 2,(y + _yy) / 2,obj_Warp_Slash_Effect) {
			size = sqrt(((_xx - x) * (_xx - x)) + ((_yy - y) * (_yy - y)));
			angle = point_direction(x,y,_xx,_yy);
		}
	
		with (obj_Boss_Parent) {
    
		    if collision_line(other.x,other.y,_xx,_yy,self,false,false) {
		        var _dmg = (30 + (global.W[01] * 30)) * (1 + global.teleportboost);
		        bosshealth -= _dmg;
            
				scr_setup_dmg_indicator(x,y, _dmg, c_white);
		    }
		}
	}


}
