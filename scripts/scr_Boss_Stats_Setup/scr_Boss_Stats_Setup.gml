function scr_Boss_Stats_Setup() {
	currentphase = 1;
	finalphase = 2;

	    scr_Boss_Status_Setup();
	
		bossattackspeed = 1;
		if boost = 1 {
	        bossattackspeed += 0.5;
	    }
		
		bossHeight = 0;
    
	    scr_Boss_Attack_Setup();
    
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
    
	///////////// Wall Watcher
/*
	if bossnum = 1 {
	    bossmaxhealth = 200;
	    bossmaxhealth2 = 200;
	    bosspower = 6;
	    bossbulletspeed = 3.1;
	    bossknockdefense = 999;
	    bossmovespeed = 1.75;
	
		bossEnergyResistance = -0.25;
		bossExplosiveResistance = -0.25;
    
	    pathBoss = 1;
    
	    if champval > 0.1 {
	    bossmaxhealth += 40;
	    bossmaxhealth2 += 40;
	    }
	    if champval = 0.3 {
	    bossmovespeed += 1;
	    }
	    if champval >= 0.8 {
		bossmaxhealth += 40;
	    bossmaxhealth2 += 40;
	    bossbulletspeed += 0.2;
	    bossattackspeed += 0.2;
	    bossaccuracy -= 0.5;
	    }
    
	}

	///////////// Mine Watcher

	if bossnum = 2 {
	    bossmaxhealth = 505;
	    bossmaxhealth2 = 435;
	    bosspower = 7;
	    bossbulletspeed = 3.35;
	    bossmovespeed = 2.25;
	    bossdefense = 1;
	    bossdefense2 = 1;
	    bossknockdefense = 999;
    
	    bossExplosiveResistance = 0.25;
		bossSharpSolidResistance = 0.25;
	    bossEnergyResistance = -0.25;
    
	    pathBoss = 1;
    
	    if champval > 0.1 {
	        bossmaxhealth += 70;
	        bossmaxhealth2 += 70;
	    }
	    if champval = 0.2 {
	        bossmovespeed += 0.6;
	    }
	    if champval = 0.3 {
	        bossdefense += 1;
	        bossdefense2 += 1;
	        bossmovespeed -= 0.75;
	    }
	    if champval = 0.4 {
	        bossmovespeed += 0.5;
	        bossbulletspeed += 0.5;
	    }
	    if champval >= 0.8 {
	        bossmaxhealth += 70;
	        bossmaxhealth2 += 70;
	        bossattackspeed += 0.35;
	    }
	}

	///////////// Growing Sorrows

	if bossnum = 3 {
	    bossmaxhealth = 290;
	    bossmaxhealth2 = 230;
	    bosspower = 6;
	    bossbulletspeed = 3.5;
	    bossmovespeed = 1.95;
	    bossknockdefense = 999;
	
		bossExplosiveResistance = -0.1;
		bossSharpSolidResistance = -0.1;
		bossEnergyResistance = 0.1;
    
	    pathBoss = 1;
    
	    if champval > 0.1 {
	        bossmaxhealth += 50;
	        bossmaxhealth2 += 40;
	    }
	    if champval = 0.3 {
	        bossbulletspeed += 0.2;
	        bossmovespeed += 1;
	    }
	    if champval = 0.4 {
			bossmaxhealth += 50;
	        bossmaxhealth2 += 40;
	        bossbulletspeed -= 1;
	        bossmovespeed += 0.6;
	    }
	}

	///////////// Soaring Sorrows

	if bossnum = 4 {
	    bossmaxhealth = 590;
	    bossmaxhealth2 = 530;
	    bosspower = 8;
	    bossbulletspeed = 3.9;
	    bossmovespeed = 3.3;
	    bossknockdefense = 999;
    
	    pathBoss = 1;
	
		bossSharpSolidResistance = -0.1;
		bossExplosiveResistance = -0.1;
		bossMagicResistance = 0.3;
		bossEnergyResistance = 0.3;
    
	    if champval > 0.1 {
	        bossmaxhealth += 85;
	        bossmaxhealth2 += 65;
	    }
    
	    if champval = 0.1 {
	        bossmovespeed += 1.55;
	        bossbulletspeed += 0.3;
	    }
	}

	///////////// Thought Cloud

	if bossnum = 5 {
	    bossmaxhealth = 200;
	    bossmaxhealth2 = 180;
	    bosspower = 6;
	    bossbulletspeed = 2.1;
	    bossmovespeed = 0.25;
    
	    //bossImaginaryResistance = 0.05;
		bossExplosiveResistance = -0.2;
		bossMagicResistance = -0.2;
    
	    if champval > 0.1 {
	        bossmaxhealth += 50;
			bossmaxhealth2 += 30;
	    }
	    if champval = 0.2 {
	        bossbulletspeed += 0.2;
	    }
	    if champval = 0.3 {
	        bossbulletspeed += 0.5;
	        bossmovespeed += 0.4;
	    }
	    if champval = 0.4 {
	        bossbulletspeed += 0.8;
	        bossmovespeed += 0.75;
	    }
	    if champval >= 0.8 {
	        bossmaxhealth += 50;
	        bossmaxhealth2 += 30;
	        bossbulletspeed += 0.2;
	        bossattackspeed += 0.3;
	    }
	}

	///////////// Infatuation Cloud

	if bossnum = 6 {
	    bossmaxhealth = 340;
	    bossmaxhealth2 = 310;
	    bosspower = 7;
	    bossbulletspeed = 2.2;
	    bossmovespeed = 0.3;
    
	    //bossImaginaryResistance = 0.1;
		bossExplosiveResistance = -0.2;
		bossMagicResistance = -0.2;
    
	    if champval > 0.1 {
	        bossmaxhealth += 50;
	        bossmaxhealth2 += 50;
	    }
	    if champval = 0.2 {
	        bossbulletspeed += 0.25;
	    }
	    if champval = 0.3 {
	        bossbulletspeed += 1;
	        bossmovespeed += 0.4;
	    }
	}

	///////////// Storm Cloud

	if bossnum = 7 {
	    bossmaxhealth = 510;
	    bossmaxhealth2 = 490;
	    bosspower = 7;
	    bossbulletspeed = 2.3;
	    bossmovespeed = 0.75;
	
		bossdefense = 1;
    
	    //bossImaginaryResistance = 0.15;
		bossExplosiveResistance = -0.2;
		bossMagicResistance = -0.2;
    
	    if champval > 0.1 {
	        bossmaxhealth += 75;
	        bossmaxhealth2 += 70;
	    }
	    if champval = 0.2 {
	        bossbulletspeed += 0.15;
	        bossattackspeed += 0.15;
	        bossmovespeed += 0.15;
	    }
	    if champval = 0.3 {
	        bossbulletspeed += 0.5;
	        bossattackspeed += 0.1;
	        bossmovespeed += 0.3;
			bossEnergyResistance += 0.5;
	    }
	}

	///////////// Nightmare Cloud

	if bossnum = 8 {
	    bossmaxhealth = 750;
	    bossmaxhealth2 = 730;
	    bosspower = 7;
	    bossbulletspeed = 2.4;
	    bossmovespeed = 1;
	
		bossdefense = 1;
		bossdefense2 = 1;
    
	    //bossImaginaryResistance = 0.15;
		bossExplosiveResistance = -0.3;
		bossMagicResistance = -0.3;
    
	    if champval > 0.1 {
	        bossmaxhealth += 75;
	        bossmaxhealth2 += 70;
	    }
	    if champval = 0.2 {
	        bossbulletspeed += 0.15;
	        bossattackspeed += 0.15;
	        bossmovespeed += 0.15;
	    }
	    if champval = 0.3 {
	        bossbulletspeed += 0.5;
	        bossattackspeed += 0.1;
	        bossmovespeed += 0.3;
			bossEnergyResistance += 0.5;
	    }
	}

	///////////// Jelly Amorphous

	if bossnum = 9 {
	    bossmaxhealth = 200;
	    bossmaxhealth2 = 170;
	    bosspower = 6;
	    bossbulletspeed = 2.75;
	    bossmovespeed = 1.25;
    
	    bossExplosiveResistance = 0.25;
	    bossSharpSolidResistance = 0.25;
		bossMagicResistance = -0.25;
    
	    if champval > 0.1 {
	        bossmaxhealth += 45;
			bossmaxhealth2 += 30;
	    }    
		if champval >= 0.8 {
	        bossmaxhealth += 45;
			bossmaxhealth2 += 30;
	    }    
	}

	///////////// Distressed Amorphous

	if bossnum = 10 {
	    bossmaxhealth = 400;
	    bossmaxhealth2 = 300;
	    bosspower = 7;
	    bossbulletspeed = 3.3;
	    bossmovespeed = 1.5;
	    bossdefense += 1;
	    bossdefense2 += 1;
	    bossknockdefense = 15;
    
	    bossExplosiveResistance = 0.35;
	    bossSharpSolidResistance = 0.35;
		bossMagicResistance = -0.25;
    
	    if champval > 0.1 {
	        bossmaxhealth += 60;
			bossmaxhealth2 += 50;
	    }   
	    if champval = 0.2 {
	        bossbulletspeed += 1;
	    } 
	}

	///////////// Amorphous Prime

	if bossnum = 11 {
	    bossmaxhealth = 550;
	    bossmaxhealth2 = 450;
	    bosspower = 8;
	    bossbulletspeed = 3.65;
	    bossmovespeed = 1.75;
	    bossdefense += 2;
	    bossdefense2 += 2;
	    bossknockdefense = 20;
    
	    bossExplosiveResistance = 0.45;
	    bossSharpSolidResistance = 0.45;
		bossMagicResistance = -0.25;
    
	    if champval > 0.1 {
	        bossmaxhealth += 85;
			bossmaxhealth2 += 60;
	    }
	}

	///////////// Hand of the Accusor

	if bossnum = 12 {
	    bossmaxhealth = 140;
	    bossmaxhealth2 = 160;
	    bosspower = 6;
	    bossbulletspeed = 7;
	    bossmovespeed = 4.4;
    
		bossSharpSolidResistance = -0.2;
	
	    if champval > 0.1 {
			bossmaxhealth += 20;
	        bossmaxhealth2 += 20;
	    }
	    if champval = 0.2 {
	        bossbulletspeed += 1;
	        bossmovespeed += 1;
	        bossattackspeed += 1;
	    }
	    if champval = 0.8 {
			bossmaxhealth += 20;
	        bossmaxhealth2 += 20;
	        bossmovespeed += 3;
	        bossattackspeed += 1;
	    }
	}

	///////////// Cursed Clappers

	if bossnum = 13 {
	    bossmaxhealth = 150;
	    bossmaxhealth2 = 120;
	    bosspower = 6;
	    bossbulletspeed = 6.5;
	    bossmovespeed = 3;
	    bossknockdefense = 999;
	
		bossSharpSolidResistance = -0.2;
		bossMagicResistance = 0.1;
	
	    if champval > 0.1 {
	        bossmaxhealth += 20;
	        bossmaxhealth2 += 20;
	    }
	    if champval = 0.2 {
	        bossmovespeed += 0.5;
	        bossattackspeed += 0.15;
	    }
	    if champval = 0.3 {
	        bossbulletspeed += 1;
	        bossattackspeed += 0.15;
	    }
	}

	///////////// Spooked Spirit

	if bossnum = 14 {
	    bossmaxhealth = 300;
	    bossmaxhealth2 = 230;
	    bosspower = 6;
	    bossbulletspeed = 2.75;
	    bossmovespeed = 1.9;
    
	    bossMagicResistance = 0.1;
    
	    if champval > 0.1 {
			bossmaxhealth += 30;
	        bossmaxhealth2 += 30;
	    }
	    if champval = 0.8 {
	        bossmovespeed += 0.8;
	        bossbulletspeed += 0.4;
			bossmaxhealth += 30;
	        bossmaxhealth2 += 30;
	    }
	}

	///////////// Wicked Spectre

	if bossnum = 15 {
	    bossmaxhealth = 590;
	    bossmaxhealth2 = 530;
	    bosspower = 7;
	    bossbulletspeed = 2.3;
    
	    bossSharpSolidResistance = 0.5;
		bossExplosiveResistance = -0.25;
	    bossMagicResistance = 0.25;
	    bossEnergyResistance = 0.25;
    
	    if champval > 0.1 {
			bossmaxhealth += 90;
	        bossmaxhealth2 += 70;
	    }
	    if champval = 0.4 {
	        bossmovespeed += 0.8;
	        bossbulletspeed += 0.4;
	    }
	}

	///////////// Horror Stack

	if bossnum = 16 {
	    bossmaxhealth = 200;
	    bossmaxhealth2 = 125;
	    bosspower = 6;
	    bossbulletspeed = 3.3;
	    bossmovespeed = 2.1;
    
	    if champval = 0.11 || champval = 0.12 {
	        bossmaxhealth = 125;
	        bossmaxhealth2 = 50;
			finalphase = 1;
	    }
	
		bossEnergyResistance = -0.25;
    
	    if champval >= 0.2 {
	        bossmaxhealth2 += 20;
	    }
	    if champ = 0.3 {
	        bossbulletspeed += 1.5;
	        bossattackspeed += 0.3;
	        bossSharpSolidResistance = 0.5;
	        bossEnergyResistance = 0.4;
	    }
	    if champval = 0.31 || champval = 0.32 {
	        bossmaxhealth = 150;
	        bossmaxhealth2 = 75;
			finalphase = 1;
	        bossbulletspeed += 1;
	        bossattackspeed += 0.3;
			bossSharpSolidResistance = 0.5;
	        bossEnergyResistance = 0.4;
	    }
	    if champ = 0.8 {
	        bossdefense = 1;
	        bossdefense2 = 1;
	        bossbulletspeed += 1;
	        bossattackspeed += 0.4;
	        bossSharpSolidResistance = 0.4;
	        bossMagicResistance = 0.4;
	    }
	    if champval = 0.81 || champval = 0.82 {
	        bossdefense = 1;
	        bossdefense2 = 1;
	        bossmaxhealth = 175;
	        bossmaxhealth2 = 85;
			finalphase = 1;
	        bossbulletspeed += 1;
	        bossattackspeed += 0.4;
			bossExplosiveResistance = -0.3;
			bossSharpSolidResistance = 0.4;
	        bossMagicResistance = 0.4;
	    }
    
	}

	///////////// Twister Devil

	if bossnum = 17 {
	    bossmaxhealth = 355;
	    bossmaxhealth2 = 425;
	    bosspower = 7;
	    bossbulletspeed = 3.9;
	    bossmovespeed = 3.3;
    
	    bossEnergyResistance = 0.25;
	    bossSharpSolidResistance = 0.25;
		bossExplosiveResistance = -0.15;
    
	    if champval > 0.1 {
	        bossmaxhealth += 50;
	        bossmaxhealth2 += 60;
	    }
	    if champval = 0.2 {
	         bossbulletspeed += 0.5;
	         bossmovespeed += 0.5;
	    }
	    if champval = 0.3 {
	         bossbulletspeed += 0.5;
	         bossattackspeed += 0.5;
	    }
	}

	///////////// Fire Starter

	if bossnum = 18 {
	    bossmaxhealth = 270;
	    bossmaxhealth2 = 220;
	    bosspower = 6;
	    bossbulletspeed = 2.8;
	    bossmovespeed = 1.9;
    
	    bossExplosiveResistance = 0.25;
	    bossMagicResistance = 0.5;
	    bossEnergyResistance = 0.25;
    
	    if champval > 0.1 {
			bossmaxhealth += 30;
	        bossmaxhealth2 += 50;
	    }
	    if champval = 0.2 {
	        bossMagicResistance = 0.75;
	        bossmovespeed += 0.25;
	        bossattackspeed += 0.25;
	    }
	    if champval = 0.3 {
	        bossExplosiveResistance = 0.75;
	        bossattackspeed += 0.5
	        bossattackspeed += 0.4;
	    }
	    if champval = 0.4 {
	        bossEnergyResistance = 0.75;
	        bossbulletspeed += 0.5;
	        bossmovespeed += 0.5;
	        bossattackspeed += 0.4;
	    }
	}

	///////////// Tri Ghoul

	if bossnum = 19 {
	    bossmaxhealth = 210;
	    bossmaxhealth2 = 105;
	    bosspower = 6;
	    bossbulletspeed = 3;
	    bossmovespeed = 1.4;
	
		bossSharpSolidResistance -= 0.25;
    
	    if champval > 0.1 {
			bossmaxhealth += 30;
	        bossmaxhealth2 += 30;
	    }
		if champval >= 0.8 {
			bossmaxhealth += 30;
	        bossmaxhealth2 += 30;
	    }
	    if champval = 0.2 {
	    }
	}

	///////////// Manifest Core

	if bossnum = 20 {
	    bossmaxhealth = 100;
	    bossmaxhealth2 = 250;
	    bosspower = 6;
	    bossbulletspeed = 2.75;
	    bossmovespeed = 1.75;
    
	    bossdefense = 25;
	    bossdefense2 = 0;
    
	    var resist = irandom(3)
    
	    if resist = 0 {
	        bossSharpSolidResistance = 0.5;
	    }
	    if resist = 1 {
	        bossExplosiveResistance = 0.5;
	    }
	    if resist = 2 {
	        bossMagicResistance = 0.5;
	    }
	    if resist = 3 {
	        bossEnergyResistance = 0.5;
	    }
    
	    if champval = 0.11 || champval = 0.21 {
	        bossmaxhealth = 100;
	        bossmaxhealth2 = 100;
	        finalphase = 1;
	        bossknockdefense = 1;
	        bossdefense -= 25;
	    }
	    if champval = 0.31 {
	        bossmaxhealth = 50;
	        bossmaxhealth2 = 50;
	        finalphase = 1;
	        bossknockdefense = 1;
	        bossdefense -= 25;
	    }
    
	    if champval > 0.11 {
	        bossmaxhealth2 += 50;
	    }
	    if champval = 0.2 || champval = 0.21 {
	        bossattackspeed += 0.15;
	        bossbulletspeed += 0.1;
	        bossmovespeed += 0.35;
	    }
	    if champval = 0.3 || champval = 0.31 {
	        bossattackspeed += 0.1;
	        bossbulletspeed += 0.2;
	        bossmovespeed += 0.15;
	    }
	}

	///////////// Blind Hunger

	if bossnum = 21 {
	    bossmaxhealth = 570;
	    bossmaxhealth2 = 720;
	    bosspower = 8;
	    bossbulletspeed = 3.7;
	    bossmovespeed = 1.9;
	    bossdefense = 4;
	    bossdefense2 = 1;
	    bossknockdefense = 15;
	
		bossSharpSolidResistance = 0.5;
		bossExplosiveResistance = 0.25;
		bossEnergyResistance = -0.25;
    
	    if champval > 0.1 {
	        bossmaxhealth += 85;
	        bossmaxhealth2 += 105;
	    }
	    if champval = 0.8 {
			bossmaxhealth += 85;
	        bossmaxhealth2 += 105;
	        bossmovespeed += 0.7;
	        bossbulletspeed += 0.35;
	    }
	}

	///////////// Guardian of Knowing

	if bossnum = 22 {
	    bossmaxhealth = 610;
	    bossmaxhealth2 = 510;
	    bosspower = 8;
	    bossmovespeed = 3.5;
	    bossbulletspeed = 3;
	    bossdefense = 0;
	    bossdefense2 = 0;
    
	    bossImaginaryResistance = 0.15;
		bossMagicResistance = 0.4;
		bossSharpSolidResistance = -0.2;
    
	    if champval > 0.1 {
	        bossmaxhealth += 90;
	        bossmaxhealth2 += 60;
	    }
	}

	///////////// Heart Ache

	if bossnum = 23 {
	    bossmaxhealth = 390;
	    bossmaxhealth2 = 300;
	    bosspower = 7;
	    bossbulletspeed = 3.5;
	    bossmovespeed = 1.4;
    
		bossSharpSolidResistance = -0.2;
		bossMagicResistance = -0.2;
		bossEnergyResistance = 0.4;
	
	    if champval > 0.1 {
	        bossmaxhealth += 60;
	        bossmaxhealth2 += 50;
	    }
	    if champval = 0.4 {
	        bossmovespeed += 0.8;
	        bossbulletspeed += 0.4;
	    }
	}

	///////////// Ninja Ghost

	if bossnum = 24 {
	    bossmaxhealth = 240;
	    bossmaxhealth2 = 180;
	    bosspower = 6;
	    bossbulletspeed = 3.3;
	    bossmovespeed = 1.75;
    
	    bossSharpSolidResistance = 0.25;
		bossMagicResistance = -0.25;
    
	    if champval > 0.1 {
	        bossmaxhealth += 30;
	        bossmaxhealth2 += 30;
	    }
	    if champval = 0.2 {
	        bossmovespeed += 0.2;
	        bossbulletspeed += 0.4;
	    }
	    if champval = 0.3 {
	        bossmovespeed += 0.2;
	        bossbulletspeed += 0.8;
	    }
	}

	///////////// Wisper

	if bossnum = 25 {
	    bossmaxhealth = 280;
	    bossmaxhealth2 = 90;
	    bosspower = 6;
	    bossbulletspeed = 2.5;
		bossmovespeed = 1.35;
	
		bossMagicResistance = 0.25;
		bossSharpSolidResistance = -0.2;
    
	    if champval > 0.1 {
	        bossmaxhealth += 50;
	        bossmaxhealth2 += 0;
	    }
	
		if champval = 0.11 {
	        bossmaxhealth = 100;
			finalphase = 1;
	    }
		if champval = 0.12 {
	        bossmaxhealth = 180;
			finalphase = 1;
	    }
		if champval = 0.21 || champval = 0.31 {
	        bossmaxhealth = 200;
			finalphase = 1;
	    }
		if champval = 0.22 || champval = 0.32 {
	        bossmaxhealth = 120;
			finalphase = 1;
	    }
	}

	///////////// Manic Woods Wizard

	if bossnum = 26 {
	    bossmaxhealth = 535;
	    bossmaxhealth2 = 435;
	    bosspower = 7;
	    bossbulletspeed = 2.6;
	    bossmovespeed = 1.2;
    
	    bossMagicResistance = 0.9;
		bossEnergyResistance = -0.3;
    
	    if champval > 0.1 {
	        bossmaxhealth += 60;
	        bossmaxhealth2 += 60;
	    }
	    if champval = 0.2 {
	    }
	}

	///////////// Crazy Eyes

	if bossnum = 27 {
	    bossmaxhealth = 190;
	    bossmaxhealth2 = 190;
	    bosspower = 7;
	    bossbulletspeed = 3.6;
	    bossmovespeed = 4.75;
	    bossknockdefense = 999;
    
	    bossdefense2 = 1;
	
		bossSharpSolidResistance = -0.25;
    
	    if champval > 0.1 {
			bossmaxhealth += 10;
	        bossmaxhealth2 += 35;
	    }
	    if champval = 0.2 {
	        bossmovespeed += 0.5;
	    }
	}
	
	///////////// Phase Crawler

	if bossnum = 28 {
	    bossmaxhealth = 650;
	    bossmaxhealth2 = 550;
	    bosspower = 8;
	    bossbulletspeed = 3.5;
	    bossmovespeed = 2;
    
	    bossdefense = 2;
		bossdefense2 = 2;
	
		bossMagicResistance = 0.5;
		bossExplosiveResistance = -0.3;
		bossEnergyResistance = 0.5;
		bossSharpSolidResistance = -0.3;
    
	    if champval > 0.1 {
	        bossmaxhealth += 95;
	        bossmaxhealth2 += 85;
	    }
	    if champval >= 0.8 {
			bossmaxhealth += 95;
	        bossmaxhealth2 += 85;
	    }
	}

	///////////// Barrier Demon

	if bossnum = 29 {
	    bossmaxhealth = 690;
	    bossmaxhealth2 = 560;
	    bosspower = 8;
	    bossbulletspeed = 3.5;
	    bossmovespeed = 2;
    
	    bossdefense = 3;
		bossdefense2 = 3;
	
		bossSharpSolidResistance = 0.3;
		bossMagicResistance = 0.3;
		bossExplosiveResistance = 0.3;
		bossEnergyResistance = -0.3;
    
	    if champval > 0.1 {
	        bossmaxhealth += 100;
	        bossmaxhealth2 += 80;
	    }
	    if champval >= 0.8 {
			bossmaxhealth += 100;
	        bossmaxhealth2 += 80;
			bossdefense = 4;
			bossdefense2 = 4;
	    }
	}
	
	///////////// Behemoth

	if bossnum = 30 {
	    bossmaxhealth = 750;
	    bossmaxhealth2 = 660;
	    bosspower = 8;
	    bossbulletspeed = 3.5;
	    bossmovespeed = 2;
    
	    bossdefense = 3;
		bossdefense2 = 2;
	
		bossExplosiveResistance = 0.5;
		bossSharpSolidResistance = -0.3;
    
	    if champval > 0.1 {
	        bossmaxhealth += 120;
	        bossmaxhealth2 += 100;
	    }
	    if champval = 0.2 {
	    }
	}

	///////////// Sleeper/Manifestation

	if bossnum = 31 {
	    bossmaxhealth = 500;
	    bossmaxhealth2 = 5;
	    bosspower = 8;
	    bossbulletspeed = 3;
	    bossmovespeed = 1.5;
	    finalphase = 1;
    
	    bossdefense = 2;
	    bossdefense2 = 1
    
	    bossImaginaryResistance = 0.1;
		bossExplosiveResistance = -0.25;
    
	    if champval = 0.11 {
	        bossmaxhealth = 500;
	        bossmaxhealth2 = 500;
	        finalphase = 2;
	        bossattackspeed = 0.5;
	        bossdefense = 99;
	        bossdefense2 = 1;
	    }
	    if champval = 0.21 {
	        bossmaxhealth = 540;
	        bossmaxhealth2 = 540;
	        finalphase = 2;
	        bossattackspeed = 0.5;
	        bossmovespeed = 2.4;
	        bossdefense = 99;
	        bossdefense2 = 1;
	        bossknockdefense = 999;
	    }
    
	    if champval > 0.11 {
	        bossmaxhealth += 60;
	    }
	    if champval = 0.2 {
	    }
	}

	///////////// Animated Head

	if bossnum = 32 {
	    bossmaxhealth = 360;
	    bossmaxhealth2 = 330;
	    bosspower = 7;
	    bossbulletspeed = 3.3;
	    bossmovespeed = 3;
    
	    bossdefense = 4;
	    bossdefense2 = 1;
    
	    bossSharpSolidResistance = 0.3;
		bossMagicResistance = -0.4;
    
	    if champval > 0.1 {
	        bossmaxhealth += 50;
	        bossmaxhealth2 += 40;
	    }
	    if champval = 0.2 {
	        bossbulletspeed += 0.4;
	        bossattackspeed += 0.25;
	        bossmovespeed += 0.6;
	    }
	}

	///////////// Chaotic Unrest

	if bossnum = 33 {
	    bossmaxhealth = 570;
	    bossmaxhealth2 = 440;
	    bosspower = 8;
	    bossbulletspeed = 3.8;
	    bossmovespeed = 3.53;
    
	    bossdefense = 3;
		bossdefense2 = 1;
    
	    bossSharpSolidResistance = 0.3;
	    bossMagicResistance = 0.3;
    
	    if champval > 0.1 {
	        bossmaxhealth += 60;
	        bossmaxhealth2 += 60;
	    }
	    if champval = 0.2 {
	        bossbulletspeed += 0.4;
	        bossmovespeed += 0.6;
	    }
	    if champval = 0.8 {
	        bossmaxhealth += 66;
	        bossmaxhealth2 += 66;
	        bossbulletspeed += 0.43;
	        bossmovespeed += 0.9;
	    }
	}

	///////////// Locust

	if bossnum = 34 {
	    bossmaxhealth = 490;
	    bossmaxhealth2 = 350;
	    bosspower = 7;
	    bossbulletspeed = 2.3;
	    bossmovespeed = 3;
    
		bossdefense = 6;
	    bossdefense2 = 2;
	
		bossSharpSolidResistance = 0.4;
		bossExplosiveResistance = 0.4;
		bossMagicResistance = -0.2;
    
	    if champval > 0.1 {
	        bossmaxhealth2 += 75;
			bossmaxhealth += 45;
	    }
	    if champval = 0.4 {
	        bossmovespeed += 0.8;
	        bossbulletspeed += 0.4;
	    }
	}

	///////////// Grim Apparition

	if bossnum = 35 {
	    bossmaxhealth = 330;
	    bossmaxhealth2 = 250;
	    bosspower = 6;
	    bossbulletspeed = 3.3;
	    bossmovespeed = 3.9;
    
	    bossEnergyResistance = 0.25;
	    bossExplosiveResistance = 0.25;
		bossMagicResistance = -0.2;
    
	    bossdefense2 = 2;
    
	    if champval > 0.1 {
			bossmaxhealth += 50;
	        bossmaxhealth2 += 30;
	    }
	    if champval = 0.4 {
	        bossmovespeed += 0.8;
	        bossbulletspeed += 0.4;
	    }
	}

	///////////// Dream Invader

	if bossnum = 36 {
	    bossmaxhealth = 400;
	    bossmaxhealth2 = 375;
	    bosspower = 7;
	    bossbulletspeed = 2.85;
	    bossmovespeed = 3.3;
    
	    bossdefense = 2;
		bossdefense2 = 1;
	
		bossEnergyResistance = 0.25;
	    bossExplosiveResistance = 0.25;
		bossSharpSolidResistance = 0.25;
    
	    if champval > 0.1 {
			bossmaxhealth += 50;
	        bossmaxhealth2 += 50;
	    }
	    if champval = 0.4 {
	        bossmovespeed += 0.8;
	        bossbulletspeed += 0.4;
	    }
	}

	///////////// Jackhamster

	if bossnum = 37 {
	    bossmaxhealth = 320;
	    bossmaxhealth2 = 180;
	    bosspower = 6;
	    bossbulletspeed = 2.4;
	    bossmovespeed = 3;
	
		bossMagicResistance = -0.2;
	    bossExplosiveResistance = -0.2;
    
	    if champval > 0.1 {
			bossmaxhealth += 40;
	        bossmaxhealth2 += 60;
	    }
	    if champval = 0.4 {
	        bossmovespeed += 0.8;
	        bossbulletspeed += 0.4;
	    }
	}

	///////////// Crush

	if bossnum = 38 {
	    bossmaxhealth = 475;
	    bossmaxhealth2 = 400;
	    bosspower = 6;
	    bossbulletspeed = 2.4;
	    bossmovespeed = 3;
	
		bossMagicResistance = -0.2;
	    bossExplosiveResistance = 0.4;
		bossSharpSolidResistance = -0.2;
	
		bossdefense = 1;
		bossdefense2 = 1;
    
	    if champval > 0.1 {
			bossmaxhealth += 60;
	        bossmaxhealth2 += 60;
	    }
	    if champval = 0.4 {
	        bossmovespeed += 0.8;
	        bossbulletspeed += 0.4;
	    }
	}
	
	///////////// Migraine

	if bossnum = 39 {
	    bossmaxhealth = 550;
	    bossmaxhealth2 = 550;
	    bosspower = 8;
	    bossbulletspeed = 3.6;
	    bossmovespeed = 3;
	    bossknockdefense = 10;
    
	    pathBoss = 1;
		
	    if champval > 0.1 {
	        bossmaxhealth += 80;
	        bossmaxhealth2 += 80;
	    }
    
	    if champval = 0.1 {
	    }
	}
	
	
	///////////// Villain

	if bossnum = 40 {
	    bossmaxhealth = 960;
	    bossmaxhealth2 = 700;
	    bosspower = 6;
	    bossbulletspeed =  3.9;
	    bossmovespeed = 3;

		bossdefense = 2;
		bossdefense2 = 1;
    
	    if champval > 0.1 {
			bossmaxhealth += 75;
	        bossmaxhealth2 += 75;
	    }
		if champval = 0.11 {
			bossdefense = 1000;
			bossdefense2 = 1;
		}
	    if champval = 0.4 {
	        bossmovespeed += 0.8;
	        bossbulletspeed += 0.4;
	    }
	}
	
	///////////// The Veil

	if bossnum = 41 {
	    bossmaxhealth = 425;
	    bossmaxhealth2 = 550;
	    bosspower = 6;
	    bossbulletspeed = 2.4;
	    bossmovespeed = 3;
	
		bossMagicResistance = -0.3;
	    bossExplosiveResistance = 0.4;
		bossSharpSolidResistance = 0.4;
	
		bossdefense = 1;
		bossdefense2 = 1;
    
	    if champval > 0.1 {
			bossmaxhealth += 75;
	        bossmaxhealth2 += 75;
	    }
		if champval = 0.11 {
			bossdefense = 30;
			bossdefense2 = 1;
		}
	    if champval = 0.4 {
	        bossmovespeed += 0.8;
	        bossbulletspeed += 0.4;
	    }
	}

	///////////// Pocket

	if bossnum = 42 {
	    bossmaxhealth = 290;
	    bossmaxhealth2 = 160;
	    bosspower = 6;
	    bossbulletspeed = 2.5;
	    bossmovespeed = 2.5;
	
		bossEnergyResistance = -0.25;
		bossExplosiveResistance = -0.25;
    
	    if champval > 0.1 {
			bossmaxhealth += 40;
	        bossmaxhealth2 += 40;
	    }
	}

	///////////// Gutter Ball

	if bossnum = 43 {
	    bossmaxhealth = 270;
	    bossmaxhealth2 = 250;
	    bosspower = 6;
	    bossbulletspeed = 2.5;
	    bossmovespeed = 2.5;
    
		bossdefense = 1;
		bossdefense2 = 1;
	
		bossSharpSolidResistance = 0.3;
		bossExplosiveResistance = 0.2;
		bossMagicResistance = -0.4;
	
	    if champval > 0.1 {
			bossmaxhealth += 50;
	        bossmaxhealth2 += 50;
	    }
	    if champval = 0.4 {
	        bossmovespeed += 0.8;
	        bossbulletspeed += 0.4;
	    }
	}

	///////////// Tough Luck

	if bossnum = 45 {
	    bossmaxhealth = 450;
	    bossmaxhealth2 = 500;
	    bosspower = 6;
	    bossbulletspeed = 2.4;
	    bossmovespeed = 3;
	
		bossMagicResistance = -0.25;
	    bossExplosiveResistance = 0.4;
		bossSharpSolidResistance = 0.4;
	
		bossdefense = 2;
		bossdefense2 = 2;
    
	    if champval > 0.1 {
			bossmaxhealth += 40;
	        bossmaxhealth2 += 40;
	    }
	    if champval = 0.4 {
	        bossmovespeed += 0.8;
	        bossbulletspeed += 0.4;
	    }
	}
	
	///////////// Soul Collector

	if bossnum = 46 {
	    bossmaxhealth = 800;
	    bossmaxhealth2 = 850;
	    bosspower = 8;
	    bossbulletspeed = 3.85;
	    bossmovespeed = 1.75;
	    bossdefense += 3;
	    bossdefense2 += 3;
	    bossknockdefense = 40;
    
	    bossExplosiveResistance = 0.45;
	    bossSharpSolidResistance = 0.45;
		bossMagicResistance = -0.25;
    
	    if champval > 0.1 {
	        bossmaxhealth += 0;
			bossmaxhealth2 += 110;
	    }
	}
	
	///////////// Twin Horrors

	if bossnum = 47 {
	    bossmaxhealth = 300;
	    bossmaxhealth2 = 300;
	    bosspower = 8;
	    bossbulletspeed = 3.6;
	    bossmovespeed = 2;
	    bossdefense += 3;
	    bossdefense2 += 0;
	    bossknockdefense = 10;
    
	    if champval > 0.1 {
	        bossmaxhealth += 85;
			bossmaxhealth2 += 60;
	    }
		
		if champval = 0.11 {
	        bossmaxhealth = 500;
	        bossmaxhealth2 = 600;
	        finalphase = 2;
	    }
	}

	///////////// Danger Raiser

	if bossnum = 48 {
	    bossmaxhealth = 480;
	    bossmaxhealth2 = 400;
	    bosspower = 6;
	    bossbulletspeed = 2.4;
	    bossmovespeed = 3;
	
		bossMagicResistance = 0.5;
		bossExplosiveResistance = 0.25;
		bossSharpSolidResistance -= 0.2;
		bossEnergyResistance -= 0.2;
    
	    if champval > 0.1 {
			bossmaxhealth += 60;
	        bossmaxhealth2 += 60;
	    }
	    if champval >= 0.8 {
			bossmaxhealth += 60;
	        bossmaxhealth2 += 60;
	    }
	}
	
	///////////// Mind Corruptor

	if bossnum = 49 {
	    bossmaxhealth = 1080;
	    bossmaxhealth2 = 720;
	    bosspower = 8;
	    bossbulletspeed = 3.8;
	    bossmovespeed = 3.53;
    
	    bossdefense = 4;
		bossdefense2 = 3;
    
	    if champval > 0.1 {
	        bossmaxhealth += 60;
	        bossmaxhealth2 += 60;
	    }
	    if champval = 0.2 {
	        bossbulletspeed += 0.4;
	        bossmovespeed += 0.6;
	    }
	    if champval = 0.8 {
	        bossmaxhealth += 66;
	        bossmaxhealth2 += 66;
	        bossbulletspeed += 0.43;
	        bossmovespeed += 0.9;
	    }
	}
	
	///////////// Wall Of Thoughts

	if bossnum = 50 {
	    bossmaxhealth = 650;
	    bossmaxhealth2 = 650;
	    bosspower = 7;
	    bossbulletspeed = 3;
	    bossmovespeed = 0;
    
	    bossdefense = 0;
		bossdefense2 = 0;
    
	    if champval > 0.1 {
	        bossmaxhealth += 60;
	        bossmaxhealth2 += 60;
	    }
	    if champval = 0.2 {
	        bossbulletspeed += 0.4;
	        bossmovespeed += 0.6;
	    }
	    if champval = 0.8 {
	        bossmaxhealth += 66;
	        bossmaxhealth2 += 66;
	        bossbulletspeed += 0.43;
	        bossmovespeed += 0.9;
	    }
	}


	///////////// Flash Knight

	if bossnum = 51 {
	    finalphase = 3;
	    bossmaxhealth = 600;
	    bossmaxhealth2 = 350;
	    bossmaxhealth3 = 250;
	    bossdefense = 2;
	    bossdefense2 = 1;
	    bossdefense3 = 100;
	    bosspower = 6;
	    bossbulletspeed = 2.75;
	    bossmovespeed = 1.5;
	    bossattackspeed = 1;
	    bossknockdefense = 50;
	
		bossEnergyResistance = 0.1;
    
	    if champval > 0.1 {
	        bossmaxhealth += 75;
	        bossmaxhealth2 += 75;
	    }
    
	}

	///////////// Sandman

	if bossnum = 52 {
	    finalphase = 3;
	    bossmaxhealth = 600;
	    bossmaxhealth2 = 1280;
	    bossmaxhealth3 = 750;
	    bossdefense = 0;
	    bossdefense2 = 3;
	    bossdefense3 = 1;
	    bosspower = 7;
	    bossbulletspeed = 3.5;
	    bossmovespeed = 1.95;
	    bossattackspeed = 1;
	    bossknockdefense = 50;
	
		bossMagicResistance = 0.15;
		bossSharpSolidResistance = 0.15;
    
	    if champval = 0.11 {
	        bossmaxhealth = 999999;
	        finalphase = 1;
	        bossknockdefense = 10;
	        bossdefense = 999;
	    }
    
	}
	
	///////////// Dreamer x Nightmare

	if bossnum = 53 {
	    finalphase = 3;
	    bossmaxhealth = 990;
		bossmaxhealth2 = 2400;
		bossmaxhealth3 = 1400;
	    bossdefense = 0;
	    bossdefense2 = 3;
	    bossdefense3 = 3;
	    bosspower = 7;
	    bossbulletspeed = 3.75;
	    bossmovespeed = 1.95;
	    bossattackspeed = 1;
	    bossknockdefense = 50;
    
	    if champval = 0.11 {
	        bossmaxhealth = 500;
			bossmaxhealth2 = 1800;
			bossmaxhealth3 = 1500;
	        bossdefense = 999;
			bossdefense2 = 3;
			bossdefense3 = 3;
	    }
    
	}
	
	///////////// Dreamer x Nightmare

	if bossnum = 54 {
	    finalphase = 3;
	    bossmaxhealth = 3000;
		bossmaxhealth2 = 3500;
		bossmaxhealth3 = 2000;
	    bossdefense = 3;
	    bossdefense2 = 1;
	    bossdefense3 = 0;
	    bosspower = 7;
	    bossbulletspeed = 4;
	    bossmovespeed = 2;
	    bossattackspeed = 1;
	    bossknockdefense = 50;
    
	    if champval = 0.11 {
	        bossmaxhealth = 500;
			bossmaxhealth2 = 1800;
			bossmaxhealth3 = 1500;
	        bossdefense = 999;
			bossdefense2 = 3;
			bossdefense3 = 3;
	    }
    
	}
	
	///////////// Dreamer x Nightmare

	if bossnum = 55 {
	    finalphase = 2;
	    bossmaxhealth = 4500;
		bossmaxhealth2 = 5500;
	    bossdefense = 0;
	    bossdefense2 = 3;
	    bossdefense3 = 3;
	    bosspower = 7;
	    bossbulletspeed = 4.25;
	    bossmovespeed = 1.95;
	    bossattackspeed = 1;
	    bossknockdefense = 50;
    
	    if champval = 0.11 {
	        bossmaxhealth = 500;
			bossmaxhealth2 = 1800;
			bossmaxhealth3 = 1500;
	        bossdefense = 999;
			bossdefense2 = 3;
			bossdefense3 = 3;
	    }
    
	}
	
	///////////// Dream Crawler

	if bossnum = 56 {
	    bossmaxhealth = 750;
	    bossmaxhealth2 = 750;
	    bosspower = 6;
	    bossbulletspeed = 2.4;
	    bossmovespeed = 7.5;
	
		bossdefense = 3;
		bossdefense2 = 3;
    
	    if champval > 0.11 {
			bossmaxhealth += 60;
	        bossmaxhealth2 += 60;
	    }
		if champval = 0.11 {
			bossdefense = 10;
			bossdefense2 = 10;
		}
	    if champval = 0.4 {
	        bossmovespeed += 0.8;
	        bossbulletspeed += 0.4;
	    }
	}

	///////////// Puck Man

	if bossnum = 64 {
	    bossmaxhealth = 320;
	    bossmaxhealth2 = 270;
	    bosspower = 6;
	    bossmovespeed = 2.5;
	    bossbulletspeed = 3;
	    bossknockdefense = 999;
    
	    //bossImaginaryResistance = 0.1;
    
	    if champval > 0.1 {
	        bossmaxhealth += 40;
	        bossmaxhealth2 += 30;
	    }
	    if champval = 0.1 {
	        bossmovespeed += 0.5;
	    }
	    if champval = 0.8 {
			bossmaxhealth += 40;
	        bossmaxhealth2 += 30;
	        bossmovespeed += 0.59;
	        bossattackspeed += 0.25;
	        bossdefense2 += 1;
	    }
	}

	///////////// Mass Puck

	if bossnum = 65 {
	    bossmaxhealth = 600;
	    bossmaxhealth2 = 450;
	    bosspower = 7;
	    bossmovespeed = 3;
	    bossbulletspeed = 3.5;
	    bossknockdefense = 999;
    
	    bossImaginaryResistance = 0.1;
    
	    if champval > 0.1 {
	        bossmaxhealth += 50;
	        bossmaxhealth2 += 50;
	    }
	    if champval = 0.1 {
	        bossmovespeed += 0.5;
	    }
	    if champval = 0.8 {
			bossmaxhealth += 50;
	        bossmaxhealth2 += 50;
	        bossmovespeed += 0.59;
	        bossattackspeed += 0.25;
	        bossdefense2 += 1;
	    }
	}

	///////////// Spirit of Mischief

	if bossnum = 98 {
	    bossmaxhealth = 190;
	    bossmaxhealth2 = 130;
	    bosspower = 6;
	    bossbulletspeed = 2;
		bossmovespeed = 1.4;
    
	    bossExplosiveResistance = 0.3;
	    bossMagicResistance = 0.3;
	    bossEnergyResistance = -0.1;
    
	    if champval > 0.1 {
	        bossmaxhealth += 30;
	        bossmaxhealth2 += 30;
	    }
    
	    if champval = 0.8 {
			bossmaxhealth += 30;
	        bossmaxhealth2 += 30;
		
	        bossbulletspeed += 0.9;
	        bossattackspeed += 0.4;
	    }
	}
	
	///////////// Snake Eyes

	if bossnum = 81 {
	    bossmaxhealth = 340;
	    bossmaxhealth2 = 340;
	    bosspower = 6;
	    bossbulletspeed = 3.1;
	    bossmovespeed = 2.55;
    
	    if global.currentchapter > 1 {
	        bossmaxhealth += 200;
	        bossmaxhealth2 += 200;
	        bossdefense += 1;
	    }
	    if global.currentchapter > 2 {
	        bossmaxhealth += 270;
	        bossmaxhealth2 += 270;
	        bossdefense += 1;
	    }
	    if global.currentchapter > 3 {
	        bossmaxhealth += 330;
	        bossmaxhealth2 += 330;
			bossdefense += 1;
	        bossattackspeed += 0.2;
	    }
		
		bossdefense2 = bossdefense;
	}
	
	///////////// King of Beasts

	if bossnum = 82 {
	    bossmaxhealth = 300;
	    bossmaxhealth2 = 300;
	    bosspower = 6;
	    bossbulletspeed = 3.1;
	    bossmovespeed = 2.55;
    
	    if global.currentchapter > 1 {
	        bossmaxhealth += 200;
	        bossmaxhealth2 += 200;
	        bossdefense2 += 0;
	    }
	    if global.currentchapter > 2 {
	        bossmaxhealth += 260;
	        bossmaxhealth2 += 260;
	        bossdefense += 1;
	    }
	    if global.currentchapter > 3 {
	        bossmaxhealth += 320;
	        bossmaxhealth2 += 320;
			bossdefense += 1;
	        bossattackspeed += 0.2;
	    }
		
		bossdefense2 = bossdefense;
	}
	
	///////////// The Construct

	if bossnum = 83 {
	    bossmaxhealth = 375;
	    bossmaxhealth2 = 225;
	    bosspower = 6;
	    bossbulletspeed = 3;
	    bossmovespeed = 2.4;
		
		bossdefense = 2;
    
	    if global.currentchapter > 1 {
	        bossmaxhealth += 250;
	        bossmaxhealth2 += 150;
	        bossdefense += 1;
	    }
	    if global.currentchapter > 2 {
	        bossmaxhealth += 310;
	        bossmaxhealth2 += 190;
	        bossdefense += 1;
	    }
	    if global.currentchapter > 3 {
	        bossmaxhealth += 380;
	        bossmaxhealth2 += 240;
			bossdefense += 1;
	        bossattackspeed += 0.2;
	    }
		bossdefense2 = bossdefense - 1;
		
	}
	
	///////////// Brainwash

	if bossnum = 84 {
	    bossmaxhealth = 350;
	    bossmaxhealth2 = 250;
	    bosspower = 6;
	    bossbulletspeed = 3;
	    bossmovespeed = 2.4;
    
	    if global.currentchapter > 1 {
	        bossmaxhealth += 240;
	        bossmaxhealth2 += 160;
	    }
	    if global.currentchapter > 2 {
	        bossmaxhealth += 300;
	        bossmaxhealth2 += 200;
	    }
	    if global.currentchapter > 3 {
	        bossmaxhealth += 360;
	        bossmaxhealth2 += 240;
	        bossattackspeed += 0.2;
	    }
		
	}
	
	///////////// Bed Bug

	if bossnum = 86 {
	    bossmaxhealth = 200;
	    bossmaxhealth2 = 200;
	    bosspower = 6;
	    bossbulletspeed = 3.1;
	    bossmovespeed = 2.55;
		
		bossdefense = 5;
    
	    if global.currentchapter > 1 {
	        bossmaxhealth += 125;
	        bossmaxhealth2 += 125;
	        bossdefense += 1;
	    }
	    if global.currentchapter > 2 {
	        bossmaxhealth += 160;
	        bossmaxhealth2 += 160;
	        bossdefense += 2;
	    }
	    if global.currentchapter > 3 {
	        bossmaxhealth += 220;
	        bossmaxhealth2 += 220;
			bossdefense += 3;
	        bossattackspeed += 0.2;
	    }
		
		bossdefense2 = bossdefense
	}
	
	///////////// Dungeon Master

	if bossnum = 87 {
	    bossmaxhealth = 300;
	    bossmaxhealth2 = 270;
	    bosspower = 6;
	    bossbulletspeed = 3;
	    bossmovespeed = 2.7;
		
		bossdefense = 1;
    
	    if global.currentchapter > 1 {
	        bossmaxhealth += 200;
	        bossmaxhealth2 += 190;
	        bossdefense += 1;
	    }
	    if global.currentchapter > 2 {
	        bossmaxhealth += 260;
	        bossmaxhealth2 += 250;
	        bossdefense += 1;
	    }
	    if global.currentchapter > 3 {
	        bossmaxhealth += 320;
	        bossmaxhealth2 += 300;
			bossdefense += 1;
	        bossattackspeed += 0.2;
	    }
		
		bossdefense2 = bossdefense;
	}
	
	///////////// Sleep Caster

	if bossnum = 89 {
	    bossmaxhealth = 330;
	    bossmaxhealth2 = 330;
	    bosspower = 6;
	    bossbulletspeed = 3.1;
	    bossmovespeed = 2.55;
    
	    if global.currentchapter > 1 {
	        bossmaxhealth += 210;
	        bossmaxhealth2 += 210;
	        bossdefense += 0;
	    }
	    if global.currentchapter > 2 {
	        bossmaxhealth += 275;
	        bossmaxhealth2 += 275;
	        bossdefense += 1;
	    }
	    if global.currentchapter > 3 {
	        bossmaxhealth += 350;
	        bossmaxhealth2 += 350;
	        bossattackspeed += 0.2;
	    }
		
		bossdefense2 = bossdefense;
	}
	
	if bossnum > 80 and bossnum < 90 and room = State_Room {
		bossmaxhealth = bossmaxhealth * 1.75;
		bossmaxhealth2 = bossmaxhealth2 * 1.75;
	}

	///////////// Masked Hope Spirit

	if bossnum = 111 {
	    bossmaxhealth = 75;
	    bossmaxhealth2 = 350;
	    bosspower = 6;
	    bossbulletspeed = 3.1;
	    bossmovespeed = 2.55;
    
	}

	///////////// Masked Bliss Spirit

	if bossnum = 112 {
	    bossmaxhealth = 75;
	    bossmaxhealth2 = 350;
	    bosspower = 6;
	    bossbulletspeed = 3;
	    bossmovespeed = 2.7;
    
	    if champval > 0.1 {
	        bossmaxhealth += 30;
	        bossmaxhealth2 += 30;
	    }
	}

	///////////// Masked Vanity Spirit

	if bossnum = 113 {
	    bossmaxhealth = 75;
	    bossmaxhealth2 = 350;
	    bosspower = 6;
	    bossbulletspeed = 2.8;
	    bossmovespeed = 2.4;
    

	}

	///////////// Masked Loathing Spirit

	if bossnum = 114 {
	    bossmaxhealth = 75;
	    bossmaxhealth2 = 350;
	    bosspower = 6;
	    bossbulletspeed = 3;
	    bossmovespeed = 2.1;

	}

	///////////// Masked Paranoia Spirit

	if bossnum = 115 {
	    bossmaxhealth = 75;
	    bossmaxhealth2 = 350;
	    bosspower = 6;
	    bossbulletspeed = 3.25;
	    bossmovespeed = 2.7;

	}

	///////////// Masked Despair Spirit

	if bossnum = 116 {
	    bossmaxhealth = 75;
	    bossmaxhealth2 = 350;
	    bosspower = 6;
	    bossbulletspeed = 3.15;
	    bossmovespeed = 2.1;

	}
	
	if bossnum >= 111 and bossnum <= 116 {
		bossmaxhealth = 75;
	    bossmaxhealth2 = 450;
    
	    if champval > 0.1 {
	        bossmaxhealth += 30;
	        bossmaxhealth2 += 30;
	    }
	    if global.currentchapter > 1 {
	        bossmaxhealth += 20;
	        bossmaxhealth2 += 450;
	        bossdefense2 += 1;
	    }
	    if global.currentchapter > 2 {
	        bossmaxhealth += 20;
	        bossmaxhealth2 += 650;
	        bossdefense2 += 1;
	    }
	    if global.currentchapter > 3 {
	        bossmaxhealth += 20;
	        bossmaxhealth2 += 900;
			bossdefense2 += 1;
	        bossattackspeed += 0.1;
	    }
	}
	*/
	
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
