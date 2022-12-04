function scr_Weapon_Memory(displayItemSprite = true) {
	recollectionSize = 0.5;
	recollectionExtraStats = "No Special Properties"
	recollectionSprite = spr_Recollection_Unknown_Weapon_Icon;
	
	//show_debug_message(string(itemVal))
	
	if variable_struct_exists(global.weapon_stats, string(itemVal)) {
		current_weapon_stats = variable_struct_get(global.weapon_stats, string(itemVal))
	} else {
		return	
	}
	
	//show_debug_message(string(current_weapon_stats))
	
	if variable_struct_exists(current_weapon_stats, "Name") {
		recollectionString = current_weapon_stats.Name
	}
	if global.recollectionWeap[itemVal] >= 1 || displayItemSprite {
		if variable_struct_exists(current_weapon_stats, "Recollection_Sprite") {
			recollectionSprite = asset_get_index(current_weapon_stats.Recollection_Sprite)
			if recollectionSprite = -1 {
				recollectionSprite = spr_Soul_Shot_Art;	
			}
		}
	}
	
	recollectionExtraStats = "You cannot remember"
	
	if global.recollectionWeap[itemVal] >= 1 {
		recollectionExtraStats = "No Special Properties"
		
		if variable_struct_exists(current_weapon_stats, "Shot_Power") {
			recollectionPower = current_weapon_stats.Shot_Power
		}
		if variable_struct_exists(current_weapon_stats, "Essence") {
			recollectionEssence = current_weapon_stats.Essence
		}
		if variable_struct_exists(current_weapon_stats, "Delay") {
			recollectionRecharge = current_weapon_stats.Delay
		}
		if variable_struct_exists(current_weapon_stats, "Shot_Speed") {
			recollectionSpeed = current_weapon_stats.Shot_Speed
		}
		if variable_struct_exists(current_weapon_stats, "Shot_Lifespan") {
			recollectionLifespan = current_weapon_stats.Shot_Lifespan
		}
		if variable_struct_exists(current_weapon_stats, "Shot_Accuracy") {
			recollectionAccuracy = current_weapon_stats.Shot_Accuracy
		}
		if variable_struct_exists(current_weapon_stats, "Extra_Stats") {
			recollectionExtraStats = current_weapon_stats.Extra_Stats
		}
		if variable_struct_exists(current_weapon_stats, "Description") {
			recollectionDescription = current_weapon_stats.Description
		}
		/*if variable_struct_exists(current_weapon_stats, "State_Extra_Stats") {
			if recollectionExtraStats != "No Special Properties" {
				recollectionExtraStats += " " + current_weapon_stats.State_Extra_Stats
			} else {
				recollectionExtraStats = current_weapon_stats.State_Extra_Stats
			}
		}*/
		state_description = scr_Add_State_Credit_To_Extra_Stat_Description(current_weapon_stats);
		if recollectionExtraStats != "No Special Properties" {
			recollectionExtraStats += " " + state_description
		} else {
			recollectionExtraStats = state_description
		}
	}
	
	/*
	if itemVal = 1 and global.recollectionWeap[1] >= 1 {
	    recollectionString = "Lesser Essence";
	    recollectionSprite = spr_Soul_Shot_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[1] >= 1 {
	        recollectionPower = 12.5;
	        recollectionEssence = 4;
	        recollectionRecharge = 16;
	        recollectionSpeed = 7.5;
	        recollectionLifespan = 75;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "No Special Properties";
	        recollectionDescription = "Using the power of your vivid imagination you are capable of creating projectiles made of pure essence! This essence is made up of the same things that make up your being.";
	    }
		if global.recollectionStateUnlocked = 1 {
			//recollectionExtraStats = " +1/2 Spike Credit";
		}
	}
	if itemVal = 2 and global.recollectionWeap[2] >= 1 {
	    recollectionString = "Power Essence";
	    recollectionSprite = spr_Power_Shot_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[2] >= 1 {
	        recollectionPower = 20;
	        recollectionEssence = 10;
	        recollectionRecharge = 20;
	        recollectionSpeed = 9;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "No Special Properties";
	        recollectionDescription = "Shoot Essence made of Powerfulness. Does big damage.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats = " +1/2 Spike Credit";
		}
	}
	if itemVal = 3 and global.recollectionWeap[3] >= 1 {
	    recollectionString = "Heavy Essence";
	    recollectionSprite = spr_Heavy_Shot_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[3] >= 1 {
	        recollectionPower = 50;
	        recollectionEssence = 20;
	        recollectionRecharge = 40;
	        recollectionSpeed = 6;
	        recollectionLifespan = 120;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Snowball Pierce";
	        recollectionDescription = "Very Slow but Powerful Essence.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit";
		}
	}
	if itemVal = 4 and global.recollectionWeap[4] >= 1 {
	    recollectionString = "Light Essence";
	    recollectionSprite = spr_Light_Shot_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[4] >= 1 {
	        recollectionPower = 10;
	        recollectionEssence = 5;
	        recollectionRecharge = 12;
	        recollectionSpeed = 5.5;
	        recollectionLifespan = 75;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "No Special Properties";
	        recollectionDescription = "Does low damage, but is easy and quick to think of!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats = " +1/2 Spike Credit";
		}
	}
	if itemVal = 5 and global.recollectionWeap[5] >= 1 {
	    recollectionString = "Piercing Essence";
	    recollectionSprite = spr_Piercing_Shot_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[6] >= 1 {
	        recollectionPower = 14;
	        recollectionEssence = 10;
	        recollectionRecharge = 20;
	        recollectionSpeed = 5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+1 Piercing Hit";
	        recollectionDescription = "You've thought of something that is pointy enough to pierce through multiple enemies at once!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit";
		}
	}
	if itemVal = 6 and global.recollectionWeap[6] >= 1 {
	    recollectionString = "Condensed Essence";
	    recollectionSprite = spr_Condensed_Shot_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[6] >= 1 {
	        recollectionPower = 24;
	        recollectionEssence = 12;
	        recollectionRecharge = 18;
	        recollectionSpeed = 6.5;
	        recollectionLifespan = 40;
	        recollectionAccuracy = -20;
	        recollectionExtraStats = "+Initial Momentum";
	        recollectionDescription = "Strong and Short lived. You condensed powerful thoughts into this essential shot!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit";
		}
	}
	if itemVal = 7 and global.recollectionWeap[7] >= 1 {
	    recollectionString = "Poison Essence";
	    recollectionSprite = spr_Poison_Shot_Art;
		recollectionSize = 0.5;
	        recollectionPower = 6;
	        recollectionEssence = 14;
	        recollectionRecharge = 25;
	        recollectionSpeed = 4.5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+4 Poison Damage";
	        recollectionDescription = "Poisonous thoughts put together into this weapon let it do damage over time. It's stackable too!";
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit +1/2 Snake Credit";
		}
	}
	if itemVal = 8 and global.recollectionWeap[8] >= 1 {
	    recollectionString = "Multi Essence";
	    recollectionSprite = spr_Multi_Shot_Art;
		recollectionSize = 0.5;
	        recollectionPower = 13;
	        recollectionEssence = 15;
	        recollectionRecharge = 21;
	        recollectionSpeed = 5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "x3 Spread Shot";
	        recollectionDescription = "Allows you to dish out three times as many shots at once for three times as much damage!";
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit";
		}
	}
	if itemVal = 9 and global.recollectionWeap[9] >= 1 {
	    recollectionString = "Splitting Essence";
	    recollectionSprite = spr_Splitting_Shot_Art;
		recollectionSize = 0.5;
	        recollectionPower = 12;
	        recollectionEssence = 12;
	        recollectionRecharge = 18;
	        recollectionSpeed = 5.5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+4 Way Splitting (50% Power)";
	        recollectionDescription = "Upon impact with foes, will split into 4 smaller projectiles that can damage other enemies!";
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit";
		}
	}
	if itemVal = 10 and global.recollectionWeap[10] >= 1 {
	    recollectionString = "Charged Essence";
	    recollectionSprite = spr_Charged_Shot_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[10] >= 1 {
	        recollectionPower = 110;
	        recollectionEssence = 60;
	        recollectionRecharge = 90;
	        recollectionSpeed = 9;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "Charged Attack";
	        recollectionDescription = "Flexible attack thought, can be rapidly shot, or held down for a stronger attack!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit";
		}
	}
	if itemVal = 11 and global.recollectionWeap[11] >= 1 {
	    recollectionString = "Tomatoes";
	    recollectionSprite = spr_Tomato_Art;
		recollectionSize = 0.5;
	        recollectionPower = 10;
	        recollectionEssence = 15;
	        recollectionRecharge = 25;
	        recollectionSpeed = 5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -15;
	        recollectionExtraStats = "+15 Splash Damage +2 Boss Vulnerability";
	        recollectionDescription = "Bring enemies down a peg, causing them to take more damage from all sources!";
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit";
		}
	}
	if itemVal = 12 and global.recollectionWeap[12] >= 1 {
	    recollectionString = "Laser Essence";
	    recollectionSprite = spr_Laser_Shot_Art;
		recollectionSize = 0.5;
	        recollectionPower = 18;
	        recollectionEssence = 14;
	        recollectionRecharge = 20;
	        recollectionSpeed = 0;
	        recollectionLifespan = 10;
	        recollectionAccuracy = -2;
	        recollectionExtraStats = "+100 Piercing Hits +Phasing";
	        recollectionDescription = "A ray of laser-ey essence capable of damaging everything in a line.";
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit +1/2 Snake Credit";
		}
	}
	if itemVal = 13 and global.recollectionWeap[13] >= 1 {
	    recollectionString = "Hyper Essence";
	    recollectionSprite = spr_Hyper_Shot_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[13] >= 1 {
	        recollectionPower = 13;
	        recollectionEssence = 44;
	        recollectionRecharge = 45;
	        recollectionSpeed = 13;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -20;
	        recollectionExtraStats = "x7 Barrage Shot";
	        recollectionDescription = "Unleash a barrage of super hyper essence capable of doing big damage!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit +1/2 Snake Credit";
		}
	}
	if itemVal = 14 and global.recollectionWeap[14] >= 1 {
	    recollectionString = "Essence Beam";
	    recollectionSprite = spr_Essence_Beam_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[14] >= 1 {
	        recollectionPower = 4;
	        recollectionEssence = 1.5;
	        recollectionRecharge = 1;
	        recollectionSpeed = 0;
	        recollectionLifespan = 1;
	        recollectionAccuracy = -0.1;
	        recollectionExtraStats = "+100 Piercing Hits +Phasing";
	        recollectionDescription = "A Solid Beam of pure essence, capable of dealing massive damage in a short period of time!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit +1/2 Snake Credit";
		}
	}
	if itemVal = 15 and global.recollectionWeap[15] >= 1 {
	    recollectionString = "Rainmaker";
	    recollectionSprite = spr_Rainmaker_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[15] >= 1 {
	        recollectionPower = 10;
	        recollectionEssence = 10;
	        recollectionRecharge = 9;
	        recollectionSpeed = 5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -20;
	        recollectionExtraStats = "+8 Way Shooting";
	        recollectionDescription = "Sad Cloud Weapondry shoots tears of sadness in all directions.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit";
		}
	}
	if itemVal = 16 and global.recollectionWeap[16] >= 1 {
	    recollectionString = "Rising Spikes";
	    recollectionSprite = spr_Rising_Spikes_Art;
		recollectionSize = 0.5;
	    recollectionPower = 16;
	    recollectionEssence = 22;
	    recollectionRecharge = 25;
	    recollectionSpeed = 0;
	    recollectionLifespan = 10;
	    recollectionAccuracy = -20;
	    recollectionExtraStats = "+5 Spike Landslide +Cursor Origin";
	    recollectionDescription = "Send up spikes from below to instantly damage bosses in a line. Feels pointy.";
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +Spike Credit";
		}
	}

	if itemVal = 51 and global.recollectionWeap[51] >= 1 {
	    recollectionString = "Soul Punches";
	    recollectionSprite = spr_Soul_Punches_Art;
		recollectionSize = 0.5;
	    recollectionPower = 20;
	    recollectionEssence = 9;
	    recollectionRecharge = 13;
	    recollectionSpeed = 0;
	    recollectionLifespan = 10;
	    recollectionAccuracy = -15;
	    recollectionExtraStats = "+Melee +5 Knockback";
	    recollectionDescription = "Get up close and beat up your imaginary foes.";
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit +1/2 Beast Credit";
		}
	}
	if itemVal = 52 and global.recollectionWeap[52] >= 1 {
	    recollectionString = "Power Whip";
	    recollectionSprite = spr_Power_Whip_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[52] >= 1 {
	        recollectionPower = 35;
	        recollectionEssence = 16;
	        recollectionRecharge = 14;
	        recollectionSpeed = 0;
	        recollectionLifespan = 12;
	        recollectionAccuracy = -25;
	        recollectionExtraStats = "+Melee +20 Piercing Hits +Phasing";
	        recollectionDescription = "A Strong Whip made out of pure power!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit +1/2 Beast Credit";
		}
	}
	if itemVal = 53 and global.recollectionWeap[53] >= 1 {
	    recollectionString = "Dreamer's Blade";
	    recollectionSprite = spr_Dreamers_Blade_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[53] >= 1 {
	        recollectionPower = 51;
	        recollectionEssence = 38;
	        recollectionRecharge = 45;
	        recollectionSpeed = 0;
	        recollectionLifespan = 12;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Melee +10 Piercing Hits +Phasing";
	        recollectionDescription = "Blade made of dreams that does heavy damage to your enemies.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit +1/2 Bleeding Credit";
		}
	}
	if itemVal = 54 and global.recollectionWeap[54] >= 1 {
	    recollectionString = "Soul Strike";
	    recollectionSprite = spr_Soul_Power_Strike_Art;
		recollectionSize = 0.5;
	    recollectionPower = 90;
	    recollectionEssence = 40;
	    recollectionRecharge = 40;
	    recollectionSpeed = 0;
	    recollectionLifespan = 10;
	    recollectionAccuracy = -15;
	    recollectionExtraStats = "+Unlimited Pierce +Massive Knockback";
	    recollectionDescription = "Unleash a powerful strike that will heavily damage your strongest enemies!";
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Spike Credit +1/2 Beast Credit";
		}
	}

	if itemVal = 101 and global.recollectionWeap[101] >= 1 {
	    recollectionString = "Rock Toss";
	    recollectionSprite = spr_Rock_Toss_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[101] >= 1 {
	        recollectionPower = 14;
	        recollectionEssence = 8;
	        recollectionRecharge = 24;
	        recollectionSpeed = 5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -20;
	        recollectionExtraStats = "+10% Critical Hit";
	        recollectionDescription = "Just a rock, depending on the angle you throw it there might be sharp parts.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}
	if itemVal = 102 and global.recollectionWeap[102] >= 1 {
	    recollectionString = "Bag of Marbles";
	    recollectionSprite = spr_Bag_Of_Marbles_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[102] >= 1 {
	        recollectionPower = 10;
	        recollectionEssence = 21;
	        recollectionRecharge = 38;
	        recollectionSpeed = 22.5;
	        recollectionLifespan = 90;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "x5 Shot +Bouncing";
	        recollectionDescription = "A bag full of colorful marbles. Some are red, some are blue.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}
	if itemVal = 103 and global.recollectionWeap[103] >= 1 {
	    recollectionString = "Flying Disk";
	    recollectionSprite = spr_Flying_Disk_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[103] >= 1 {
	        recollectionPower = 18;
	        recollectionEssence = 15;
	        recollectionRecharge = 30;
	        recollectionSpeed = 5.75;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Bullet Redirection +Extra Hits";
	        recollectionDescription = "A flying disk, capable of damaging multiple foes and sending fear into their hearts. Its also fun to play with.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}
	if itemVal = 104 and global.recollectionWeap[104] >= 1 {
	    recollectionString = "Shuriken";
	    recollectionSprite = spr_Shuriken_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[104] >= 1 {
	        recollectionPower = 11;
	        recollectionEssence = 14;
	        recollectionRecharge = 16;
	        recollectionSpeed = 9;
	        recollectionLifespan = 90;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+2 Way Shot +Homing";
	        recollectionDescription = "Shurikens that had hateful thoughts infused into them, allowing them to seek out targets to damage.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}
	if itemVal = 105 and global.recollectionWeap[105] >= 1 {
	    recollectionString = "Spike Ball";
	    recollectionSprite = spr_Spike_Ball_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[105] >= 1 {
	        recollectionPower = 38;
	        recollectionEssence = 27;
	        recollectionRecharge = 45;
	        recollectionSpeed = 8;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Bullet Crush +10 Armour Pierce";
	        recollectionDescription = "A really big pointy ball, rolls into your enemies and pushes them around!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}
	if itemVal = 106 and global.recollectionWeap[106] >= 1 {
	    recollectionString = "Boomerang Blade";
	    recollectionSprite = spr_Boomerang_Blade_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[106] >= 1 {
	        recollectionPower = 27;
	        recollectionEssence = 24;
	        recollectionRecharge = 28;
	        recollectionSpeed = 5.5;
	        recollectionLifespan = 120;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Rebound";
	        recollectionDescription = "Like most boomerangs, this blade will turn around mid flight to deal damage again!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}
	if itemVal = 107 and global.recollectionWeap[107] >= 1 {
	    recollectionString = "Spinning Top";
	    recollectionSprite = spr_Spinning_Top_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[107] >= 1 {
	        recollectionPower = 18;
	        recollectionEssence = 16;
	        recollectionRecharge = 30;
	        recollectionSpeed = 4.25;
	        recollectionLifespan = 300;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Bullet Redirection +Extra Hits";
	        recollectionDescription = "These spin in place and do extra damage to enemies, neat to look at as well!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}
	if itemVal = 108 and global.recollectionWeap[108] >= 1 {
	    recollectionString = "Sharpshooter";
	    recollectionSprite = spr_Sharp_Machine_Gun_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[108] >= 1 {
	        recollectionPower = 14;
	        recollectionEssence = 10;
	        recollectionRecharge = 11;
	        recollectionSpeed = 8.25;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Chance for Bleed";
	        recollectionDescription = "Weapon that shoots sharp objects really really fast.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}
	if itemVal = 109 and global.recollectionWeap[109] >= 1 {
	    recollectionString = "Throwing Knives";
	    recollectionSprite = spr_Throwing_Knives_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[109] >= 1 {
	        recollectionPower = 26;
	        recollectionEssence = 22;
	        recollectionRecharge = 19;
	        recollectionSpeed = 4.75;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+3 Bleed";
	        recollectionDescription = "Sharp and strong knives that will make your enemies bleed!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}
	if itemVal = 110 and global.recollectionWeap[110] >= 1 {
	    recollectionString = "Bow";
	    recollectionSprite = spr_Archery_Bow_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[110] >= 1 {
	        recollectionPower = 54;
	        recollectionEssence = 80;
	        recollectionRecharge = 120;
	        recollectionSpeed = 14;
	        recollectionLifespan = 200;
	        recollectionAccuracy = -2;
	        recollectionExtraStats = "+Charged Attack +Critical Hit Chance";
	        recollectionDescription = "Powerful Bow and Arrow that can be drawn for extra critical hit chance.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}
	if itemVal = 111 and global.recollectionWeap[111] >= 1 {
	    recollectionString = "Crossbow";
	    recollectionSprite = spr_Crossbow_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[111] >= 1 {
	        recollectionPower = 118;
	        recollectionEssence = 84;
	        recollectionRecharge = 60;
	        recollectionSpeed = 24;
	        recollectionLifespan = 150;
	        recollectionAccuracy = -2;
	        recollectionExtraStats = "Charged Attack +Critical Hit Chance";
	        recollectionDescription = "Powerful Crossbow that can be quickly drawn for extra critical hit chance.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}

	if itemVal = 112 and global.recollectionWeap[112] >= 1 {
	    recollectionString = "Pins";
	    recollectionSprite = spr_Pins_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[112] >= 1 {
	        recollectionPower = 9;
	        recollectionEssence = 23;
	        recollectionRecharge = 37;
	        recollectionSpeed = 12;
	        recollectionLifespan = 45;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Bullet Pinning +Bleed Chance";
	        recollectionDescription = "Throw a volley of pins at bosses that have a chance to make them bleed. Pins can also pin down incoming bullets.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}

	if itemVal = 113 and global.recollectionWeap[113] >= 1 {
	    recollectionString = "Marble Minigun";
	    recollectionSprite = spr_Marble_Minigun_Art;
		recollectionSize = 0.5;
	        recollectionPower = 8;
	        recollectionEssence = 10;
	        recollectionRecharge = 7;
	        recollectionSpeed = 9.5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+Double Helix Shot";
	        recollectionDescription = "Marble Minigun shoots marbles at an incredible speed!";
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}
	if itemVal = 114 and global.recollectionWeap[114] >= 1 {
	    recollectionString = "Saw Blade Launcher";
	    recollectionSprite = spr_Saw_Blade_Launcher_Art;
		recollectionSize = 0.5;
	        recollectionPower = 27;
	        recollectionEssence = 18;
	        recollectionRecharge = 19;
	        recollectionSpeed = 8.5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+1 Piercing Hit";
	        recollectionDescription = "Shoots razor sharp rotating saw blades.";
			if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}
	if itemVal = 115 and global.recollectionWeap[115] >= 1 {
		recollectionString = "Paper Airplane";
	    recollectionSprite = spr_Paper_Airplane_Art;
		recollectionSize = 0.5;
	    recollectionPower = 18;
	    recollectionEssence = 26;
	    recollectionRecharge = 39;
	    recollectionSpeed = 4;
	    recollectionLifespan = 0;
	    recollectionAccuracy = -10;
	    recollectionExtraStats = "+Continual 3 Way Paper Cuts";
	    recollectionDescription = "Homing paper airplane that shoots additional shots all across the battle field.";
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}
	if itemVal = 116 and global.recollectionWeap[116] >= 1 {
	    recollectionString = "Blow Dart";
	    recollectionSprite = spr_Blow_Dart_Art;
		recollectionSize = 0.5;
	        recollectionPower = 18;
	        recollectionEssence = 15;
	        recollectionRecharge = 20;
	        recollectionSpeed = 11;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+3 Poison +1 Piercing Hit";
	        recollectionDescription = "Shoots powerful blow darts that inflict damage over time.";
			
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Snake Credit +1/2 Bleeding Credit";
		}
	}
	if itemVal = 119 and global.recollectionWeap[119] >= 1 {
	    recollectionString = "Essence";
	}
	if itemVal = 151 and global.recollectionWeap[151] >= 1 {
	    recollectionString = "Warrior's Blade";
	    recollectionSprite = spr_Knight_Blade_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[151] >= 1 {
	        recollectionPower = 32;
	        recollectionEssence = 21;
	        recollectionRecharge = 25;
	        recollectionSpeed = 0;
	        recollectionLifespan = 7;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+Melee +Bullet Slash";
	        recollectionDescription = "Powerful Warrior's Blade that can destroy any bullets that it slashes!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +Bleeding Credit";
		}
	}
	if itemVal = 152 and global.recollectionWeap[152] >= 1 {
	    recollectionString = "Safety Scissors";
	    recollectionSprite = spr_Safety_Scissors_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[152] >= 1 {
	        recollectionPower = 21;
	        recollectionEssence = 18;
	        recollectionRecharge = 19;
	        recollectionSpeed = 0;
	        recollectionLifespan = 7;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+Melee +Bullet Slash +4 Bleed";
	        recollectionDescription = "Sharp Scissors that allow the soul to cut and inflict bleed to nearby enemies.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +Bleeding Credit";
		}
	}
	if itemVal = 153 and global.recollectionWeap[153] >= 1 {
	    recollectionString = "Dream Striker";
	    recollectionSprite = spr_Dream_Striker_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[153] >= 1 {
	        recollectionPower = 188;
	        recollectionEssence = 110;
	        recollectionRecharge = 120;
	        recollectionSpeed = 0;
	        recollectionLifespan = 7;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+Melee +Bullet Rebound";
	        recollectionDescription = "Strike your enemies, rebound any incoming bullets back at the enemy!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +Bleeding Credit";
		}
	}

	if itemVal = 201 and global.recollectionWeap[201] >= 1 {
	    recollectionString = "Arm Cannon";
	    recollectionSprite = spr_Arm_Cannon_Art;
	    if global.recollectionWeap[201] >= 1 {
	        recollectionPower = 20;
	        recollectionEssence = 13;
	        recollectionRecharge = 22;
	        recollectionSpeed = 4.5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -15;
	        recollectionExtraStats = "+15 Splash Damage";
	        recollectionDescription = "Shoot bombs out of this cannon, which is planted on your non-existent arm.";
	    }
	}
	if itemVal = 202 and global.recollectionWeap[202] >= 1 {
	    recollectionString = "Snap Pops";
	    recollectionSprite = spr_Snap_Pops_Art;
	    if global.recollectionWeap[202] >= 1 {
	        recollectionPower = 18;
	        recollectionEssence = 10;
	        recollectionRecharge = 19;
	        recollectionSpeed = 6;
	        recollectionLifespan = 60;
	        recollectionAccuracy = -20;
	        recollectionExtraStats = "+Initial Speed";
	        recollectionDescription = "Snap your fingers to shoot pure explosiveness!";
	    }
	}
	if itemVal = 203 and global.recollectionWeap[203] >= 1 {
	    recollectionString = "Missile Launcher";
	    recollectionSprite = spr_Missile_Launcher_Art;
	    if global.recollectionWeap[203] >= 1 {
	        recollectionPower = 24;
	        recollectionEssence = 17;
	        recollectionRecharge = 25;
	        recollectionSpeed = 5.5;
	        recollectionLifespan = 150;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+15 Splash Damage +Homing";
	        recollectionDescription = "Fast heat seeking missiles, pretty powerful!";
	    }
	}
	if itemVal = 204 and global.recollectionWeap[204] >= 1 {
	    recollectionString = "Big Bomb Cannon";
	    recollectionSprite = spr_Big_Bomb_Cannon_Art;
	    if global.recollectionWeap[204] >= 1 {
	        recollectionPower = 50;
	        recollectionEssence = 28;
	        recollectionRecharge = 40;
	        recollectionSpeed = 4;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -15;
	        recollectionExtraStats = "+45 Splash Damage +10 Stagger +10 Knockback";
	        recollectionDescription = "Big Bombs that have big knockback and also shake up the enemy.";
	    }
	}
	if itemVal = 205 and global.recollectionWeap[205] >= 1 {
	    recollectionString = "Bombarder";
	    recollectionSprite = spr_Bombarder_Art;
	    if global.recollectionWeap[205] >= 1 {
	        recollectionPower = 42;
	        recollectionEssence = 19;
	        recollectionRecharge = 30;
	        recollectionSpeed = 17.5;
	        recollectionLifespan = 40;
	        recollectionAccuracy = -15;
	        recollectionExtraStats = "+42 Splash Damage +Air Strike";
	        recollectionDescription = "Bombard an area of your choosing with these air strike bombs.";
	    }
	}
	if itemVal = 206 and global.recollectionWeap[206] >= 1 {
	    recollectionString = "Boss Munchers";
	    recollectionSprite = spr_Boss_Muncher_Art;
	    if global.recollectionWeap[206] >= 1 {
	        recollectionPower = 33;
	        recollectionEssence = 29;
	        recollectionRecharge = 37;
	        recollectionSpeed = 6;
	        recollectionLifespan = 180;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+15 Splash Damage +1 Piercing Hit +Extra Hits +Homing";
	        recollectionDescription = "These suckers will go after any nearby bosses and eat them up!";
	    }
	}
	if itemVal = 207 and global.recollectionWeap[207] >= 1 {
	    recollectionString = "Splodey Seeds";
	    recollectionSprite = spr_Splodey_Seeds_Art;
	    if global.recollectionWeap[207] >= 1 {
	        recollectionPower = 12;
	        recollectionEssence = 40;
	        recollectionRecharge = 54;
	        recollectionSpeed = 3.25;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -45;
	        recollectionExtraStats = "+8 Splash Damage +5 Extra Shots +Spread";
	        recollectionDescription = "Shoot multiple seeds that will sprout into explosions.";
	    }
	}
	
	if itemVal = 208 and global.recollectionWeap[208] >= 1 {
	    recollectionString = "Stink Bombs";
	    recollectionSprite = spr_Micro_Bomb_Cannon_Art;
	    if global.recollectionWeap[208] >= 1 {
	        recollectionPower = 15;
	        recollectionEssence = 12;
	        recollectionRecharge = 11;
	        recollectionSpeed = 7.5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -15;
	        recollectionExtraStats = "+8 Splash Damage";
	        recollectionDescription = "Unleashes a barrage of micro explosives!";
	    }
	}
	if itemVal = 209 and global.recollectionWeap[209] >= 1 {
	    recollectionString = "Firecrackers";
	    recollectionSprite = spr_Firecracker_Launcher_Art;
	    if global.recollectionWeap[209] >= 1 {
	        recollectionPower = 16;
	        recollectionEssence = 15;
	        recollectionRecharge = 19;
	        recollectionSpeed = 8.3;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -20;
	        recollectionExtraStats = "+14 Splash Damage +Fire Drop";
	        recollectionDescription = "Firecracker explodes into fire which does additional damage.";
	    }
	}
	if itemVal = 210 and global.recollectionWeap[210] >= 1 {
	    recollectionString = "Pop Gun";
	    recollectionSprite = spr_Pop_Gun_Art;
	    if global.recollectionWeap[210] >= 1 {
	        recollectionPower = 16;
	        recollectionEssence = 13;
	        recollectionRecharge = 17;
	        recollectionSpeed = 7.5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -15;
	        recollectionExtraStats = "+Bullet Shove";
	        recollectionDescription = "Pop Gun shoots rounds that explode into popcorn which can block incoming bullets.";
	    }
	}
	if itemVal = 211 and global.recollectionWeap[211] >= 1 {
	    recollectionString = "Bullet Hell Gun";
	    recollectionSprite = spr_Semi_Auto_Rifle_Art;
	    if global.recollectionWeap[211] >= 1 {
	        recollectionPower = 10;
	        recollectionEssence = 75;
	        recollectionRecharge = 66;
	        recollectionSpeed = 8.5;
	        recollectionLifespan = 90;
	        recollectionAccuracy = -15;
	        recollectionExtraStats = "+3 Knockback";
	        recollectionDescription = "Unloads a swarm of bullets.";
	    }
	}
	if itemVal = 212 and global.recollectionWeap[212] >= 1 {
	    recollectionString = "Grenade";
	    recollectionSprite = spr_Grenade_Art;
		recollectionSize = 0.5;
	    recollectionPower = 145;
	    recollectionEssence = 90;
	    recollectionRecharge = 120;
	    recollectionSpeed = 25;
	    recollectionLifespan = 50;
	    recollectionAccuracy = -10;
	    recollectionExtraStats = "+Charged Attack +50% Splash Damage";
	    recollectionDescription = "Extremely powerful explosive device, flies much further the longer you charge it.";
	}
	if itemVal = 213 and global.recollectionWeap[213] >= 1 {
	    recollectionString = "Explosion Machine";
	    recollectionSprite = spr_Explosion_Machine_Art;
	    if global.recollectionWeap[213] >= 1 {
	        recollectionPower = 23;
	        recollectionEssence = 43;
	        recollectionRecharge = 49;
	        recollectionSpeed = 3;
	        recollectionLifespan = 300;
	        recollectionAccuracy = -15;
	        recollectionExtraStats = "+3 Extra Shots +4 Pierce +Extra Hits";
	        recollectionDescription = "Shoots massive balls of explosiveness that can pierce through foes and hit them several times.";
	    }
	}
	if itemVal = 214 and global.recollectionWeap[214] >= 1 {
	    recollectionString = "Frosty Cannon";
	    recollectionSprite = spr_Frosty_Cannon_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[214] >= 1 {
	        recollectionPower = 23;
	        recollectionEssence = 25;
	        recollectionRecharge = 25;
	        recollectionSpeed = 4.75;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -15;
	        recollectionExtraStats = "+23 Splash Damage +50% Freeze for 2 Seconds";
	        recollectionDescription = "Freezes enemies in a radius.";
	    }
	}
	if itemVal = 215 and global.recollectionWeap[215] >= 1 {
	    recollectionString = "Exploding Sniper Rifle";
	    recollectionSprite = spr_Exploding_Sniper_Rifle_Art;
		recollectionSize = 0.5;
	    recollectionPower = 60;
	    recollectionEssence = 49;
	    recollectionRecharge = 38;
	    recollectionSpeed = 99;
	    recollectionLifespan = 0;
	    recollectionAccuracy = -10;
	    recollectionExtraStats = "+Piercing Snipe +Explosions";
	    recollectionDescription = "Pierces through all enemies in a straight line, so powerful that it causes explosions at impact zones! ";
	}
	if itemVal = 216 and global.recollectionWeap[216] >= 1 {
	    recollectionString = "Laser Essence";
	}
	if itemVal = 217 and global.recollectionWeap[217] >= 1 {
	    recollectionString = "Wave Essence";
	}
	if itemVal = 218 and global.recollectionWeap[218] >= 1 {
	    recollectionString = "Helix Essence";
	}
	if itemVal = 219 and global.recollectionWeap[219] >= 1 {
	    recollectionString = "Essence";
	}
	if itemVal = 220 and global.recollectionWeap[220] >= 1 {
	    recollectionString = "Essence Beam";
	}

	if itemVal = 301 and global.recollectionWeap[301] >= 1 {
	    recollectionString = "Magic Bolt Staff";
	    recollectionSprite = spr_Magic_Bolt_Art;
	    if global.recollectionWeap[301] >= 1 {
	        recollectionPower = 16;
	        recollectionEssence = 9;
	        recollectionRecharge = 21;
	        recollectionSpeed = 5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Slight Homing";
	        recollectionDescription = "Shoots basic magic at your enemies.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Casting Credit";
		}
	}
	if itemVal = 302 and global.recollectionWeap[302] >= 1 {
	    recollectionString = "Charged Bolt Staff";
	    recollectionSprite = spr_Charged_Bolt_Art;
	    if global.recollectionWeap[302] >= 1 {
	        recollectionPower = 24;
	        recollectionEssence = 12;
	        recollectionRecharge = 27;
	        recollectionSpeed = 5;
	        recollectionLifespan = 150;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+2 Piercing Hits +Homing";
	        recollectionDescription = "Charged magic is stronger than regular magic because it seeks to hit more.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Casting Credit";
		}
	}
	if itemVal = 303 and global.recollectionWeap[303] >= 1 {
	    recollectionString = "Fire Balls";
	    recollectionSprite = spr_Fire_Ball_Art;
	    if global.recollectionWeap[303] >= 1 {
	        recollectionPower = 18;
	        recollectionEssence = 14;
	        recollectionRecharge = 23;
	        recollectionSpeed = 6;
	        recollectionLifespan = 90;
	        recollectionAccuracy = -15;
	        recollectionExtraStats = "+3 Fire Damage";
	        recollectionDescription = "Does magic damage and then sets those enemies on fire.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Casting Credit";
		}
	}
	if itemVal = 304 and global.recollectionWeap[304] >= 1 {
	    recollectionString = "Frost Magic";
	    recollectionSprite = spr_Frost_Shard_Art;
	    if global.recollectionWeap[304] >= 1 {
	        recollectionPower = 30;
	        recollectionEssence = 25;
	        recollectionRecharge = 30;
	        recollectionSpeed = 6.5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "25% Chance for Freeze +3 Way Splitting";
	        recollectionDescription = "Frost magic explodes into frost Shards which do big damage, and can slow bosses down!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Casting Credit";
		}
	}
	if itemVal = 305 and global.recollectionWeap[305] >= 1 {
	    recollectionString = "Lightning Staff";
	    recollectionSprite = spr_Lightning_Art;
	    if global.recollectionWeap[305] >= 1 {
	        recollectionPower = 21;
	        recollectionEssence = 16;
	        recollectionRecharge = 25;
	        recollectionSpeed = 4;
	        recollectionLifespan = 15;
	        recollectionAccuracy = -15;
	        recollectionExtraStats = "+30 Piercing Hits +Phasing";
	        recollectionDescription = "Strike your foes with magical lightning!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Casting Credit";
		}
	}
	if itemVal = 306 and global.recollectionWeap[306] >= 1 {
	    recollectionString = "Twister Staff";
	    recollectionSprite = spr_Magic_Twister_Art;
	    if global.recollectionWeap[306] >= 1 {
	        recollectionPower = 18;
	        recollectionEssence = 22;
	        recollectionRecharge = 37;
	        recollectionSpeed = 3.6;
	        recollectionLifespan = 150;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+3 Knockback +3 Piercing Hits +Extra Hits";
	        recollectionDescription = "Does continous twisting damage, also has big knockback power!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Casting Credit";
		}
	}
	if itemVal = 307 and global.recollectionWeap[307] >= 1 {
	    recollectionString = "Magic Bubbles";
	    recollectionSprite = spr_Magic_Bubbles_Art;
	    if global.recollectionWeap[307] >= 1 {
	        recollectionPower = 7.5;
	        recollectionEssence = 6;
	        recollectionRecharge = 6;
	        recollectionSpeed = 2.45;
	        recollectionLifespan = 300;
	        recollectionAccuracy = -33;
	        recollectionExtraStats = "+Bullet Blocking +Homing";
	        recollectionDescription = "Magic Bubbles have defensive and offensive capabilites!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Casting Credit";
		}
	}
	if itemVal = 308 and global.recollectionWeap[308] >= 1 {
	    recollectionString = "Earth Rune";
	    recollectionSprite = spr_Earth_Magic_Art;
	    if global.recollectionWeap[308] >= 1 {
	        recollectionPower = 30;
	        recollectionEssence = 31;
	        recollectionRecharge = 44;
	        recollectionSpeed = 2.7;
	        recollectionLifespan = 300;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Aura Hits +Homing";
	        recollectionDescription = "Earth Rune is surrounded by an aura which does big damage and can pierce through multiple enemies.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Casting Credit";
		}
	}
	if itemVal = 309 and global.recollectionWeap[309] >= 1 {
	    recollectionString = "Washing Tides";
	    recollectionSprite = spr_Tide_Staff_Art;
	    if global.recollectionWeap[309] >= 1 {
	        recollectionPower = 9;
	        recollectionEssence = 18;
	        recollectionRecharge = 29;
	        recollectionSpeed = 7.5;
	        recollectionLifespan = 60;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "x3 Shots +Bullet Pushback +1 Armour Tearing";
	        recollectionDescription = "Shoot waves that deal strong magic damage, and can destroy boss armour.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Casting Credit";
		}
	}
	if itemVal = 310 and global.recollectionWeap[310] >= 1 {
	    recollectionString = "Phase Magic";
	    recollectionSprite = spr_Phase_Magic_Staff_Art;
	    if global.recollectionWeap[310] >= 1 {
	        recollectionPower = 18;
	        recollectionEssence = 17;
	        recollectionRecharge = 20;
	        recollectionSpeed = 6.5;
	        recollectionLifespan = 250;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Extra Hits +Room Looping";
	        recollectionDescription = "High Level Magic that can loop through the sides of the dreamscape to do more damage.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Casting Credit";
		}
	}
	if itemVal = 311 and global.recollectionWeap[311] >= 1 {
	    recollectionString = "Magic Shields";
	    recollectionSprite = spr_Magic_Shields_Art;
	    if global.recollectionWeap[311] >= 1 {
	        recollectionPower = 15;
	        recollectionEssence = 30;
	        recollectionRecharge = 39;
	        recollectionSpeed = 2.5;
	        recollectionLifespan = 600;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "x4 Orbital Shot +Bullet Blocking +No Damage Potential";
	        recollectionDescription = "Magic Shields orbit the soul, protecting it from damage sources.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +Casting Credit";
		}
	}
	if itemVal = 312 and global.recollectionWeap[312] >= 1 {
	    recollectionString = "Adept Staff";
	    recollectionSprite = spr_Adept_Staff_Art;
	    if global.recollectionWeap[312] >= 1 {
	        recollectionPower = 68;
	        recollectionEssence = 139;
	        recollectionRecharge = 120;
	        recollectionSpeed = 6.5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -25;
	        recollectionExtraStats = "+Charged Attack +Homing x2 Multi Shot +Recursive Shooting";
	        recollectionDescription = "One of the most adept forms of magic can be generated using this staff! Charge up to deal massive damage to any foe.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Casting Credit";
		}
	}
	if itemVal = 313 and global.recollectionWeap[313] >= 1 {
	    recollectionString = "Boss Maw";
	    recollectionSprite = spr_Maw_Staff_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[313] >= 1 {
	        recollectionPower = 40;
	        recollectionEssence = 29;
	        recollectionRecharge = 36;
	        recollectionSpeed = 0;
	        recollectionLifespan = 10;
	        recollectionAccuracy = -25;
	        recollectionExtraStats = "+Bite Attack +5% Life Drain";
	        recollectionDescription = "Takes a chunk out of bosses and restores your health proportional to the damage dealt.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +Beast Credit +1/2 Casting Credit";
		}
	}
	if itemVal = 314 and global.recollectionWeap[314] >= 1 {
	    recollectionString = "Blade Staff";
	    recollectionSprite = spr_Rising_Blades_Art;
		recollectionSize = 0.5;
	    recollectionPower = 58;
	    recollectionEssence = 33;
	    recollectionRecharge = 30;
	    recollectionSpeed = 0;
	    recollectionLifespan = 10;
	    recollectionAccuracy = -10;
	    recollectionExtraStats = "+20 Pierce +Cursor Origins";
	    recollectionDescription = "Summons twin blades infused with magic from the ground.";
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Casting Credit +1/2 Spike Credit";
		}
	}
	if itemVal = 315 and global.recollectionWeap[315] >= 1 {
	    recollectionString = "Weakening Essence";
	}
	if itemVal = 316 and global.recollectionWeap[316] >= 1 {
	    recollectionString = "Laser Essence";
	}
	if itemVal = 317 and global.recollectionWeap[317] >= 1 {
	    recollectionString = "Wave Essence";
	}
	if itemVal = 318 and global.recollectionWeap[318] >= 1 {
	    recollectionString = "Helix Essence";
	}
	if itemVal = 319 and global.recollectionWeap[319] >= 1 {
	    recollectionString = "Essence";
	}
	if itemVal = 320 and global.recollectionWeap[320] >= 1 {
	    recollectionString = "Essence Beam";
	}

	if itemVal = 401 and global.recollectionWeap[401] >= 1 {
	    recollectionString = "Energy Ball";
	    recollectionSprite = spr_Energy_Ball_Art;
	    if global.recollectionWeap[401] >= 1 {
	        recollectionPower = 15;
	        recollectionEssence = 10;
	        recollectionRecharge = 17;
	        recollectionSpeed = 5.5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -15;
	        recollectionExtraStats = "+Weapon Flow";
	        recollectionDescription = "Basic Energy ball, pretty energetic.";
	    }
	}
	if itemVal = 402 and global.recollectionWeap[402] >= 1 {
	    recollectionString = "Connective Sparks";
	    recollectionSprite = spr_Sparks_Art;
	    if global.recollectionWeap[402] >= 1 {
	        recollectionPower = 18;
	        recollectionEssence = 11;
	        recollectionRecharge = 21;
	        recollectionSpeed = 4.8;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -15;
	        recollectionExtraStats = "+1 Chain Hit";
	        recollectionDescription = "Sparks that can bounce from foe to foe.";
	    }
	}
	if itemVal = 403 and global.recollectionWeap[403] >= 1 {
	    recollectionString = "Laser Barrage";
	    recollectionSprite = spr_Laser_Barrage_Art;
	    if global.recollectionWeap[403] >= 1 {
	        recollectionPower = 14;
	        recollectionEssence = 57;
	        recollectionRecharge = 72;
	        recollectionSpeed = 7.5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "x10 Barrage Shot";
	        recollectionDescription = "Shoots a barrage of lasers, fairly accurate and powerful!";
	    }
	}
	if itemVal = 404 and global.recollectionWeap[404] >= 1 {
	    recollectionString = "Plasma Visor";
	    recollectionSprite = spr_Plasma_Visor_Art;
	    if global.recollectionWeap[404] >= 1 {
	        recollectionPower = 15;
	        recollectionEssence = 12;
	        recollectionRecharge = 10;
	        recollectionSpeed = 8.5;
	        recollectionLifespan = 100;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Weapon Flow";
	        recollectionDescription = "Plasma does big damage and can be thought of pretty fast, however very draining to think of.";
	    }
	}
	if itemVal = 405 and global.recollectionWeap[405] >= 1 {
	    recollectionString = "Power Gun";
	    recollectionSprite = spr_Power_Gun_Art;
	    if global.recollectionWeap[405] >= 1 {
	        recollectionPower = 165;
	        recollectionEssence = 95;
	        recollectionRecharge = 120;
	        recollectionSpeed = 6.25;
	        recollectionLifespan = 200;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "Charged Attack +Continous Piercing";
	        recollectionDescription = "Powerful Weapon capable of charging a large amount of power.";
	    }   
	}
	if itemVal = 406 and global.recollectionWeap[406] >= 1 {
	    recollectionString = "Bouncer Gun";
	    recollectionSprite = spr_Wave_Gun_Art;
	    if global.recollectionWeap[406] >= 1 {
	        recollectionPower = 20;
	        recollectionEssence = 15;
	        recollectionRecharge = 19;
	        recollectionSpeed = 6;
	        recollectionLifespan = 200;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+1 Bounce +1 Piercing Hit";
	        recollectionDescription = "Shoot fast waves that can bounce off walls.";
	    }
	}
	if itemVal = 407 and global.recollectionWeap[407] >= 1 {
	    recollectionString = "Tesla Coil";
	    recollectionSprite = spr_Tesla_Coil_Art;
	    if global.recollectionWeap[407] >= 1 {
	        recollectionPower = 11;
	        recollectionEssence = 6;
	        recollectionRecharge = 5;
	        recollectionSpeed = 1;
	        recollectionLifespan = 5;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+10 Piercing Hits +Phasing";
	        recollectionDescription = "Shoots Static electricity that homes in on any nearby foes.";
	    }
	}
	if itemVal = 408 and global.recollectionWeap[408] >= 1 {
	    recollectionString = "Shocking Gun";
	    recollectionSprite = spr_Shock_Chain_Gun_Art;
	    if global.recollectionWeap[408] >= 1 {
	        recollectionPower = 19;
	        recollectionEssence = 18;
	        recollectionRecharge = 23;
	        recollectionSpeed = 5.2;
	        recollectionLifespan = 150;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+3 Way Air Split +10 Splash Damage";
	        recollectionDescription = "Shoots shocking projectiles which split in the air into damaging energy.";
	    }
	}
	if itemVal = 409 and global.recollectionWeap[409] >= 1 {
	    recollectionString = "Charge Rod";
	    recollectionSprite = spr_Charge_Rod_Art;
	    if global.recollectionWeap[409] >= 1 {
	        recollectionPower = 19;
	        recollectionEssence = 11;
	        recollectionRecharge = 20;
	        recollectionSpeed = 7.75;
	        recollectionLifespan = 300;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+Shot Orbiting";
	        recollectionDescription = "Creates charges that orbit the soul and then get released all at once!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Casting Credit";
		}
	}
	if itemVal = 410 and global.recollectionWeap[410] >= 1 {
	    recollectionString = "Energy Crystal";
	    recollectionSprite = spr_Energy_Crystal_Art;
	    if global.recollectionWeap[410] >= 1 {
	        recollectionPower = 12.5;
	        recollectionEssence = 9;
	        recollectionRecharge = 10;
	        recollectionSpeed = 0;
	        recollectionLifespan = 10;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+Piercing Beam +Weapon Flow";
	        recollectionDescription = "Powerful energy crystal, capable of shooting lasers at high speeds.";
	    }
	}
	if itemVal = 411 and global.recollectionWeap[411] >= 1 {
	    recollectionString = "Forcefield Charger";
	    recollectionSprite = spr_Forcefield_Charger_Art;
	    if global.recollectionWeap[411] >= 1 {
	        recollectionPower = 120;
	        recollectionEssence = 100;
	        recollectionRecharge = 135;
	        recollectionSpeed = 4.5;
	        recollectionLifespan = 300;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Bullet Blocking +3 Piercing Hits";
	        recollectionDescription = "This weapon can charge up a powerful forcefield that blocks bullets and can severely damage bosses.";
	    }
	}
	if itemVal = 412 and global.recollectionWeap[412] >= 1 {
	    recollectionString = "Energy Bomb Cannon";
	    recollectionSprite = spr_Energy_Bomb_Cannon_Art;
	    if global.recollectionWeap[412] >= 1 {
	        recollectionPower = 195;
	        recollectionEssence = 185;
	        recollectionRecharge = 165;
	        recollectionSpeed = 7.25;
	        recollectionLifespan = 200;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Charged Attack x8 Splitting Shot";
	        recollectionDescription = "Shoots a massive ball of energy that does massive damage to the screen.";
	    }
	}
	if itemVal = 413 and global.recollectionWeap[413] >= 1 {
	    recollectionString = "Idea Cannon";
	    recollectionSprite = spr_Guardian_Cannon_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[413] >= 1 {
	        recollectionPower = 30;
	        recollectionEssence = 50;
	        recollectionRecharge = 50;
	        recollectionSpeed = 10;
	        recollectionLifespan = 300;
	        recollectionAccuracy = -10;
	        recollectionExtraStats = "+Constant Attacks";
	        recollectionDescription = "Shoots a massive projectile, that stays mostly stationary and relentlessly shoots extra projectiles at nearby enemies.";
	    }
	}
	if itemVal = 414 and global.recollectionWeap[414] >= 1 {
	    recollectionString = "Dream Cell";
	    recollectionSprite = spr_Dream_Cell_Art;
		recollectionSize = 0.5;
	    recollectionPower = 15;
	    recollectionEssence = 21;
	    recollectionRecharge = 28;
	    recollectionSpeed = 0;
	    recollectionLifespan = 20;
	    recollectionAccuracy = -10;
	    recollectionExtraStats = "+Area Hit +Extra Hits +4 Way Shot";
	    recollectionDescription = "High voltage battery capable of doing consecutive energy damage in a short range. Also shoots electrial bursts in 4 directions.";
	}
	if itemVal = 415 and global.recollectionWeap[415] >= 1 {
	    recollectionString = "Weakening Essence";
	}
	if itemVal = 416 and global.recollectionWeap[416] >= 1 {
	    recollectionString = "Laser Essence";
	}
	if itemVal = 417 and global.recollectionWeap[417] >= 1 {
	    recollectionString = "Wave Essence";
	}
	if itemVal = 418 and global.recollectionWeap[418] >= 1 {
	    recollectionString = "Helix Essence";
	}
	if itemVal = 419 and global.recollectionWeap[419] >= 1 {
	    recollectionString = "Essence";
	}
	if itemVal = 420 and global.recollectionWeap[420] >= 1 {
	    recollectionString = "Essence Beam";
	}

	if itemVal = 501 and global.recollectionWeap[501] >= 1 {
	    recollectionString = "Fleeting Soul Staff";
	    recollectionSprite = spr_Fleeting_Soul_Staff_Art;
	    if global.recollectionWeap[501] >= 1 {
	        recollectionPower = 9;
	        recollectionEssence = 35;
	        recollectionRecharge = 60;
	        recollectionSpeed = 1.6;
	        recollectionLifespan = 750;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+Soul Summon";
	        recollectionDescription = "Summon Fleeting Souls to assist you in battle!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Mechanical Credit";
		}
	}
	if itemVal = 502 and global.recollectionWeap[502] >= 1 {
	    recollectionString = "Manifesting Rod";
	    recollectionSprite = spr_Manifesting_Rod_Art;
	    if global.recollectionWeap[502] >= 1 {
	        recollectionPower = 12;
	        recollectionEssence = 35;
	        recollectionRecharge = 60;
	        recollectionSpeed = 1.1;
	        recollectionLifespan = 750;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+Figment Summon +50 Figment Health";
	        recollectionDescription = "Summon Manifestations to assist you in battle!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Mechanical Credit";
		}
	}
	if itemVal = 503 and global.recollectionWeap[503] >= 1 {
	    recollectionString = "Battle Flag";
	    recollectionSprite = spr_Battle_Flag_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[503] >= 1 {
	        recollectionPower = 15;
	        recollectionEssence = 55;
	        recollectionRecharge = 60;
	        recollectionSpeed = 3;
	        recollectionLifespan = 750;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+Soul Summon";
	        recollectionDescription = "Summon Soul Knights that have powerful blades!";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +Bleeding Credit";
		}
	}
	if itemVal = 504 and global.recollectionWeap[504] >= 1 {
	    recollectionString = "Anvil Rod";
	    recollectionSprite = spr_Anvil_Rod_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[504] >= 1 {
	        recollectionPower = 5;
	        recollectionEssence = 45;
	        recollectionRecharge = 60;
	        recollectionSpeed = 1.4;
	        recollectionLifespan = 750;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+Figment Summon +100 Figment Health";
	        recollectionDescription = "Summon Large and sturdy figments that ram into bosses and can take large amounts of damage.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Mechanical Credit";
		}
	}
	if itemVal = 505 and global.recollectionWeap[505] >= 1 {
	    recollectionString = "Drone Remote";
	    recollectionSprite = spr_Drone_Remote_Art;
	    if global.recollectionWeap[501] >= 1 {
	        recollectionPower = 10;
	        recollectionEssence = 50;
	        recollectionRecharge = 60;
	        recollectionSpeed = 1.6;
	        recollectionLifespan = 750;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+Soul Summon";
	        recollectionDescription = "Summon drone souls that aggressively follow bosses and shoot at them.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1 Mechanical Credit";
		}
	}

	if itemVal = 601 and global.recollectionWeap[601] >= 1 {
	    recollectionString = "Healing Essence";
	    recollectionSprite = spr_Healing_Essence_Art;
	    if global.recollectionWeap[601] >= 1 {
	        recollectionPower = 9;
	        recollectionEssence = 9;
	        recollectionRecharge = 3;
	        recollectionSpeed = 0;
	        recollectionLifespan = 0;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+Soul Healing";
	        recollectionDescription = "Quickly Heals the soul, more potent with a higher vitality stat.";
	    }
	}
	if itemVal = 602 and global.recollectionWeap[602] >= 1 {
	    recollectionString = "Healing Barrier";
	    recollectionSprite = spr_Healing_Barrier_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[602] >= 1 {
	        recollectionPower = 3;
	        recollectionEssence = 45;
	        recollectionRecharge = 45;
	        recollectionSpeed = 0;
	        recollectionLifespan = 0;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+Soul Healing +Bullet Blocking";
	        recollectionDescription = "Heals you and ally figments within the barrier, and also blocks bullets for a short time.";
	    }
	}
	if itemVal = 603 and global.recollectionWeap[603] >= 1 {
	    recollectionString = "Brainstorm Umbrella";
	    recollectionSprite = spr_Brainstorm_Umbrella_Art;
	    if global.recollectionWeap[603] >= 1 {
	        recollectionPower = 10;
	        recollectionEssence = 51;
	        recollectionRecharge = 44;
	        recollectionSpeed = 1;
	        recollectionLifespan = 51;
	        recollectionAccuracy = -1;
	        recollectionExtraStats = "+Bullet Redirection";
	        recollectionDescription = "Blocks bullet rain patterns, redirects bullets back to the direction of your astral cursor.";
	    }
		if global.recollectionStateUnlocked = 1 {
			recollectionExtraStats += " +1/2 Bleeding Credit";
		}
	}
	if itemVal = 604 and global.recollectionWeap[604] >= 1 {
	    recollectionString = "Bounce Forcefield";
	    recollectionSprite = spr_Bounce_Forcefield_Art;
		recollectionSize = 0.5;
	    if global.recollectionWeap[604] >= 1 {
	        recollectionPower = 10;
	        recollectionEssence = 40;
	        recollectionRecharge = 45;
	        recollectionSpeed = 0;
	        recollectionLifespan = 0;
	        recollectionAccuracy = -5;
	        recollectionExtraStats = "+Bullet Redirection";
	        recollectionDescription = "Protects the soul, and redirects all incoming bullets backwards.";
	    }
	}
	if itemVal = 605 and global.recollectionWeap[605] >= 1 {
	    recollectionString = "Heart Pick";
	    recollectionSprite = spr_Heart_Pick_Art;
		recollectionSize = 0.5;
	    recollectionPower = 20;
	    recollectionEssence = 40;
	    recollectionRecharge = 30;
	    recollectionSpeed = 0;
	    recollectionLifespan = 0;
	    recollectionAccuracy = -5;
	    recollectionExtraStats = "+Screen Hit +Heart Activation";
	    recollectionDescription = "Activates Current Heart Effect, also does +10 damage to everything on screen.";
	}
	
	if itemVal = 701 {
	    recollectionString = "Cramming";
	    recollectionSprite = spr_Cramming_Art;
		recollectionSize = 0.5;
	    if global.recollectionN[03] >= 1 {
	        recollectionExtraStats = "+Full Field Suckage";
	        recollectionDescription = "Quickly suck up all the knowledge/items a field has to offer. One time usage, takes up a weapon slot.";
	    }
	}
	*/


}
