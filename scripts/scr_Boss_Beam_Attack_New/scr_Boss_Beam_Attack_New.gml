function scr_Boss_Beam_Attack_New(beamActive, beamOffest, beamFrame) {
	
	var beamseg = 1;
	//var curvedir = other.Shot_Beam_Curve * (-1 + random(2))
	
	dir = -(bullet_spread * (bullet_count - 1) / 2);
	beamdir = dir;
	bulletNum = 0;
		
	beamxx = lengthdir_x(-6, beamdir)
	beamyy = lengthdir_y(-6, beamdir)
		
	var splitsize = 40 * other.beamSize;
	var beamtotalsegs = 3;
	
	beamHit = argument[0];
	space = argument[1];
	
	var beamObj = obj_Beam_Bullet;
	if beamActive = "Dormant" {
		beamObj = obj_Beam_Show;	
	}
	
	var beamSpr = beam_sprite;
	var startSpr = beamSpr;
	var tipSpr = beamSpr;
	var beamPartColor = c_red;
        
	if beam_sprite = spr_Red_Beam {
		beamSpr = spr_Red_Beam;
		startSpr = spr_Red_Beam_Start;
		tipSpr = spr_Red_Beam_Tail;
	}
	
	if beam_sprite = spr_Green_Beam {
		beamSpr = spr_Green_Beam;
		startSpr = spr_Green_Beam_Start;
		tipSpr = spr_Green_Beam_Tail;
	}

	if beam_sprite = spr_Lightning_Beam {
		beamSpr = spr_Lightning_Beam;
		startSpr = spr_Lightning_Beam_Start;
		tipSpr = spr_Lightning_Beam_Tail;
			
		beamPartColor = make_color_rgb(255,212,0);
	}


	if beam_sprite = spr_Solid_Red_Beam {
		beamSpr = spr_Solid_Red_Beam;
		startSpr = spr_Solid_Red_Beam_Start;
		tipSpr = spr_Solid_Red_Beam_Tail;
	}

	if beam_sprite = spr_Arcane_Beam {
		beamSpr = spr_Arcane_Beam;
		startSpr = spr_Arcane_Beam_Start;
		tipSpr = spr_Arcane_Beam_Tail;
		beamPartColor = make_color_rgb(0,60,255);
	}

	if beam_sprite = spr_Hope_Beam {
		beamSpr = spr_Hope_Beam;
		startSpr = spr_Hope_Beam_Start;
		tipSpr = spr_Hope_Beam_Tail;
	}
    
	repeat(bullet_count) {
        
	    var angle = dir + (bullet_direction); // * ((40 + random(global.soulparanoia)) / 40);
	    var length = 0;
		
		if setbeamlength != 0 {
			length = setbeamlength;	
		}
        
	    if bossoffsetangle = 1 {
	        var offsetx = lengthdir_x(boss_xoffset,angle);
	        var offsety = lengthdir_y(boss_yoffset,angle);
	    } else {
	        var offsetx = boss_xoffset;
	        var offsety = boss_yoffset;
	    }
        
	    bossxx[boss_beam_num] = x + offsetx + lengthdir_x(16+space,angle);
	    bossyy[boss_beam_num] = y + offsety + lengthdir_y(16+space,angle);
        
	    //scr_Boss_Beam_Draw(angle,length);
		
		var trueBeamSize = other.beamSize + scr_Wave(0, 0.05, 0.25, 0);
		
		var beamPartNum = irandom(29);
		
		for(beamseg = 1; beamseg <= beamtotalsegs; beamseg++) {
			if beamseg = 1 {
				beamSpr = startSpr;	
				splitsize = 60 * trueBeamSize;
			} else if (beamseg = beamtotalsegs) {
				beamSpr = tipSpr;
			} else {
				beamSpr = beam_sprite;
				if beamseg > 1 {
					splitsize = 700;
				}
			}
			
			//beamSpr = beam_sprite;	
			
			with instance_create(bossxx[boss_beam_num] + beamxx,bossyy[boss_beam_num] + beamyy, beamObj) {
				scr_Bullet_Shoot_Properties();
				alarm[0] = 1;
	            //direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
				direction = angle;
				image_angle = direction;
				image_xscale = splitsize * 2;
				image_yscale = trueBeamSize;
				if (beamseg = 1 || (beamseg = beamtotalsegs)) {
					image_xscale = image_yscale;
				}
				speed = 0;
				image_index = beamFrame;
				sprite_index = beamSpr;
				
				tip = 0;
			}
			
			beamxx += lengthdir_x(splitsize, angle)
			beamyy += lengthdir_y(splitsize, angle)
			
			if (beamseg = beamtotalsegs - 1) {
				beamxx += lengthdir_x(splitsize - 20, angle)
				beamyy += lengthdir_y(splitsize - 20, angle)
			}
		}
		
		if /*(beamseg = beamPartNum) and*/ beamActive != "Dormant" {
			var dist = 20 + random(1300);
			var beampartxx = lengthdir_x(dist, angle)
			var beampartyy = lengthdir_y(dist, angle)
			with instance_create(bossxx[boss_beam_num] + beampartxx - 10 + random(20), bossyy[boss_beam_num] + beampartyy - 10 + random(20),obj_Weapon_Trail) {
		
				depth = other.depth + 2;
		
				sprite_index = spr_Soul_Big_Bit;

				size = trueBeamSize * (0.75 + random(0.25));
				image_xscale = size;
				image_yscale = size;
		
				life = 20 + random(10);
		
				image_blend = beamPartColor;
		
				alarm[0] = life;
					
				speed = 1 + random(2);
				direction = random(360);
			}
		}
			
	    boss_beam_num++
        
	    bulletNum++;
	    dir += bullet_spread;
		beamxx = lengthdir_x(-6, beamdir)
		beamyy = lengthdir_y(-6, beamdir)
	}

}
