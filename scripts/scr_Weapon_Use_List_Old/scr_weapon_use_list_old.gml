

function scr_Weapon_Use_List_Old() {
	weapStop = 0;

	scr_C08();

	weaponCost = 0;
	weaponDelay = 0;
	
	cWP = global.currentweapon;
	
	var umbrellaActive = false;
	
	if cWP = 603 and instance_exists(obj_Umbrella_Shot) {
		umbrellaActive = true;
	}
	
	weapon_stats = scr_Load_Weapon_Stats();
	
	weaponCost = variable_struct_get(weapon_stats, string(cWP)).Essence;
	weaponDelay = variable_struct_get(weapon_stats, string(cWP)).Delay;
	show_debug_message("Weapon Cost: " + string(weaponCost) + ", Weapon Delay: " + string(weaponDelay))
	
	
	switch(cWP) {

		case 1: 
		    weaponCost = 4;
		    weaponDelay = 16;
		    break;
		case 2:
		    weaponCost = 9;
		    weaponDelay = 20;
		    break;
		case 3:
		    weaponCost = 18;
		    weaponDelay = 40;
		    break;
		case 4:
		    weaponCost = 3;
		    weaponDelay = 10;
		    break;
		case 5:
		    weaponCost = 6;
		    weaponDelay = 18;
		    break;
		case 6:
		    weaponCost = 10;
		    weaponDelay = 20;
		    break;
		case 7:
		    weaponCost = 14;
		    weaponDelay = 28;
		    break;
		case 8:
		    weaponCost = 12;
		    weaponDelay = 27;
		    break;
		case 9:
		    weaponCost = 12;
		    weaponDelay = 27;
		    break;
		case 10:
		    weaponCost = 10
		    weaponDelay = 21;
		    break;
		case 11:
		    weaponCost = 12;
		    weaponDelay = 23;
		    break;
		case 12:
		    weaponCost = 11;
		    weaponDelay = 22;
		    break;
		case 13:
		    weaponCost = 33;
		    weaponDelay = 52;
		    break;
		case 14:
		    weaponCost = 1.5;
		    weaponDelay = 1;
		    break;
		case 15:
		    weaponCost = 15;
		    weaponDelay = 28;
		    break;
		case 16:
		    weaponCost = 21;
		    weaponDelay = 42;
		    break;
		case 51:
		    weaponCost = 5;
		    weaponDelay = 18;
		    break;
		case 52:
		    weaponCost = 10;
		    weaponDelay = 18;
		    break;
		case 53:
		    weaponCost = 38;
		    weaponDelay = 54;
		    break;
		case 54:
		    weaponCost = 30;
		    weaponDelay = 54;
		    break;


		////////////////////////////////////////////////////////////////////
		//////////////////Sharp and Solid Weapon Use////////////////////////
		////////////////////////////////////////////////////////////////////

		case 101:
		    weaponCost = 5;
		    weaponDelay = 20;
		    break;
		case 102:
			/*
		    weaponCost = 9
		    weaponDelay = 20
			*/
			weaponCost = 21;
		    weaponDelay = 38;
		    break;
		case 103:
		    weaponCost = 15;
		    weaponDelay = 30;
		    break;
		case 104:
		    weaponCost = 14;
		    weaponDelay = 18;
		    break;
		case 105:
		    weaponCost = 27;
		    weaponDelay = 45;
		    break;
		case 106:
		    weaponCost = 24;
		    weaponDelay = 28;
		    break;
		case 107:
		    weaponCost = 16;
		    weaponDelay = 30;
		    break;
		case 108:
		    weaponCost = 10;
		    weaponDelay = 11;
		    break;
		case 109:
		    weaponCost = 18;
		    weaponDelay = 19;
		    break;
		case 110:
		    weaponCost = 10;
		    weaponDelay = 21;
		    break;
		case 111:
		    weaponCost = 16;
		    weaponDelay = 21;
		    break;
		case 112:
		    weaponCost = 23;
		    weaponDelay = 37;
		    break;
			/*
		case 113:
		    weaponCost = 24;
		    weaponDelay = 33;
		    break; */
		case 113:
		    weaponCost = 8;
		    weaponDelay = 8;
		    break;
		case 114:
		    weaponCost = 15;
		    weaponDelay = 20;
		    break;
		case 115:
		    weaponCost = 26;
		    weaponDelay = 39;
		    break;
		case 116:
		    weaponCost = 13;
		    weaponDelay = 20;
		    break;
		case 117:
		    weaponCost = 30;
		    weaponDelay = 39;
		    break;
		case 151:
		    weaponCost = 21;
		    weaponDelay = 33;
		    break;
		case 152:
		    weaponCost = 18;
		    weaponDelay = 24;
		    break;
		case 153:
		    weaponCost = 10;
		    weaponDelay = 10;
		    break;

		////////////////////////////////////////////////////////////////////
		/////////////////////Explosive Weapon Use///////////////////////////
		////////////////////////////////////////////////////////////////////

		case 201:
		    weaponCost = 10;
		    weaponDelay = 22;
		    break;
		case 202:
		    weaponCost = 7;
		    weaponDelay = 19;
		    break;
		case 203:
		    weaponCost = 14;
		    weaponDelay = 25;
		    break;
		case 204:
		    weaponCost = 35;
		    weaponDelay = 54;
		    break;
		case 205:
		    weaponCost = 15;
		    weaponDelay = 30;
		    break;
		case 206:
		    weaponCost = 25;
		    weaponDelay = 36;
		    break;
		case 207:
		    weaponCost = 33;
		    weaponDelay = 54;
		    break;
		case 208:
		    weaponCost = 17;
		    weaponDelay = 24;
		    break;
		case 209:
		    weaponCost = 13;
		    weaponDelay = 20;
		    break;
		case 210:
		    weaponCost = 13
		    weaponDelay = 17
		    break;
		case 211:
		    weaponCost = 53;
		    weaponDelay = 72;
		    break;
		case 213:
		    weaponCost = 38;
		    weaponDelay = 49;
		    break;
		case 214:
		    weaponCost = 25
		    weaponDelay = 25
		    break;
		case 215:
		    weaponCost = 40;
		    weaponDelay = 45;
		    break;

		////////////////////////////////////////////////////////////////////
		//////////////////////Magical Weapon Use////////////////////////////
		////////////////////////////////////////////////////////////////////

		case 301:
		    weaponCost = 6;
		    weaponDelay = 18;
		    break;
		case 302:
		    weaponCost = 9;
		    weaponDelay = 27;
		    break;
		case 303:
		    weaponCost = 11;
		    weaponDelay = 23;
		    break;
		case 304:
		    weaponCost = 21;
		    weaponDelay = 33;
		    break;
		case 305:
		    weaponCost = 16;
		    weaponDelay = 25;
		    break;
		case 306:
		    weaponCost = 25;
		    weaponDelay = 37;
		    break;
		case 307:
		    weaponCost = 6;
		    weaponDelay = 7;
		    break;
		case 308:
		    weaponCost = 31;
		    weaponDelay = 44;
		    break;
		case 309:
		    weaponCost = 18;
		    weaponDelay = 29;
		    break;
		case 310:
		    weaponCost = 15;
		    weaponDelay = 20;
		    break;
		case 311:
		    weaponCost = 30;
		    weaponDelay = 40;
		    break;
		case 313:
		    weaponCost = 28;
		    weaponDelay = 36;
		    break;
		case 314:
		    weaponCost = 30;
		    weaponDelay = 39;
		    break;

		////////////////////////////////////////////////////////////////////
		///////////////////////Energy Weapon Use////////////////////////////
		////////////////////////////////////////////////////////////////////

		case 401:
		    weaponCost = 10;
		    weaponDelay = 18;
		
		
			weaponCost -= 0.2 * (sWeaponWarmUp / 60);
			weaponDelay -= 0.8 * (sWeaponWarmUp / 60);
		    break;
		case 402:
		    weaponCost = 8;
		    weaponDelay = 21;
		    break;
		case 403:
		    weaponCost = 63;
		    weaponDelay = 90;
		    break;
		case 404:
		    weaponCost = 10;
		    weaponDelay = 12;
		
			weaponCost -= 0.4 * (sWeaponWarmUp / 60);
			weaponDelay -= 1 * (sWeaponWarmUp / 60);
		    break;
		case 405:
		    weaponCost = 16
		    weaponDelay = 12
		    break;
		case 406:
		    weaponCost = 13;
		    weaponDelay = 20;
		    break;
		case 407:
		    weaponCost = 5;
		    weaponDelay = 7;
		    break;
		case 408:
		    weaponCost = 18;
		    weaponDelay = 28;
		    break;
		case 409:
		    weaponCost = 11;
		    weaponDelay = 20;
		    break;
		case 410:
		    weaponCost = 9;
		    weaponDelay = 10;
		
			weaponCost -= 0.4 * (sWeaponWarmUp / 60);
			weaponDelay -= 1 * (sWeaponWarmUp / 60);
		    break;
		case 411:
		    weaponCost = 10
		    weaponDelay = 15
		    break;
		case 413:
		    weaponCost = 50;
		    weaponDelay = 55;
		    break;
		case 414:
		    weaponCost = 20;
		    weaponDelay = 30;
		    break;

		case 501:
		    weaponCost = 35
		    weaponDelay = 60
		    break;
		case 502:
		    weaponCost = 35
		    weaponDelay = 60
		    break;
		case 503:
		    weaponCost = 55
		    weaponDelay = 60
		    break;
		case 504:
		    weaponCost = 45
		    weaponDelay = 60
		    break;
		case 505:
		    weaponCost = 45;
		    weaponDelay = 60
		    break;


		case 601:
		    weaponCost = 9
		    weaponDelay = 3
		    break;
		case 602:
		    weaponCost = 45
		    weaponDelay = 45
		    break;
		case 603:
		    weaponCost = 30;
		    weaponDelay = 6;
			if umbrellaActive = true {
				weaponCost = 2; 
				weaponDelay = 6;
			}
		    break;
		case 604:
		    weaponCost = 40
		    weaponDelay = 45
		    break;
		case 605:
			weaponCost = 40
		    weaponDelay = 30
		    break; 
	
	}
	
	if weaponCost > 2 {
		weaponCost = ((weaponCost - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[global.currentweapon]) / 6)) 
	} else {
		weaponCost = ((weaponCost - (senergyconservation / 10)) / senergyconservationfactor / ((6 + global.Weap[global.currentweapon]) / 6)) 
	}
	weaponDelay = (weaponDelay - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[global.currentweapon]) / 6);	
	
	if weaponDelay <= 1 {
	    weaponDelay = 1;
	}

	////////////////////////////////////////////////////////////////////
	//////////////////////Imaginary Weapon Use//////////////////////////
	////////////////////////////////////////////////////////////////////

	scr_C12();

	scr_C14();

	if global.D10activate >= 1 {
		weaponCost = weaponCost * (1 + (0.5 * global.D10activate));
	}


	scr_E11_Weapon();

	weaponCost = weaponCost / (1 + ((global.soulperception + global.soulperceptionTemp) / 160));

	var lHalf = 0;

	if (global.L[1] > 0) {
		lHalf = scr_L01();	
		if lHalf = 1 {
			weaponDelay = weaponDelay / 1.25;
		}
	}
	
	if global.V06Overwhelm > (8 - global.V[6]) {
		weaponCost += weaponCost;
	}

	if senergy >= weapStop + weaponCost { 
	
		global.soulNoShoot = 0;
    
		switch(cWP) {
	
	    case 1:
	        scr_Lesser_Essence_Shot();
	        break;
	    case 2:
	        scr_Powered_Essence_Shot();
	        break;
	    case 3:
	        scr_Heavy_Essence_Shot();
	        break;
	    case 4:
	        scr_Light_Essence_Shot();
	        break;
	    case 5:
	        scr_Piercing_Essence_Shot();
	        break;
	    case 6:
	        scr_Dense_Essence_Shot();
	        break;
	    case 7:
	        scr_Poison_Essence_Shot();
	        break;
	    case 8:
	        scr_Multi_Essence_Shot();
	        break;
	    case 9:
	        scr_Splitting_Essence_Shot();
	        break;
		case 10:
	        scr_Charged_Essence_Shot();
	        break;
	    case 11:
	        scr_Tomato_Shot();
	        break;
	    case 12:
	        scr_Laser_Essence_Shot();
	        break;
	    case 13:
	        scr_Hyper_Essence_Shot(true);
	        break;
	    case 14:
	        scr_Essence_Beam_Shot();
	        break;
	    case 15:
	        scr_Rain_Maker_Use();
	        break;
		case 16:
	        scr_Rising_Spikes_Use(true);
	        break;
	    case 51:
	        scr_Soul_Punch_Use();
	        break;
	    case 52:
	        scr_Power_Whip_Shot();
	        break;
	    case 53:
	        scr_Dreamers_Blade_Use();
	        break;
	    case 54:
	        scr_Soul_Strike_Use();
	        break;
    
	    ////////////////////////////////////////////////////////////////////
	    //////////////////Sharp and Solid Weapon Use////////////////////////
	    ////////////////////////////////////////////////////////////////////
    
	    case 101:
	        scr_Rock_Toss_Use();
	        break;
	    case 102:
	        scr_Bag_Of_Marbles_Use();
	        break;
	    case 103:
	        scr_Flying_Disk_Use();
	        break;
	    case 104:
	        scr_Shuriken_Use();
	        break;
	    case 105:
	        scr_Spike_Ball_Use();
	        break;
	    case 106:
	        scr_Boomerang_Blade_Use();
	        break;
	    case 107:
	        scr_Spinning_Top_Use();
	        break;
	    case 108:
	        scr_Sharp_Machine_Gun_Use();
	        break;
	    case 109:
	        scr_Throwing_Knives_Use();
	        break;
	    case 110:
	        scr_Archery_Bow_Use();
	        break;
	    case 111:
	        scr_Crossbow_Use();
	        break;
	    case 112:
	        //scr_Shield_Shot_Use();
			scr_Pin_Use();
	        break;
			/*
	    case 113:
	        scr_Marble_Rifle_Use();
	        break;
			*/
	    case 113:
	        scr_Marble_Minigun_Use();
	        break;
	    case 114:
	        scr_Saw_Blade_Launcher_Use();
	        break;
		case 115:
			scr_Paper_Airplane_Use();
			break;
	    case 116:
	        scr_Blow_Dart_Use();
	        break;
		case 117:
			//scr_Sharp_Shooter_Use();	
		    scr_Paper_Airplane_Use();
			break;
	    case 151:
	        scr_Knight_Blade_Use();
	        break;
		case 152:
	        scr_Safety_Scissors_Use();
	        break;
		case 153:
	        scr_Dream_Striker_Use();
	        break;
    
	    ////////////////////////////////////////////////////////////////////
	    /////////////////////Explosive Weapon Use///////////////////////////
	    ////////////////////////////////////////////////////////////////////
    
	    case 201:
	        scr_Arm_Cannon_Use();
	        break;
	    case 202:
	        scr_Snap_Pops_Use();
	        break;
	    case 203:
	        scr_Missile_Launcher_Use();
	        break;
	    case 204:
	        scr_Big_Bombs_Use();
	        break;
	    case 205:
	        scr_Bombarder_Use();
	        break;
	    case 206:
	        scr_Boss_Muncher_Use();
	        break;
	    case 207:
	        scr_Splodey_Seeds_Use();
	        break;
	    case 208:
	        scr_Stink_Bomb_Use();
	        break;
	    case 209:
	        scr_Firecracker_Launcher_Use();
	        break;
	    case 210:
	        scr_Pop_Gun_Use();
	        break;
	    case 211:
	        scr_Bullet_Hell_Gun_Use(true);
	        break;
		case 212:
	        scr_Grenade_Use();
	        break;
	    case 213:
	        scr_Explosion_Machine_Use();
	        break;
		case 214:
	        scr_Frosty_Cannon_Use();
	        break;
	    case 215:
	        scr_Exploding_Sniper_Rifle_Use();
	        break;
    
    
	    ////////////////////////////////////////////////////////////////////
	    //////////////////////Magical Weapon Use////////////////////////////
	    ////////////////////////////////////////////////////////////////////
    
	    case 301:
	        scr_Magic_Bolt_Use();
	        break;
	    case 302:
	        scr_Charged_Bolt_Use();
	        break;
	    case 303:
	        scr_Fire_Ball_Use();
	        break;
	    case 304:
	        scr_Frost_Shard_Use();
	        break;
	    case 305:
	        scr_Lightning_Use();
	        break;
	    case 306:
	        scr_Magic_Twister_Use();
	        break;
	    case 307:
	        scr_Magic_Bubbles_Use();
	        break;
	    case 308:
	        scr_Earth_Magic_Use();
	        break;
	    case 309:
	        scr_Tide_Staff_Use();
	        break;
	    case 310:
	        scr_Phase_Magic_Staff_Use();
	        break;
	    case 311:
	        scr_Magic_Shields_Use();
	        break;
	    case 312:
	        scr_Adept_Magic_Staff_Use();
	        break;
		case 313:
	        scr_Maw_Staff_Use();
	        break;
		case 314:
	        scr_Blade_Staff_Use();
	        break;
    
	    ////////////////////////////////////////////////////////////////////
	    ///////////////////////Energy Weapon Use////////////////////////////
	    ////////////////////////////////////////////////////////////////////
    
	    case 401:
	        scr_Energy_Ball_Use();
	        break;
	    case 402:
	        scr_Sparks_Use();
	        break;
	    case 403:
	        scr_Laser_Barrage_Use(true);
	        break;
	    case 404:
	        scr_Plasma_Visor_Use();
	        break;
	    case 405:
	        scr_Power_Gun_Use();
	        break;
	    case 406:
	        scr_Bouncer_Gun_Use();
	        break;
	    case 407:
	        scr_Tesla_Coil_Use();
	        break;
	    case 408:
	        scr_Shock_Chain_Gun_Use();
	        break;
	    case 409:
	        scr_Charge_Rod_Use();
	        break;
	    case 410:
	        scr_Energy_Crystal_Use();
	        break;
	    case 411:
	        scr_Forcefield_Charger_Use();
	        break;
	    case 412:
	        scr_Energy_Bomb_Cannon_Use();
	        break;
		case 413:
	        scr_Guardian_Cannon_Use();
	        break;
		case 414:
	        scr_Dream_Cell_Use();
	        break;
    
	    case 501:
	        scr_Fleeting_Soul_Staff_Use();
	        break;
	    case 502:
	        scr_Manifesting_Rod_Use();
	        break;
		case 503:
	        scr_Battle_Flag_Use();
	        break;
	    case 504:
	        scr_Anvil_Rod_Use();
	        break;
		case 505:
	        scr_Drone_Soul_Remote_Use();
	        break;
    
	    case 601:
	        scr_Healing_Essence_Use();
	        break;
		case 602:
	        scr_Protective_Barrier_Use();
	        break;
	    case 603:
			if umbrellaActive = false {
				scr_Brainstorm_Umbrella_Use();
			}
	        break;
	    case 604:
	        scr_Bounce_Forcefield_Use();
	        break;
		case 605:
			scr_Heart_Pick_Use();	
		    break;
		
		case 701:
			scr_Cramming_Use();
			break;
		}
		
		scr_OC03();
		
		if obj_Soul_Parent.scurrentstate = "Bleeding" and cWP < 700 {
			scr_Bleeding_Blade_Use();
		}
    
	    senergy -= weaponCost / (1 + (global.U03boost / 2000));
	    sdelay += weaponDelay / ((160 + global.souldexterity + global.souldexterityTemp) / 160);
	    sWeaponUseFrame = 1;   
		//sWeaponTicker++;
		
		sWeaponWarmUp += weaponDelay * (2 + (300 / 180));
		
		scr_V07_Gain(weaponCost / 5);
		
		//scr_Soul_Stretch("Horizontal", 0.2);
		// set to 0 on weapon Switch

		
		scr_Soul_Attack_Think();
		
	
	}


}
