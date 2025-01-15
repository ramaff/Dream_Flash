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
	
	scr_Beast_Soul_Teleport(x, y, _xx, _yy);
	
	if _evasion = true {
		var _new_pos = scr_V05_Evade(x, y);
		_xx = _new_pos[0]
		_yy = _new_pos[1]
	}
		
	var dist = point_distance(x,y, _xx, _yy);
	var dir = point_direction(x,y, _xx, _yy);
	var _angle_offset = -30
	var _angle_add = 30
	var _seg_dist = 40
	var _segs = floor(dist) / _seg_dist
	
	var _blend = make_color_rgb(255, 100, 255)
	var _red_amount = 255;
		
	for(var _i = 0; _i < _segs; _i++) {
		var cd = _seg_dist * _i;
		var _pxx = x + lengthdir_x(cd, dir + _angle_offset)
		var _pyy = y + lengthdir_y(cd, dir + _angle_offset)
		_angle_offset += _angle_add / _segs
		scr_Soul_Move_Particle(_pxx, _pyy, "Teleport", _blend);
		if _i mod 2 = 0 {
			with instance_create(_pxx, _pyy, obj_After_Image) {
				alarm[0] = 30 + (_i * 2)
				shrinking = false
				fading = true
				half_time = true;
				max_time = alarm[0];
				sprite_index = spr_The_Soul_Teleport_After_Image
				size = abs(other.image_xscale);
				image_xscale = size;
				image_yscale = size;
				image_blend = _blend
			}
		}
		_blend = make_color_rgb(_red_amount, 100, 255)
		_red_amount -= 160 / _segs
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