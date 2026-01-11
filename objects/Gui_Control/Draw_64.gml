var winx = camcon.window_scale * camcon.view_zoom * camera_get_view_width(view);
var winy = camcon.window_scale * camcon.view_zoom * camera_get_view_height(view);

draw_set_color(c_white);
if instance_exists(obj_Soul_Parent) {

	if global.soultransformedstate != "None" and scr_State_Recollection_Unlocked() {
		var spercent = 100 * (obj_Soul_Parent.sstatecharge / (obj_Soul_Parent.smaxstate));
	    if spercent < 0 {
	        spercent = 0;
	    }

		if spercent > 100 {
			spercent = 100;	
		}
	
		draw_sprite_ext(spr_State_Container,0,winx - 144,winy - 96,0.5,0.5,0,c_white,1);
		draw_sprite_part_ext(spr_State_Container,1,0,172 * (1 - ((spercent) / 100)),89,172,winx - 144, winy - 96 + (172 / 2) * (1 - ((spercent) / 100)),0.5,0.5,c_white,1);	
	}

    var epercent = 100 * (obj_Soul_Parent.senergy / (obj_Soul_Parent.smaxenergy + (1.25 * (global.soulessence + global.soulessenceTemp))));
    
	var _debt_percent = clamp(0 - epercent, 0, 100);
	if epercent < 0 {
        epercent = 0;
    }
	
    //draw_sprite(spr_Essence_Container,round(epercent / 3.7),winx - 32, winy - 40);
	var epercent1 = epercent;
	if epercent1 > 100 {
		epercent1 = 100;	
	}
	
	draw_sprite_ext(spr_Essence_Container,0,winx - 72,winy - 96,0.5,0.5,0,c_white,1);
	draw_sprite_part_ext(spr_Essence_Container,1,0,172 * (1 - ((epercent1) / 100)),89,172,winx - 72, winy - 96 + (172 / 2) * (1 - ((epercent1) / 100)),0.5,0.5,c_white,1);
	
	if _debt_percent > 0 {
		draw_sprite_part_ext(spr_Essence_Debt_Container,1,0,172 * (1 - (_debt_percent / 100)),89,172,winx - 72, winy - 96 + (172 / 2) * (1 - (_debt_percent / 100)),0.5,0.5,c_white,1);
	}
	
	var epercent2 = epercent;
	if epercent2 > 300 {
		epercent2 = 300;	
	}
	
	if epercent > 100 {
		draw_sprite_part_ext(spr_OverEssence_Container,1,0,172 * (1 - ((epercent2 - 100) / 200)),89,172,winx - 72, winy - 96 + (172 / 2) * (1 - ((epercent2 - 100) / 200)),0.5,0.5,c_white,1);
	}
	
	if epercent > 600 {
		epercent = 600;	
	}
	
	if epercent > 300 {
		draw_sprite_part_ext(spr_OverOverEssence_Container,1,0,172 * (1 - ((epercent - 300) / 300)),89,172,winx - 72, winy - 96 + (172 / 2) * (1 - ((epercent - 300) / 300)),0.5,0.5,c_white,1);
	}
	
    scr_Weapon_GUI(Soul_Weapons_Control.weapon_slot_info);

}

