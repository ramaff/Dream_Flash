function scr_Boss_Stats_Setup(version=1) {
	currentphase = 1;
	finalphase = 2;

	    scr_Boss_Status_Setup(version);
	
		bossattackspeed = 1;
		if boost = 1 {
	        bossattackspeed += 0.5;
	    }
		
		bossHeight = 0;
    
	    scr_Boss_Attack_Setup(version);
    
	    //alarm[11] = 30;
    
	    baseDepth = 0;

	    //var champval = frac(global.bossval);
	    //var bossnum = global.bossval - champval;
		var bossnum = bossValue - frac(bossValue)
		champval = champ
	
	    difficulty = 0;
    
	    bossknockdefense = 10;
	    bossmovespeed = 2;
	    bossattackspeed = 1;
	    bossaccuracy = 1;    
	    bossdefense = 0;
	    bossdefense2 = 0;
	    bossdefense3 = 0;
	    bossbulletspeed = 3;
	    patterndir = 0;
	    bosspower = 6;
    
	    bossknockbackforce = 10;
	    bosscontactdamage = 5;
	    bossmaxhealth3 = 0
    
	    bossImaginaryResistance = 0;
	    bossSharpSolidResistance = 0;
	    bossMagicResistance = 0;
	    bossExplosiveResistance = 0;
	    bossEnergyResistance = 0;
		
		bosstotalhealth = 0;
		bossmaxhealth = 0;
		bossmaxhealth2 = 0;
		
		if bossnum > 110 and bossnum <= 116 {
			champval = global.currentchapter - 1;	
		}
	
	var bossstring = "Boss " + string(bossnum)
	if bossnum < 100 {
		bossstring = "Boss 0" + string(bossnum)
	}
	if bossnum < 10 {
		bossstring = "Boss 00" + string(bossnum)
	}
	if variable_struct_exists(global.boss_stats, bossstring) {
		current_boss_stats = variable_struct_get(global.boss_stats, bossstring)
		if variable_struct_exists(current_boss_stats, "Health_Phase_1") {
			bossmaxhealth = current_boss_stats.Health_Phase_1
		}
		if variable_struct_exists(current_boss_stats, "Health_Phase_2") {
			bossmaxhealth2 = current_boss_stats.Health_Phase_2
		}
		if variable_struct_exists(current_boss_stats, "Health_Phase_3") {
			bossmaxhealth3 = current_boss_stats.Health_Phase_3
		}
		if variable_struct_exists(current_boss_stats, "Defense_Phase_1") {
			bossdefense = current_boss_stats.Defense_Phase_1
		}
		if variable_struct_exists(current_boss_stats, "Defense_Phase_2") {
			bossdefense2 = current_boss_stats.Defense_Phase_2
		}
		if variable_struct_exists(current_boss_stats, "Defense_Phase_3") {
			bossdefense3 = current_boss_stats.Defense_Phase_3
		}
		if variable_struct_exists(current_boss_stats, "Attack_Speed") {
			bossattackspeed = current_boss_stats.Attack_Speed
		}
		if variable_struct_exists(current_boss_stats, "Bullet_Speed") {
			bossbulletspeed = current_boss_stats.Bullet_Speed
		}
		if variable_struct_exists(current_boss_stats, "Move_Speed") {
			bossmovespeed = current_boss_stats.Move_Speed
		}
		if variable_struct_exists(current_boss_stats, "Knock_Defense") {
			bossknockdefense = current_boss_stats.Knock_Defense
		}
		if variable_struct_exists(current_boss_stats, "Accuracy") {
			bossaccuracy = current_boss_stats.Accuracy
		}
		if variable_struct_exists(current_boss_stats, "Final_Phase") {
			finalphase = current_boss_stats.Final_Phase
		}
		var champstr = "Champ " + string(champval);
		//show_debug_message(champstr)
		if frac(champval) > 0 {
			champstr = string_delete(champstr, string_length(champstr), 1)
		}
		//show_debug_message(champstr)
		if variable_struct_exists(current_boss_stats, champstr) {
			current_boss_stats = variable_struct_get(current_boss_stats, champstr)
			//show_debug_message(current_boss_stats)
		
			if variable_struct_exists(current_boss_stats, "Health_Phase_1") {
				bossmaxhealth = current_boss_stats.Health_Phase_1
			}
			if variable_struct_exists(current_boss_stats, "Health_Phase_2") {
				bossmaxhealth2 = current_boss_stats.Health_Phase_2
			}
			if variable_struct_exists(current_boss_stats, "Health_Phase_3") {
				bossmaxhealth3 = current_boss_stats.Health_Phase_3
			}
			if variable_struct_exists(current_boss_stats, "Defense_Phase_1") {
				bossdefense = current_boss_stats.Defense_Phase_1
			}
			if variable_struct_exists(current_boss_stats, "Defense_Phase_2") {
				bossdefense2 = current_boss_stats.Defense_Phase_2
			}
			if variable_struct_exists(current_boss_stats, "Defense_Phase_3") {
				bossdefense3 = current_boss_stats.Defense_Phase_3
			}
			if variable_struct_exists(current_boss_stats, "Attack_Speed") {
				bossattackspeed = current_boss_stats.Attack_Speed
			}
			if variable_struct_exists(current_boss_stats, "Bullet_Speed") {
				bossbulletspeed = current_boss_stats.Bullet_Speed
			}
			if variable_struct_exists(current_boss_stats, "Move_Speed") {
				bossmovespeed = current_boss_stats.Move_Speed
			}
			if variable_struct_exists(current_boss_stats, "Knock_Defense") {
				bossknockdefense = current_boss_stats.Knock_Defense
			}
			if variable_struct_exists(current_boss_stats, "Accuracy") {
				bossaccuracy = current_boss_stats.Accuracy
			}
			if variable_struct_exists(current_boss_stats, "Final_Phase") {
				finalphase = current_boss_stats.Final_Phase
			}
		}
	}
    
	
	if bossnum > 80 and bossnum < 90 and room = State_Room {
		bossmaxhealth = bossmaxhealth * 1.75;
		bossmaxhealth2 = bossmaxhealth2 * 1.75;
	}
	
	if bossnum = 161 {
	    bossmaxhealth = 50 + 50 * global.currentchapter;
	    bossmaxhealth2 = 0;
	    bosspower = 6;
	    bossbulletspeed = 3.1;
	    bossmovespeed = 2.55;
		bossdefense = 0;
		
		bossdefense2 = bossdefense;
	}
	

	/////////////////////////////////////////////////////////////////////
	//////////////////////////// Extra Setup ////////////////////////////
	/////////////////////////////////////////////////////////////////////


	    if boost = 1 {
	        bossattackspeed += 0.5;
	    }
    
	    bossattackspeed = bossattackspeed * ((200 + global.souldespair + global.souldespairTemp) / 200) * ((200 + global.soulparanoia + global.soulparanoiaTemp) / 200) * ((200 + global.soulvanity + global.soulvanityTemp) / 200);
		bossattackspeed = bossattackspeed * global.bossfireratefactor;
	    bossbulletspeed = bossbulletspeed;
	    bossaccuracy =  max(0.1, global.bossaccuracyfactor) * bossaccuracy / ((20 + random(global.soulparanoia + global.soulparanoiaTemp)) / 20);
	    bossmovespeedmax = bossmovespeed;
	    bossattackspeedmax = bossattackspeed;
    
	    bosscontactdamage = bosspower;
    
    
	    if global.currentchapter = 1 {
	        bosspower = 10;
	        bosscontactdamage = 10;
	    }
	    if global.currentchapter = 2 {
	        bosspower = 12;
	        bosscontactdamage = 12;
	    }
	    if global.currentchapter = 3 {
	        bosspower = 14;
	        bosscontactdamage = 14;
	    }
		if global.currentchapter = 4 {
	        bosspower = 16;
	        bosscontactdamage = 16;
	    }
		
		bosspower = bosspower * global.bossdamagefactor;
		bosscontactdamage = bosspower;
		
		roomNum = global.currentroom;
		roomDifficulty = 1.5 + (4 * (global.currentchapter - 1)) + ((2.5 * roomNum) / 10) + (global.souldespair / 8) + (global.soulloathing / 10);

		if global.currentchapter = 2 {
			roomDifficulty += ((0.5 * roomNum) / 10);
		}
		if global.currentchapter = 3 {
			roomDifficulty += ((0.5 * roomNum) / 10);
		}

		if roomNum = 16 and global.currentchapter < 3 {
			roomDifficulty += 2;
			if global.currentchapter = 2 {
				roomDifficulty += 1;	
			}
		}
		
		if global.currentchapter > 2 {
			if roomDifficulty >= 20 {
				var mult = (1 + (0.025 * (roomDifficulty - 20)));
				bossmaxhealth = bossmaxhealth * mult;
				bossmaxhealth2 = bossmaxhealth2 * mult;
				bossmaxhealth3 = bossmaxhealth3 * mult;
			}
		}
	
		bosshealth = bossmaxhealth;

	bosstotalhealth = bossmaxhealth + bossmaxhealth2 + bossmaxhealth3;
	
	scr_B12();

}
