function scr_Boss_Stats_Setup(_version=1) {
	currentphase = 1;
	finalphase = 2;
	
	facing_direction = 1;
	boss_phase_transition = 1;
	
	boss_palette = undefined;
	boss_palette_index = 0;
	
	new_boss = true
	
	if _version = 1 {
		new_boss = false
	}
	
	tier = global.currentchapter - 1;

	scr_Boss_Status_Setup(_version);
	
	bossattackspeed = 1;
		
	//boss_height = 0;
	if _version = 1 {
		bossHeight = 0;	
	}
    
	scr_Boss_Attack_Setup(_version);
    
	//alarm[11] = 30;
    
	baseDepth = 0;

	//var champval = frac(global.bossval);
	//var _boss_num = global.bossval - champval;
	if _version = 1 {
		var _boss_num = bossValue - frac(bossValue)
	} else {
		var _boss_num = boss_value - frac(boss_value)	
	}
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
	
	death_sprite = undefined;
	
	deadknockdirection = 0;
    
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
	boss_phase_threshold = 0;
		
	if _boss_num > 110 and _boss_num <= 116 {
		champval = global.currentchapter - 1;	
	}
	
	var bossstring = "Boss " + string(_boss_num)
	if _boss_num < 100 {
		bossstring = "Boss 0" + string(_boss_num)
	}
	if _boss_num < 10 {
		bossstring = "Boss 00" + string(_boss_num)
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
    
	
	if _boss_num > 80 and _boss_num <= 90 and room = State_Room {
		bossmaxhealth = bossmaxhealth * 1.5;
		bossmaxhealth2 = bossmaxhealth2 * 1.5;
	}
	
	if _boss_num = 161 {
	    bossmaxhealth = 50 + 50 * global.currentchapter;
	    bossmaxhealth2 = 0;
	    bosspower = 6;
	    bossbulletspeed = 3.1;
	    bossmovespeed = 2.55;
		bossdefense = 0;
		
		bossdefense2 = bossdefense;
	}
	
	//show_debug_message("scr_boss_stats_setup boss hps: " + string(bossmaxhealth) + ", " + string(bossmaxhealth2))
	

	/////////////////////////////////////////////////////////////////////
	//////////////////////////// Extra Setup ////////////////////////////
	/////////////////////////////////////////////////////////////////////


	    if boost = 1 {
	        bossattackspeed += 0.33;
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
		
		if _boss_num = 53 and global.currentchapter = 4 {
			bossmaxhealth = bossmaxhealth * 1.25;	
			bossmaxhealth2 = bossmaxhealth2 * 1.25;	
			bossmaxhealth3 = bossmaxhealth3 * 1.25;	
		}
		
		if boost = 1 {
			//if _version = 1 {
			//	bossattackspeed += 0.5;
			//} else {
				bossattackspeed += 0.75;
				bossmaxhealth = bossmaxhealth * 1.2;
				bossmaxhealth2 = bossmaxhealth2 * 1.2;
				bossmaxhealth3 = bossmaxhealth3 * 1.2;
			//}
		}
	
	bosshealth = bossmaxhealth + bossmaxhealth2 + bossmaxhealth3;

	bosstotalhealth = bossmaxhealth + bossmaxhealth2 + bossmaxhealth3;
	
	boss_phase_threshold = bosstotalhealth - bossmaxhealth
	
	/*
	if finalphase = 3 {
		boss_phase_threshold = bosstotalhealth - bossmaxhealth3
	} else if finalphase = 2 {
		boss_phase_threshold = bosstotalhealth - bossmaxhealth2	
	} else if finalphase = 1 {
		boss_phase_threshold = bosstotalhealth - bossmaxhealth
	} */
	//bossmaxhealth = bosshealth
	
	scr_B12();

}
