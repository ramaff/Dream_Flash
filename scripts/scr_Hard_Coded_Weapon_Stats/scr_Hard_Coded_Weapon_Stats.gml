// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Hard_Coded_Weapon_Stats(cWP){
	
	switch(cWP) {
	
	    case 2:
	        //scr_Powered_Essence_Shot();
	        break;
	    case 3:
	        //scr_Heavy_Essence_Shot();
	        break;
	    case 4:
	        //scr_Light_Essence_Shot();
	        break;
	    case 5:
	        //scr_Piercing_Essence_Shot();
	        break;
	    case 6:
	        //scr_Dense_Essence_Shot();
	        break;
	    case 7:
	        //scr_Poison_Essence_Shot();
	        break;
	    case 8:
	        //scr_Multi_Essence_Shot();
	        break;
	    case 9:
	        //scr_Splitting_Essence_Shot();
	        break;
		case 10:
	        //scr_Charged_Essence_Shot();
	        break;
	    case 11:
	        //scr_Tomato_Shot();
	        break;
	    case 12:
	        //scr_Laser_Essence_Shot();
	        break;
	    case 13:
	        //scr_Hyper_Essence_Shot(true);
			barrage = true;
	        break;
	    case 14:
			
	        //scr_Essence_Beam_Shot();
	        break;
	    case 15:
	        //scr_Rain_Maker_Use();
			Shot_Speed += random(1);
	        break;
		case 16:
	        //scr_Rising_Spikes_Use(true);
			barrage = true;
	        break;
	    case 51:
			if sWeaponTicker mod 2 = 1 {
				Shot_Sprite = spr_New_Soul_Punch_Alt;
			}
	        //scr_Soul_Punch_Use();
	        break;
	    case 52:
			if sWeaponTicker mod 2 = 1 {
				Shot_Sprite = spr_New_Power_Whip_Alt;
			}
	       // scr_Power_Whip_Shot();
	        break;
	    case 53:
	       // scr_Dreamers_Blade_Use();
	        break;
	    case 54:
			if sWeaponTicker mod 2 = 1 {
				Shot_Sprite = spr_New_Soul_Strike_Alt;
			}
	        //scr_Soul_Strike_Use();
	        break;
    
	    ////////////////////////////////////////////////////////////////////
	    //////////////////Sharp and Solid Weapon Use////////////////////////
	    ////////////////////////////////////////////////////////////////////
    
	    case 101:
	        //scr_Rock_Toss_Use();
	        break;
	    case 102:
	       // scr_Bag_Of_Marbles_Use();
	        break;
	    case 103:
	        //scr_Flying_Disk_Use();
	        break;
	    case 104:
	        //scr_Shuriken_Use();
	        break;
	    case 105:
	        //scr_Spike_Ball_Use();
	        break;
	    case 106:
	        //scr_Boomerang_Blade_Use();
	        break;
	    case 107:
	       // scr_Spinning_Top_Use();
	        break;
	    case 108:
	       // scr_Sharp_Machine_Gun_Use();
	        break;
	    case 109:
	       // scr_Throwing_Knives_Use();
	        break;
	    case 110:
	      //  scr_Archery_Bow_Use();
	        break;
	    case 111:
	       // scr_Crossbow_Use();
	        break;
	    case 112:
	        //scr_Shield_Shot_Use();
			//scr_Pin_Use();
	        break;
			/*
	    case 113:
	        scr_Marble_Rifle_Use();
	        break;
			*/
	    case 113:
	     //   scr_Marble_Minigun_Use();
	        break;
	    case 114:
	      //  scr_Saw_Blade_Launcher_Use();
	        break;
		case 115:
			//scr_Paper_Airplane_Use();
			break;
	    case 116:
	     //   scr_Blow_Dart_Use();
	        break;
		case 117:
			//scr_Sharp_Shooter_Use();	
		  //  scr_Paper_Airplane_Use();
			break;
	    case 151:
	      //  scr_Knight_Blade_Use();
	        break;
		case 152:
	      // scr_Safety_Scissors_Use();
	        break;
		case 153:
	      //  scr_Dream_Striker_Use();
	        break;
    
	    ////////////////////////////////////////////////////////////////////
	    /////////////////////Explosive Weapon Use///////////////////////////
	    ////////////////////////////////////////////////////////////////////
    
	    case 201:
	    //    scr_Arm_Cannon_Use();
	        break;
	    case 202:
	       // scr_Snap_Pops_Use();
	        break;
	    case 203:
	       // scr_Missile_Launcher_Use();
	        break;
	    case 204:
	      //  scr_Big_Bombs_Use();
	        break;
	    case 205:
	      //  scr_Bombarder_Use();
	        break;
	    case 206:
	       // scr_Boss_Muncher_Use();
	        break;
	    case 207:
	      //  scr_Splodey_Seeds_Use();
	        break;
	    case 208:
	      //  scr_Stink_Bomb_Use();
	        break;
	    case 209:
	    //   scr_Firecracker_Launcher_Use();
	        break;
	    case 210:
	      //  scr_Pop_Gun_Use();
	        break;
	    case 211:
	        //scr_Bullet_Hell_Gun_Use(true);
			barrage = true;
	        break;
		case 212:
	     //  scr_Grenade_Use();
	        break;
	    case 213:
	     //   scr_Explosion_Machine_Use();
	        break;
		case 214:
	      //  scr_Frosty_Cannon_Use();
	        break;
	    case 215:
	    //    scr_Exploding_Sniper_Rifle_Use();
	        break;
    
    
	    ////////////////////////////////////////////////////////////////////
	    //////////////////////Magical Weapon Use////////////////////////////
	    ////////////////////////////////////////////////////////////////////
    
	    case 301:
	      //  scr_Magic_Bolt_Use();
	        break;
	    case 302:
	     //   scr_Charged_Bolt_Use();
	        break;
	    case 303:
	     //   scr_Fire_Ball_Use();
	        break;
	    case 304:
	     //   scr_Frost_Shard_Use();
	        break;
	    case 305:
	     //   scr_Lightning_Use();
	        break;
	    case 306:
	     //   scr_Magic_Twister_Use();
	        break;
	    case 307:
			Shot_Size += random(0.125);
	      //  scr_Magic_Bubbles_Use();
	        break;
	    case 308:
	      //  scr_Earth_Magic_Use();
	        break;
	    case 309:
	       // scr_Tide_Staff_Use();
	        break;
	    case 310:
	       // scr_Phase_Magic_Staff_Use();
	        break;
	    case 311:
	      //  scr_Magic_Shields_Use();
	        break;
	    case 312:
	    //    scr_Adept_Magic_Staff_Use();
	        break;
		case 313:
	     //   scr_Maw_Staff_Use();
	        break;
		case 314:
	      //  scr_Blade_Staff_Use();
	        break;
    
	    ////////////////////////////////////////////////////////////////////
	    ///////////////////////Energy Weapon Use////////////////////////////
	    ////////////////////////////////////////////////////////////////////
    
	    case 401:
	      //  scr_Energy_Ball_Use();
	        break;
	    case 402:
	      //  scr_Sparks_Use();
	        break;
	    case 403:
	        //scr_Laser_Barrage_Use(true);
			barrage = true;
	        break;
	    case 404:
	      //  scr_Plasma_Visor_Use();
	        break;
	    case 405:
	      //  scr_Power_Gun_Use();
	        break;
	    case 406:
	      //  scr_Bouncer_Gun_Use();
	        break;
	    case 407:
	    //    scr_Tesla_Coil_Use();
	        break;
	    case 408:
	     //  scr_Shock_Chain_Gun_Use();
	        break;
	    case 409:
	      //  scr_Charge_Rod_Use();
	        break;
	    case 410:
	     //   scr_Energy_Crystal_Use();
	        break;
	    case 411:
	     //   scr_Forcefield_Charger_Use();
	        break;
	    case 412:
	     //   scr_Energy_Bomb_Cannon_Use();
	        break;
		case 413:
	     //   scr_Guardian_Cannon_Use();
	        break;
		case 414:
	      //  scr_Dream_Cell_Use();
	        break;
    
	    case 501:
	   //     scr_Fleeting_Soul_Staff_Use();
			minion = true;
	        break;
	    case 502:
	    //    scr_Manifesting_Rod_Use();
			minion = true;
	        break;
			
		case 503:
	      //  scr_Battle_Flag_Use();
			minion = true;
	        break;
	    case 504:
	      //  scr_Anvil_Rod_Use();
			minion = true;
	        break;
		case 505:
	      //  scr_Drone_Soul_Remote_Use();
			minion = true;
	        break;
    
	    case 601:
	        scr_Healing_Essence_Use();
			spawnProjectile = false;
	        break;
		case 602:
	     //   scr_Protective_Barrier_Use();
	        break;
	    case 603:
			//spawnProjectile = !umbrellaActive;
	        break;
	    case 604:
	       // scr_Bounce_Forcefield_Use();
	        break;
		case 605:
			scr_Heart_Pick_Use();	
			spawnProjectile = false;
		    break;
		
		case 701:
			//scr_Cramming_Use();
			break;
	}
}