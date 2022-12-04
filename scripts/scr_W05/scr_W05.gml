function scr_W05() {
	// Teleport Before Position Change

	if global.W[5] > 0 and global.clarityBomb > 0 {
		
		scr_Screen_Shake(20, 14);
		
		//scr_Screen_Flash(7);
		
		scr_Disk_Effect(20, 1, c_white)
		scr_Disk_Effect(25, 1.25, c_white)
		scr_Disk_Effect(30, 1.5, c_white)
		
		with (obj_Boss_Parent) {
    
		    dmg = 50 * (1 + global.teleportboost);
		    bosshealth -= dmg;
            
		    scr_Damage_Indicator(0, dmg, 2);
		}
		
		with(obj_Bullet_Parent) {
		    bulletspeed = bulletspeed / 3;
		    speed = speed / 3;
				
			bulletpower -= 15;
			bulletsize = (bulletpower / bulletpowermax);
				
			if bulletsize < 0.05 {
				bulletsize = 0.05;	
			}
			if bulletpower < 1 {
				instance_destroy();	
			}
		   
		}
		
		
		global.clarityBomb--;
	}


}
