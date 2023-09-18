function scr_Charged_Release() {

	    if Charge_Hold > 0 {
			
			scr_Default_Weapon_Stats();
			scr_setup_weapon_stats()
			
			current_weapon_stats = variable_struct_get(global.weapon_stats, string(weaponcharge))
			scr_Setup_Charge_Stats()
			
			//scr_Default_Weapon_Stats();
		
			//scr_Setup_Weapon_Stats();
			
			if Charge_Hold = 2 {
				scr_Ascending_Soul_Essence_Beam(weaponcharge);
			}
		
			//scr_Hard_Coded_Weapon_Stats(weaponcharge);
			
			Shot_Speed += Charge_Speed;
			Shot_Power += Charge_Power;
			Shot_Knockback += Charge_Knockback;
			Shot_Lifespan += Charge_Lifespan;
			Shot_Size += Charge_Size;
			
			//Print_DF(Shot_Stats)
			//Print_DF(sprite_get_name(Shot_Sprite))
			
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
			        Shot_Stats.Shot_Extra_Stats[0] = {
			            Shot_Count: 1,
			            Shot_Extra_Hit_Frequency: 15,
			            Shot_Sprite: "spr_Adept_Bolt_Shot",
			            Shot_Power: Shot_Power / 8,
			            Shot_Speed: 1,
			            Shot_Acceleration: 0.6,
			            Shot_Lifespan: 60,
			            Shot_Homing_Type: 1,
			            Shot_Homing_Speed: 10,
			            Shot_Pierce: 1,
			            Shot_Size: 0.5
			        }
			        
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
