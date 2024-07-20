function scr_Weapon_GUI() {
	var winx = camcon.window_scale * camcon.view_zoom * camera_get_view_width(view);
	var winy = camcon.window_scale * camcon.view_zoom * camera_get_view_height(view);
	
	draw_sprite_ext(spr_Weapon_Template,0,45,winy - 48,0.5,0.5,0,c_white,1);
	draw_sprite_ext(spr_Weapon_Template,0,24,winy - 88,0.25,0.25,0,c_white,1);
	draw_sprite_ext(spr_Weapon_Template,0,65,winy - 88,0.25,0.25,0,c_white,1);
	
	var wspr = spr_Soul_Shot_Art;

	if global.weaponslots > 3 {
		draw_sprite_ext(spr_Weapon_Template,0,45,winy - 112,0.125,0.125,0,c_white,1);
	}
	
	var i = 0;
	var sc = 1;

	for(i = 0; i < global.weaponslots; i++) {

	    var weap = Soul_Weapons_Control.weapon[i,2];
		var ex = 0;
		var why = 0;
		if global.weaponslots = 3 { 
		    if (Soul_Weapons_Control.weapon[i,1] = 0 ) {
		        var ex = 45
		        var why = winy - 48
		        sc = 1;
		    }
		    if (Soul_Weapons_Control.weapon[i,1] = 1 ){
		        var ex = 24
		        var why = winy - 88
		        sc = 0.5;
		    }
		    if (Soul_Weapons_Control.weapon[i,1] = 2 ){
		        var ex = 66
		        var why = winy - 88
		        sc = 0.5;
		    }
		}
		if global.weaponslots > 3 {
			if (Soul_Weapons_Control.weapon[i,1] = 0 ) {
		        var ex = 45
		        var why = winy - 48
		        sc = 1;
		    }
		    if (Soul_Weapons_Control.weapon[i,1] = 1 ){
		        var ex = 24
		        var why = winy - 88
		        sc = 0.5;
		    }
		    if (Soul_Weapons_Control.weapon[i,1] = 3 ){
		        var ex = 66
		        var why = winy - 88
		        sc = 0.5;
		    }
			if (Soul_Weapons_Control.weapon[i,1] = 2 ) {
				var ex = 45
				var why = winy - 112
				sc = 0.25;
			}
		}
		sc = sc / 2;

    
    
	    if weap != 0 {
	        wspr = scr_Weapon_Sprite_List(weap, wspr);
            
	        draw_sprite_ext(wspr,0,ex,why,sc,sc,0,c_white,1);
	    }

	}



}
