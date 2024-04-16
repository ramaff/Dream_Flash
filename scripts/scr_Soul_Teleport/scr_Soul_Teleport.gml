// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_Soul_Teleport(_evasion = false){
	
	var _base_tele_delay = 120;
	
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
	
	var _xstar = x;
	var _ystar = y;
	
	TPCooldown = 30 + (30 * global.E[11]);
	
	var _xx = mouse_x;
	var _yy = mouse_y;
	
	if _evasion = true {
		var _new_pos = scr_V05_Evade(x, y);
		_xx = _new_pos[0]
		_yy = _new_pos[1]
	}
		
	var dist = point_distance(x,y, _xx, _yy);
	var dir = point_direction(x,y, _xx, _yy);
		
	for(var i = 0; i < 11; i++) {
		var cd = (dist / 10) * i;
		scr_Soul_Move_Particle(x + lengthdir_x(cd, dir), y + lengthdir_y(cd, dir), "Teleport");
	}
		
	scr_W04();
	scr_W05();
    
	if scr_State_Active_Check("Spike") {
		alarm[7] = 90;
		//image_xscale = 0;
		//image_yscale = 0;
		//size = 0;
		soul_underground = 90;
		soulinvincibility += 90;
		_base_tele_delay += 90
	} else if scr_State_Active_Check("Bleeding") {
		speed = 40;
		direction = dir;
		friction = speed / 45;
		soulinvincibility += 60;
		
	} else {
		x = _xx;
		y = _yy;
	}
	
	scr_W02(dir);
	scr_W03();
		
	//scr_Spike_Soul_Teleport(_xstar, _ystar);
	scr_Casting_Soul_Teleport();
	scr_Ascending_Soul_Teleport();
	
	scr_Sound_Effect(snd_Soul_Teleport);
    
	scr_E09();
	scr_E11();
	scr_D12_Activate();
	//scr_U03_Off();
    
	tdelay += (_base_tele_delay - tdelayconservation) / ((40 + global.soulperception + global.soulperceptionTemp) / 40) / (tdelayconservationfactor);
	senergy -= (30 - tenergyconservation) / ((40 + global.soulperception + global.soulperceptionTemp) / 40) / tenergyconservationfactor;
}