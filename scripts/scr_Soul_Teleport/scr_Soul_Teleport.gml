function scr_Soul_Teleport() {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var xval = obj_Astral_Indicator.x - xv;
	var yval = obj_Astral_Indicator.y - yv;
	var inside = 0;
	var onsoul = 0;

	xstar = x;
	ystar = y;

	if abs(xval) < ((global.roomSizeX / 2) - abs(yval)) and abs(yval) < ((global.roomSizeY / 2) - abs(xval)) {
	    inside = 1;
	}
	
	if (point_distance(mouse_x, mouse_y, obj_Soul_Parent.x, obj_Soul_Parent.y) <= 80) and (obj_Soul_Parent.sstatecharge >= obj_Soul_Parent.smaxstate) {
		onsoul = 1;	
	}

	if inside = 1 {
	    soulfade = 15;
	    with instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_Soul_Linger) {
	        if other.image_index = 1 {
	            image_xscale = -1;
	        } 
	    }
    
	    scr_E14();
	
		scr_W01();
		
		scr_Snake_Soul_Teleport();
		scr_Beast_Soul_Teleport();
		scr_Mechanical_Teleport();
		scr_Bleeding_Teleport();
		scr_Scrub_Soul_Teleport();
	
		perX = x
		perY = y;
	
		TPCooldown = 30 + (30 * global.E[11]);
		
		var dist = point_distance(x,y,mouse_x,mouse_y);
		var dir = point_direction(x,y,mouse_x,mouse_y);
		
		for(var i = 0; i < 11; i++) {
			var cd = (dist / 10) * i;
			scr_Soul_Move_Particle(x + lengthdir_x(cd, dir), y + lengthdir_y(cd, dir), "Teleport");
		}
		
		scr_W04();
		scr_W05();
    
	    x = mouse_x;
	    y = mouse_y;
	
		scr_W02();
		scr_W03();
		
		scr_Spike_Soul_Teleport();
		scr_Casting_Soul_Teleport();
		scr_Ascending_Soul_Teleport();
	
		scr_Sound_Effect(sd_Soul_Teleport);
    
	    scr_E09();
	    scr_E11();
	    scr_D12_Activate();
		scr_U03_Off();
    
	    tdelay += (120 - tdelayconservation) / ((40 + global.soulperception + global.soulperceptionTemp) / 40) / (tdelayconservationfactor);
	    senergy -= (20 - tenergyconservation) / ((40 + global.soulperception + global.soulperceptionTemp) / 40) / tenergyconservationfactor;
	}
	if onsoul = 1 {
		scr_State_Power_Up();
	}


}
