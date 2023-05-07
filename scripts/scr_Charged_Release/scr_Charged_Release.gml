function scr_Charged_Release() {

	    if Charge_Hold > 0 {
			
			scr_Default_Weapon_Stats();
			scr_Setup_Weapon_Stats()
			
			current_weapon_stats = variable_struct_get(global.weapon_stats, string(weaponcharge))
			scr_Setup_Charge_Stats()
			
			//scr_Default_Weapon_Stats();
		
			scr_Setup_Weapon_Stats();
			
			if Charge_Hold = 2 {
				scr_Ascending_Soul_Essence_Beam(weaponcharge);
			}
		
			//scr_Hard_Coded_Weapon_Stats(weaponcharge);
			
			Shot_Speed += Charge_Speed;
			Shot_Power += Charge_Power;
			Shot_Knockback += Charge_Knockback;
			Shot_Lifespan += Charge_Lifespan;
			Shot_Size += Charge_Size;
			
			if Charge_Hold = 2 {
				//Shot_Size = Charge_Size;	
				scr_Weapon_Use_List(weaponcharge)
			}
			
			if weaponcharge = 10 {
	            //scr_Charged_Essence_Shot();
	        }
			if weaponcharge = 56 {
	            //scr_Soul_Strike_Use();
	        }
	        if weaponcharge = 110 {
	           Shot_Crit_Chance = (Shot_Power - 4) / 4;
	        }
	        if weaponcharge = 111 {
	           // scr_Crossbow_Use();
	        }
			if weaponcharge = 153 {
	            //scr_Dream_Striker_Use();
				Shot_Shield_Power += Shot_Power / 10;
	        }
			if weaponcharge = 212 {
	            //scr_Grenade_Use();
				if Shot_Power > 80 {
					Shot_Screen_Shake = 7;	
				}
	        }
	        if weaponcharge = 312 {
	            //scr_Adept_Magic_Staff_Use();
				if Shot_Power > 50 {
					Shot_Extra_Hits[1] = 1;
					Shot_Extra_Hits_Sprite[1] = Shot_Duplicate_Sprite;
					Shot_Extra_Hit_Frequency[1] = 15;
					Shot_Extra_Hit_Power[1] = Shot_Power / 8;
					Shot_Extra_Hit_Speed[1] = 0;
					Shot_Extra_Hit_Lifespan[1] = 75;
					Shot_Extra_Hit_Homing[1] = 1;
					Shot_Extra_Hit_Homing_Speed[1] = 10;
					Shot_Extra_Hit_Pierce[1] = 1;
					Shot_Extra_Hit_Acceleration[1] = 0.6;
				}
		
				Weapon_Split_Visible = 1;
	        }
	        if weaponcharge = 405 {
	            //scr_Power_Gun_Use();
				if Shot_Power > 100 {
					Shot_Screen_Shake = 7;	
				}
	        }
	        if weaponcharge = 411 {
	            //scr_Forcefield_Charger_Use();
				if Shot_Power > 100 {
					Shot_Screen_Shake = 7;	
				}
	        }
	        if weaponcharge = 412 {
	            //scr_Energy_Bomb_Cannon_Use();
				Shot_Burst_Power = Shot_Power / 10;
	        }
			
			scr_OC03(weaponcharge);
		
			scr_Shot_Creation();

			//weaponcharge = 0;
	    }
		
		if global.V[7] > 0 {
			scr_V07_Use();
		}
		



}