if !scr_Room_Leavable() {
    var totalbossnum = instance_number(obj_Main_Boss_Parent);
	totalbossnum -= instance_number(obj_Sandman_Thought);
	totalbossnum -= instance_number(obj_Veil_Mask);
	totalbossnum -= instance_number(obj_Dream_Crawler_Part);
	totalbossnum += instance_number(obj_The_Veil);
	totalbossnum += instance_number(obj_Soul_Collector);
	var cboss = 0;
	var _i = 0
	var _boss_health = []
	var _boss_max_health = []
	var _boss_phase = []
	
    for(_i = 0; _i < totalbossnum; _i++) {
        _boss_health[_i] = 0;
        _boss_max_health[_i] = 0;
		_boss_phase[_i] = 1;
    }
    with(obj_Main_Boss_Parent) {
		if object_index != obj_Sandman_Thought and object_index != obj_Veil_Mask and object_index != obj_Soul_Collector and object_index != obj_Dream_Crawler_Part {
			
			_boss_health[cboss] = bosshealth;
	        _boss_max_health[cboss] = bosstotalhealth;
			_boss_phase[cboss] = currentphase
	        cboss++;
		}
    }
	with(obj_The_Veil) {
        _boss_health[0] = bosshealth;
        _boss_max_health[0] = bossmaxhealth + bossmaxhealth2;
        cboss++;
    }
	with(obj_Soul_Collector) {
        _boss_health[0] = bosshealth + bossmaxhealth2;
        _boss_max_health[0] = bossmaxhealth + bossmaxhealth2;
        cboss++;
    }
	var barsize = 600;
	var barspr = spr_Boss_Heart;
	var i;
	if totalbossnum = 1 {
	    for(i = 0; i < totalbossnum; i++) {
	        var bpercent = (_boss_health[i] / _boss_max_health[i]);
       
			draw_sprite_ext(barspr,3,winx / 2 - (barsize / 4),winy - 60,0.5,0.5,0,c_white,1);
			draw_sprite_part_ext(barspr,_boss_phase[i] - 1,0,0,barsize * (bpercent),99,winx / 2 - (barsize / 4), winy - 60,0.5,0.5,c_white,1);
		}
	} else if totalbossnum = 2 {
		barsize = 400;
		barspr = spr_Boss_Heart_400;
		
		for(i = 0; i < totalbossnum; i++) {
	        var bpercent = (_boss_health[i] / _boss_max_health[i]);
       
			draw_sprite_ext(barspr,3,(winx / 2 - (barsize / 2 * (totalbossnum - 1)) + (barsize * i)) - (barsize / 4),winy - 60,0.5,0.5,0,c_white,1);
			draw_sprite_part_ext(barspr,_boss_phase[i] - 1,0,0,barsize * (bpercent),99,(winx / 2 - (barsize / 2 * (totalbossnum - 1)) + (barsize * i)) - (barsize / 4), winy - 60,0.5,0.5,c_white,1);
		}
	} else {
		barsize = 300;
		barspr = spr_Boss_Heart_300;
		
		for(i = 0; i < totalbossnum; i++) {
	        var bpercent = (_boss_health[i] / _boss_max_health[i]);
       
			draw_sprite_ext(barspr,3,(winx / 2 - (barsize / 2 * (totalbossnum - 1)) + (barsize * i)) - (barsize / 4),winy - 60,0.5,0.5,0,c_white,1);
			draw_sprite_part_ext(barspr,_boss_phase[i] - 1,0,0,barsize * (bpercent),99,(winx / 2 - (barsize / 2 * (totalbossnum - 1)) + (barsize * i)) - (barsize / 4), winy - 60,0.5,0.5,c_white,1);
		}
	}
} else {

    draw_set_font(Dream_Flash_Font);
    
    draw_set_halign(fa_center);
    
    scr_Mini_Map();
	
	if (keyboard_check(ord(global.gameMapExpand)) || InputCheck(INPUT_VERB.SPECIAL) ) and instance_number(obj_Map_Button) = 0 {
		scr_Mega_Map();
	}
	if !keyboard_check(ord(global.gameMapExpand)) and !InputCheck(INPUT_VERB.SPECIAL) {
		with(obj_Map_Button) {
			instance_destroy();
		}
	} else {
		draw_sprite(spr_Mega_Map,0,winx / 2,winy / 2)	
	}

    var _rm_type = global.floor[global.currentroom,0];
    
    if _rm_type = "Shop" {
        if global.currentchapter = 1 {
            draw_sprite_ext(spr_Soul_Flash,0,winx - 64,140,0.5,0.5,0,c_white,1);
            draw_text(winx - 64,156, string_hash_to_newline(string(global.soul_recall)));
        }
        if global.currentchapter = 2 {
            draw_sprite_ext(spr_Soul_Feel,0,winx - 64,140,0.5,0.5,0,c_white,1);
            draw_text(winx - 64,156, string_hash_to_newline(string(global.soul_recall)));
        }
        if global.currentchapter = 3 {
            draw_sprite_ext(spr_Soul_Dream,0,winx - 64,140,0.5,0.5,0,c_white,1);
            draw_text(winx - 64,156, string_hash_to_newline(string(global.soul_recall)));
        }
        if global.currentchapter = 4 {
            draw_sprite_ext(spr_Soul_Nightmare,0,winx - 64,140,0.5,0.5,0,c_white,1);
            draw_text(winx - 64,156, string_hash_to_newline(string(global.soul_recall)));
        }
    } else {
        if global.currentchapter = 1 {
            draw_sprite_ext(spr_Soul_Flash,0,winx - 64,140,0.5,0.5,0,c_white,1);
            draw_text(winx - 64,156, string_hash_to_newline(string(global.soul_recall)));
        }
        if global.currentchapter = 2 {
            draw_sprite_ext(spr_Soul_Feel,0,winx - 64,140,0.5,0.5,0,c_white,1);
            draw_text(winx - 64,156, string_hash_to_newline(string(global.soul_recall)));
        }
        if global.currentchapter = 3 {
            draw_sprite_ext(spr_Soul_Dream,0,winx - 64,140,0.5,0.5,0,c_white,1);
            draw_text(winx - 64,156, string_hash_to_newline(string(global.soul_recall)));
        }
		if global.currentchapter = 4 {
            draw_sprite_ext(spr_Soul_Nightmare,0,winx - 64,140,0.5,0.5,0,c_white,1);
            draw_text(winx - 64,156, string_hash_to_newline(string(global.soul_recall)));
        }
    }

}

