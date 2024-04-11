function scr_Charged_Release() {

	    if Charge_Hold > 0 {
			
			current_weapon_stats = scr_Setup_Default_Weapon_Stats(weaponcharge)
			scr_Modify_Current_Weapon_Stats();
			//scr_Setup_Charge_Stats()
		
			//scr_Setup_Weapon_Stats();
			
			if Charge_Hold = 2 {
				scr_Ascending_Soul_Essence_Beam(weaponcharge);
			}
			
			current_weapon_stats.Shot_Speed += Charge_Speed;
			current_weapon_stats.Shot_Power += Charge_Power;
			current_weapon_stats.Shot_Knockback += Charge_Knockback;
			current_weapon_stats.Shot_Life_Span += Charge_Lifespan;
			
			current_weapon_stats.Shot_Trail_Area = current_weapon_stats.Shot_Trail_Area * (current_weapon_stats.Shot_Size + Charge_Size) / current_weapon_stats.Shot_Size;
			
			current_weapon_stats.Shot_Size += Charge_Size;
			
			if Charge_Hold = 2 {
				scr_Weapon_Use_List(weaponcharge)
			}
			
			if weaponcharge = 10 {
	        }
			if weaponcharge = 56 {
	        }
	        if weaponcharge = 110 {
	           current_weapon_stats.Shot_Crit_Chance = (current_weapon_stats.Shot_Power - 4) / 4;
	        }
	        if weaponcharge = 111 {
	        }
			if weaponcharge = 153 {
				current_weapon_stats.Shot_Shield_Power += current_weapon_stats.Shot_Power / 10;
	        }
			if weaponcharge = 212 {
				if current_weapon_stats.Shot_Power > 80 {
					current_weapon_stats.Shot_Screen_Shake = 7;	
				}
	        }
	        if weaponcharge = 312 {
				if current_weapon_stats.Shot_Power > 50 {
			        Shot_Stats.Shot_Extra_Stats[0] = {
			            Shot_Count: 1,
			            Shot_Extra_Hit_Frequency: 15,
			            Shot_Sprite: "spr_Adept_Bolt_Shot",
			            Shot_Power: Shot_Power / 8,
			            Shot_Speed: 1,
			            Shot_Acceleration: 0.6,
			            Shot_Life_Span: 60,
			            Shot_Homing_Type: 1,
			            Shot_Homing_Speed: 10,
			            Shot_Pierce: 1,
			            Shot_Size: 0.5
			        }
			        
				}
		
				current_weapon_stats.Weapon_Split_Visible = 1;
	        }
	        if weaponcharge = 405 {
	            //scr_Power_Gun_Use();
				if current_weapon_stats.Shot_Power > 100 {
					current_weapon_stats.Shot_Screen_Shake = 7;	
				}
	        }
	        if weaponcharge = 411 {
	            //scr_Forcefield_Charger_Use();
				if current_weapon_stats.Shot_Power > 100 {
					current_weapon_stats.Shot_Screen_Shake = 7;	
				}
	        }
	        if weaponcharge = 412 {
	            //scr_Energy_Bomb_Cannon_Use();
				current_weapon_stats.Shot_Burst_Power = current_weapon_stats.Shot_Power / 10;
	        }
			
			if Charge_Hold = 2 {
				
				exit;
			}
			
			scr_OC03(weaponcharge);
		
			scr_Shot_Creation();
			
			sWeaponTicker++;

			//weaponcharge = 0;
	    }
		
		if global.V[7] > 0 {
			scr_V07_Use();
		}
		



}
