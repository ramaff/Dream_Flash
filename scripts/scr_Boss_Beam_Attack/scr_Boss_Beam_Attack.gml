function scr_Boss_Beam_Attack() {
	    beamHit = argument[0];
	    space = argument[1];
    
	
	    dir = -(bullet_spread * (bullet_count - 1) / 2);
	    bulletNum = 0;
    
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
        
	        bossxs[boss_beam_num] = x + offsetx + lengthdir_x(16,angle);
	        bossys[boss_beam_num] = y + offsety + lengthdir_y(16,angle);
			/*
			if setbeamlength = 0 {
		        while((!collision_point(bossxx[boss_beam_num] + lengthdir_x(length,angle),bossyy[boss_beam_num] + lengthdir_y(length,angle),obj_The_Border,true,true) and length < 2400)) {
		            length += 256;
		        }
				while((collision_point(bossxx[boss_beam_num] + lengthdir_x(length,angle),bossyy[boss_beam_num] + lengthdir_y(length,angle),obj_The_Border,true,true) and length < 2400)) {
		            length -= 64;
		        }
				while((!collision_point(bossxx[boss_beam_num] + lengthdir_x(length,angle),bossyy[boss_beam_num] + lengthdir_y(length,angle),obj_The_Border,true,true) and length < 2400)) {
		            length += 16;
		        }
			}
			*/
			
			var beumX = bossxx[boss_beam_num];
			var beumY = bossyy[boss_beam_num];
			var segs = 0;
			
			if setbeamlength = 0 {
				for (length = 0; length < 2048; length++) {
					length += 63;
					segs++;
					if collision_point(beumX + lengthdir_x(length,angle),beumY + lengthdir_y(length,angle),obj_The_Border,false,true) {
						break;	
					}
					if segs > 39 {
						break;
					}
				}
			}
	        bossbeamlength[boss_beam_num] = length;
	        bossbeamangle[boss_beam_num] = angle;
        
	        finx[boss_beam_num] = bossxx[boss_beam_num] + lengthdir_x(length,angle);
	        finy[boss_beam_num] = bossyy[boss_beam_num] + lengthdir_y(length,angle);
        
	        //scr_Boss_Beam_Draw(angle,length);
        
	        if beamHit = "Active" {
        
	        with (obj_Soul_Parent) {
	            if collision_line(other.x,other.y,other.finx[other.boss_beam_num],other.finy[other.boss_beam_num],self,false,false) {
	                if soulinvincibility = 0 {
    
	                damageamount = other.bullet_power - (global.soulhope / 40) + (global.souldespair / 20) + (global.soulloathing / 15);
	                defenseamount = (sdefenseadd + sdefensebuffamount) + global.currentheartdefense + (global.soulvanity / 20) - (global.souldespair / 20);
	                defenseamount = defenseamount / 10;
                
	                scr_Soul_Damage_Calculation();
	                }
	            }
	        }
			with (obj_Figment_Parent) {
				if collision_line(other.x,other.y,other.finx[other.boss_beam_num],other.finy[other.boss_beam_num],self,false,false) {
	                if soulinvincibility = 0 {
    
	                damageamount = other.bullet_power - (global.soulhope / 40) + (global.souldespair / 20) + (global.soulloathing / 15);
	                defenseamount = (sdefenseadd + sdefensebuffamount) + global.currentheartdefense + (global.soulvanity / 20) - (global.souldespair / 20);
	                defenseamount = defenseamount / 10;
				
				
					shealth -= damageamount;
    
				    if shealth <= 0 {
				        instance_destroy();
				    }
	                }
	            }
			}
	        }
	        boss_beam_num++
        
	        bulletNum++;
	        dir += bullet_spread;
	    }



}
