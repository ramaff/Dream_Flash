function scr_Boss_Memory() {
	
	recollectionSize = 0.5;
	
	//show_debug_message(string(itemVal))
	if variable_struct_exists(global.boss_stats, string(itemVal)) {
		current_boss_stats = variable_struct_get(global.boss_stats, string(itemVal))
	} else {
		return	
	}
	
	//show_debug_message(string(current_boss_stats))
	
	var rememberance = global.recollectionBoss[string_digits(itemVal)]
	
	if rememberance >= 1 {
		if variable_struct_exists(current_boss_stats, "Name") {
			recollectionBString[0] = current_boss_stats.Name
		}
		if variable_struct_exists(current_boss_stats, "Recollection_Sprite") {
			recollectionBSprite[0] = asset_get_index(current_boss_stats.Recollection_Sprite)
			if recollectionBSprite[0] = -1 {
				recollectionBSprite[0] = spr_Soul_Shot_Art;	
			}
		}
		if variable_struct_exists(current_boss_stats, "recollectionSize") {
			recollectionSize = current_boss_stats.recollectionSize
		}
		if variable_struct_exists(current_boss_stats, "recollectionDescription") {
			recollectionDescription = current_boss_stats.recollectionDescription
		}
		if variable_struct_exists(current_boss_stats, "Description") {
			recollectionDescription = current_boss_stats.Description
		}
		if variable_struct_exists(current_boss_stats, "Palette") {
			recollectionPalette = asset_get_index(current_boss_stats.Palette)
		}
		var i = 0;
		for(i = 0; i < 10; i++) {
			/*
			if variable_struct_exists(current_boss_stats, "Name") {
				recollectionBString[i] = current_boss_stats.Name
			}
			if variable_struct_exists(current_boss_stats, "Recollection_Sprite") {
				recollectionBSprite[i] = asset_get_index(current_boss_stats.Recollection_Sprite)
				if recollectionBSprite[i] = -1 {
					recollectionBSprite[i] = spr_Soul_Shot_Art;	
				}
			} */
			if variable_struct_exists(current_boss_stats, "Boss_Danger") {
				recollectionDanger[i] = current_boss_stats.Boss_Danger
			}
			if variable_struct_exists(current_boss_stats, "Health_Phase_1") {
				recollectionHealth1[i] = current_boss_stats.Health_Phase_1
			}
			if variable_struct_exists(current_boss_stats, "Health_Phase_2") {
				recollectionHealth2[i] = current_boss_stats.Health_Phase_2
			}
			if variable_struct_exists(current_boss_stats, "Health_Phase_3") {
				recollectionHealth3[i] = current_boss_stats.Health_Phase_3
			}
			if variable_struct_exists(current_boss_stats, "Defense_Phase_1") {
				recollectionDefense1[i] = current_boss_stats.Defense_Phase_1
			}
			if variable_struct_exists(current_boss_stats, "Defense_Phase_2") {
				recollectionDefense2[i] = current_boss_stats.Defense_Phase_2
			}
			if variable_struct_exists(current_boss_stats, "Defense_Phase_3") {
				recollectionDefense3[i] = current_boss_stats.Defense_Phase_3
			}
			
		}
		for(i = 0; i < 10; i++) {
			var champstr = "Champ " + string(i);
			if variable_struct_exists(current_boss_stats, champstr) {
				current_champ_stats = variable_struct_get(current_boss_stats, string(champstr))
			} else {
				continue
			}
			if variable_struct_exists(current_champ_stats, "Name") {
				recollectionBString[i] = current_champ_stats.Name
			}
			if variable_struct_exists(current_champ_stats, "Recollection_Sprite") {
				recollectionBSprite[i] = asset_get_index(current_champ_stats.Recollection_Sprite)
				if recollectionBSprite[i] = -1 {
					recollectionBSprite[i] = spr_Soul_Shot_Art;	
				}
			}
			if variable_struct_exists(current_champ_stats, "Boss_Danger") {
				recollectionDanger[i] = current_champ_stats.Boss_Danger
			}
			if variable_struct_exists(current_champ_stats, "Health_Phase_1") {
				recollectionHealth1[i] = current_champ_stats.Health_Phase_1
			}
			if variable_struct_exists(current_champ_stats, "Health_Phase_2") {
				recollectionHealth2[i] = current_champ_stats.Health_Phase_2
			}
			if variable_struct_exists(current_champ_stats, "Health_Phase_3") {
				recollectionHealth3[i] = current_champ_stats.Health_Phase_3
			}
			if variable_struct_exists(current_champ_stats, "Defense_Phase_1") {
				recollectionDefense1[i] = current_champ_stats.Defense_Phase_1
			}
			if variable_struct_exists(current_champ_stats, "Defense_Phase_2") {
				recollectionDefense2[i] = current_champ_stats.Defense_Phase_2
			}
			if variable_struct_exists(current_champ_stats, "Defense_Phase_3") {
				recollectionDefense3[i] = current_champ_stats.Defense_Phase_3
			}
			if variable_struct_exists(current_champ_stats, "Palette_Index") {
				recollectionPaletteIndex[i] = current_champ_stats.Palette_Index
				//show_debug_message(recollectionPaletteIndex[i])
			}
			
		}
	}
	
	recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	
	var c = 0;
	for(c = 0; c < 10; c++) {
		if c > 0 {
			recollectionDanger[c] += 1 + (0.125 * (recollectionDanger[0] - 1));	
		}
		if c > 7 {
			recollectionDanger[c] += 1 + (0.125 * (recollectionDanger[0] - 1));	
		}
	}
	
	if string_digits(itemVal) > 80 and string_digits(itemVal) < 90 {
		recollectionDanger[1] = 8;
		recollectionDanger[2] = 13;
		recollectionDanger[3] = 18;
	}

	if recollectionBSprite[0] != spr_Recollection_Unknown_Boss_Icon {
	recollectionSprite = recollectionBSprite[0];
	recollectionString = recollectionBString[0];
	}
	
	/*
	if itemVal = "Boss 001" and global.recollectionBoss[1] >= 1 {
	    recollectionBString[0] = "Wall Watcher";
	    recollectionBSprite[0] = reco_Watcher_Wall;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 200;
	        recollectionHealth2[i] = 200;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 1;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = -25;
	    }
	
		recollectionDescription = "A Strange figment of your imagination, wanders around the edges of the dreamscape shooting aimlessly.";
	
		recollectionBString[1] = "Green Wall";
		recollectionBSprite[1] = spr_Green_Wall;
		recollectionHealth1[1] = 240;
	    recollectionHealth2[1] = 240;
		recollectionBString[2] = "Laser Wall";
		recollectionBSprite[2] = spr_Laser_Wall;
		recollectionHealth1[2] = 240;
	    recollectionHealth2[2] = 240;
		recollectionBString[8] = "Pink Wall";
		recollectionBSprite[8] = spr_Pink_Wall;
		recollectionHealth1[8] = 280;
	    recollectionHealth2[8] = 280;
	}

	if itemVal = "Boss 002" and global.recollectionBoss[2] >= 1 {
	    recollectionBString[0] = "Deep Watcher";
	    recollectionBSprite[0] = reco_Deep_Watcher;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 440;
	        recollectionHealth2[i] = 350;
	        recollectionDefense1[i] = 1;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 7;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 25;
	        recollectionExplosiveResist[i] = 25;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = -25;
	    }
	
		recollectionDescription = "Found deep in the depths of your psyche. Can manifest explosions all over the dreamscape!";
	
		recollectionBString[1] = "Deep Explosive";
		recollectionBSprite[1] = spr_Yellow_Miner;
		recollectionHealth1[1] = 510;
	    recollectionHealth2[1] = 420;
		recollectionBString[2] = "Deep Armour";
		recollectionBSprite[2] = spr_Armoured_Miner;
		recollectionHealth1[2] = 510;
	    recollectionHealth2[2] = 420;
		recollectionDefense1[2] = 2;
	    recollectionDefense2[2] = 2;
		recollectionBString[3] = "Deep Trail";
		recollectionBSprite[3] = spr_Green_Miner;
		recollectionHealth1[3] = 510;
	    recollectionHealth2[3] = 420;
		recollectionBString[8] = "Deep Maelstrom";
		recollectionBSprite[8] = spr_Purple_Miner;
		recollectionHealth1[8] = 580;
	    recollectionHealth2[8] = 490;
	}

	if itemVal = "Boss 003" and global.recollectionBoss[3] >= 1 {
	    recollectionBString[0] = "Growing Sorrows";
	    recollectionBSprite[0] = reco_Growing_Sorrows;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 290;
	        recollectionHealth2[i] = 230;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 4;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = -10;
	        recollectionExplosiveResist[i] = -10;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 10;
	    }
	
		recollectionDescription = "This boss grows in sadness as the fight goes on.";
	
		recollectionBString[1] = "Feel Sorrows";
		recollectionBSprite[1] = spr_Feel_Sorrow;
		recollectionHealth1[1] = 340;
	    recollectionHealth2[1] = 270;
		recollectionBString[2] = "Toxic Sorrows";
		recollectionBSprite[2] = spr_Toxic_Sorrow;
		recollectionHealth1[2] = 340;
	    recollectionHealth2[2] = 270;
		recollectionBString[8] = "Sonic Sorrows";
		recollectionBSprite[8] = spr_Sonic_Sorrow;
		recollectionHealth1[8] = 390;
	    recollectionHealth2[8] = 310;
	}

	if itemVal = "Boss 004" and global.recollectionBoss[4] >= 1 {
	    recollectionBString[0] = "Soaring Sorrows";
	    recollectionBSprite[0] = reco_Soaring_Sorrows;
	    recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 590;
	        recollectionHealth2[i] = 530;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 10;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = -10;
	        recollectionExplosiveResist[i] = -10;
	        recollectionMagicResist[i] = 30;
	        recollectionEnergyResist[i] = 30;
	    }
	
		recollectionDescription = "Feeds off the sorrow of others. Capable of using advanced attacks.";
	
		recollectionBString[1] = "Arcane Sorrows";
		recollectionBSprite[1] = spr_Arcane_Sorrows;
		recollectionHealth1[1] = 675;
	    recollectionHealth2[1] = 595;
	}

	if itemVal = "Boss 005" and global.recollectionBoss[5] >= 1 {
	    recollectionBString[0] = "Thought Cloud";
	    recollectionBSprite[0] = reco_Thought_Cloud;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 200;
	        recollectionHealth2[i] = 180;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 1;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = -20;
	        recollectionMagicResist[i] = -20;
	        recollectionEnergyResist[i] = 0;
		}
		recollectionDescription = "Your thoughts and dreams in the form of a crying rain cloud.";
	
		recollectionBString[1] = "Rainy Cloud";
		recollectionBSprite[1] = spr_Rainy_Cloud;
		recollectionHealth1[1] = 250;
	    recollectionHealth2[1] = 210;
		recollectionBString[2] = "Cloudy Cloud";
		recollectionBSprite[2] = spr_Cloudy_Cloud;
		recollectionHealth1[2] = 250;
	    recollectionHealth2[2] = 210;
		recollectionBString[3] = "Crush Cloud";
		recollectionBSprite[3] = spr_Crush_Cloud;
		recollectionHealth1[3] = 250;
	    recollectionHealth2[3] = 210;
		recollectionBString[8] = "Rainbow Cloud";
		recollectionBSprite[8] = spr_Rainbow_Cloud;
		recollectionHealth1[8] = 300;
	    recollectionHealth2[8] = 240;
	}

	if itemVal = "Boss 006" and global.recollectionBoss[6] >= 1 {
	    recollectionBString[0] = "Infatuation Cloud";
	    recollectionBSprite[0] = reco_Infatuation_Cloud;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 340;
	        recollectionHealth2[i] = 310;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 4;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = -20;
	        recollectionMagicResist[i] = -20;
	        recollectionEnergyResist[i] = 0;
	    }

		recollectionDescription = "Thoughts of lust forming together to make strange weather patterns.";

		recollectionBString[1] = "Fluffy Cloud";
		recollectionBSprite[1] = spr_Fluffy_Cloud;
		recollectionHealth1[1] = 390;
	    recollectionHealth2[1] = 360;
		recollectionBString[2] = "Sprinkler Cloud";
		recollectionBSprite[2] = spr_Sprinkler_Cloud;
		recollectionHealth1[2] = 390;
	    recollectionHealth2[2] = 360;
	}

	if itemVal = "Boss 007" and global.recollectionBoss[7] >= 1 {
	    recollectionBString[0] = "Storm Cloud";
	    recollectionBSprite[0] = reco_Storm_Cloud;
	    recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 510;
	        recollectionHealth2[i] = 490;
	        recollectionDefense1[i] = 1;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 8;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = -20;
	        recollectionMagicResist[i] = -20;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "These dark thoughts start to cloud your judgement.";
	
		recollectionBString[1] = "Flood Cloud";
		recollectionBSprite[1] = spr_Flood_Cloud;
		recollectionHealth1[1] = 585;
	    recollectionHealth2[1] = 560;
		recollectionBString[2] = "Thunder Cloud";
		recollectionBSprite[2] = spr_Thunder_Cloud;
		recollectionHealth1[2] = 585;
	    recollectionHealth2[2] = 560;
		recollectionEnergyResist[2] = 50;
	}

	if itemVal = "Boss 008" and global.recollectionBoss[8] >= 1 {
	    recollectionBString[0] = "Nightmare Cloud";
	    recollectionBSprite[0] = reco_Nightmare_Cloud;
	    recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 750;
	        recollectionHealth2[i] = 730;
	        recollectionDefense1[i] = 1;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 13;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = -30;
	        recollectionMagicResist[i] = -30;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Storm of evil, uses immensely powerful rain attacks and can spawn more nightmare clouds.";
	
	}

	if itemVal = "Boss 009" and global.recollectionBoss[9] >= 1 {
	    recollectionBString[0] = "Jello Amorphous";
	    recollectionBSprite[0] = reco_Jello_Amorphous;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 200;
	        recollectionHealth2[i] = 170;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 1;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 25;
	        recollectionExplosiveResist[i] = 25;
	        recollectionMagicResist[i] = -25;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Big Slime jumps around and spawns more jello.";

		recollectionBString[1] = "Corrosive Jello";
		recollectionBSprite[1] = spr_Corrosive_Amorphous;
		recollectionHealth1[1] = 245;
	    recollectionHealth2[1] = 200;
		recollectionBString[2] = "Bubble Jello";
		recollectionBSprite[2] = spr_Bubble_Amorphous;
		recollectionHealth1[2] = 245;
	    recollectionHealth2[2] = 200;
		recollectionBString[8] = "Ink Jello";
		recollectionBSprite[8] = spr_Ink_Amorphous;
		recollectionHealth1[8] = 290;
	    recollectionHealth2[8] = 230;

	}

	if itemVal = "Boss 010" and global.recollectionBoss[10] >= 1 {
	    recollectionBString[0] = "Agony Amorphous";
	    recollectionBSprite[0] = reco_Agony_Amorphous;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 400;
	        recollectionHealth2[i] = 300;
	        recollectionDefense1[i] = 1;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 5;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 35;
	        recollectionExplosiveResist[i] = 35;
	        recollectionMagicResist[i] = -25;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "This foe seems distressed at the sight of you. Existence is pain and it will try to spread some of that pain to you.";
	
		recollectionBString[1] = "Spike Jello";
		recollectionBSprite[1] = spr_Spike_Amorphous;
		recollectionHealth1[1] = 460;
	    recollectionHealth2[1] = 350;
		recollectionBString[2] = "Radioactive Jello";
		recollectionBSprite[2] = spr_Radioactive_Amorphous;
		recollectionHealth1[2] = 460;
	    recollectionHealth2[2] = 350;
	}

	if itemVal = "Boss 011" and global.recollectionBoss[11] >= 1 {
	    recollectionBString[0] = "Amorphous Prime";
	    recollectionBSprite[0] = reco_Amorphous_Prime;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 550;
	        recollectionHealth2[i] = 450;
	        recollectionDefense1[i] = 2;
	        recollectionDefense2[i] = 2;
	        recollectionDanger[i] = 9;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 45;
	        recollectionExplosiveResist[i] = 45;
	        recollectionMagicResist[i] = -25;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "The apex of slime based bosses, both powerful and agile.";
	
	}

	if itemVal = "Boss 012" and global.recollectionBoss[12] >= 1 {
	    recollectionBString[0] = "Hand of the Accuser";
	    recollectionBSprite[0] = reco_Hand_of_the_Accuser;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 140;
	        recollectionHealth2[i] = 160;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 1;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = -20;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Points and shoots at those accused.";
	
		recollectionBString[1] = "Blind Accuser";
		recollectionBSprite[1] = reco_Blind_Accuser;
		recollectionHealth1[1] = 160;
	    recollectionHealth2[1] = 180;
		recollectionBString[2] = "Angry Pointer";
		recollectionBSprite[2] = reco_Angry_Pointer;
		recollectionHealth1[2] = 160;
	    recollectionHealth2[2] = 180;
		recollectionBString[8] = "Punch Accuser";
		recollectionBSprite[8] = reco_Punch_Pointer;
		recollectionHealth1[8] = 180;
	    recollectionHealth2[8] = 200;
	}

	if itemVal = "Boss 013" and global.recollectionBoss[13] >= 1 {
	    recollectionBString[0] = "Cursed Clappers";
	    recollectionBSprite[0] = reco_Cursed_Clapper;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 150;
	        recollectionHealth2[i] = 120;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 2;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = -20;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 10;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Pair of hands that move fast and use powerful applause to damage the soul.";
	
		recollectionBString[1] = "Swift Clapper";
		recollectionBSprite[1] = spr_Swift_Clapper;
		recollectionHealth1[1] = 170;
	    recollectionHealth2[1] = 140;
		recollectionBString[2] = "Mine Sweeper";
		recollectionBSprite[2] = spr_Minesweeper_Clapper;
		recollectionHealth1[2] = 170;
	    recollectionHealth2[2] = 140;
		recollectionBString[8] = "Grim Grabber";
		recollectionBSprite[8] = spr_Angry_Pointer;
		recollectionHealth1[8] = 170;
	    recollectionHealth2[8] = 140;
	}

	if itemVal = "Boss 014" and global.recollectionBoss[14] >= 1 {
	    recollectionBString[0] = "Spooked Spirit";
	    recollectionBSprite[0] = reco_Spooky_Spirit;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 300;
	        recollectionHealth2[i] = 230;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 4;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 10;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "This spirit is scared, causing it to shoot unpredictable bad energy at you.";
	
		recollectionBString[1] = "Ecto Spirit";
		recollectionBSprite[1] = spr_Ecto_Spirit;
		recollectionHealth1[1] = 330;
	    recollectionHealth2[1] = 260;
		recollectionBString[2] = "Distorted Spirit";
		recollectionBSprite[2] = spr_Distorted_Spirit;
		recollectionHealth1[2] = 330;
	    recollectionHealth2[2] = 260;
		recollectionBString[8] = "Terrifying Spirit";
		recollectionBSprite[8] = spr_Terrifying_Spirit;
		recollectionHealth1[8] = 360;
	    recollectionHealth2[8] = 390;
	}

	if itemVal = "Boss 015" and global.recollectionBoss[15] >= 1 {
	    recollectionBString[0] = "Wicked Spectre";
	    recollectionBSprite[0] = reco_Wicked_Spectre;
	    recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 590;
	        recollectionHealth2[i] = 530;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 10;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 50;
	        recollectionExplosiveResist[i] = -25;
	        recollectionMagicResist[i] = 25;
	        recollectionEnergyResist[i] = 25;
	    }
	
		recollectionDescription = "Strong and Dangerous apparition that has complete control over all of its projectiles!";
	
		recollectionBString[1] = "Chilling Spectre";
		recollectionBSprite[1] = spr_Chilling_Spectre;
		recollectionHealth1[1] = 680;
	    recollectionHealth2[1] = 600;
		recollectionBString[2] = "Cursed Spectre";
		recollectionBSprite[2] = spr_Cursed_Spectre;
		recollectionHealth1[2] = 680;
	    recollectionHealth2[2] = 600;
	}

	if itemVal = "Boss 016" and global.recollectionBoss[16] >= 1 {
	    recollectionBString[0] = "Horror Stack";
	    recollectionBSprite[0] = reco_Horror_Stack;
	    recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 200;
	        recollectionHealth2[i] = 125;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 2;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = -25;
	    }
	
		recollectionDescription = "These three bosses combine into one menace.";
	
		recollectionBString[1] = "Horror Totem";
		recollectionBSprite[1] = spr_Horror_Totem;
		recollectionHealth1[1] = 200;
	    recollectionHealth2[1] = 125;
		recollectionBString[2] = "Metal Stack";
		recollectionBSprite[2] = spr_Metal_Stack;
		recollectionHealth1[2] = 200;
	    recollectionHealth2[2] = 150;
		recollectionSharpResist[2] = 50;
		recollectionEnergyResist[2] = 40;
		recollectionBString[8] = "Horror Tower";
		recollectionBSprite[8] = spr_Tower_Stack;
		recollectionHealth1[8] = 200;
	    recollectionHealth2[8] = 175;
		recollectionDefense1[8] = 1;
	    recollectionDefense2[8] = 1;
		recollectionExplosiveResist[8] = -30;
		recollectionSharpResist[8] = 40;
		recollectionMagicResist[8] = 40;
	}

	if itemVal = "Boss 017" and global.recollectionBoss[17] >= 1 {
	    recollectionBString[0] = "Twister Devil";
	    recollectionBSprite[0] = reco_Twister_Demon;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 355;
	        recollectionHealth2[i] = 425;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 6;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 25;
	        recollectionExplosiveResist[i] = -15;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 25;
	    }
	
		recollectionDescription = "Chaotic Demon, capable of using the power of wind and tornadoes to aid in its unpredictable attacks!";
	
		recollectionBString[1] = "Vortex Devil";
		recollectionBSprite[1] = spr_Vortex_Demon;
		recollectionHealth1[1] = 405;
	    recollectionHealth2[1] = 485;
		recollectionBString[2] = "Entropy Devil";
		recollectionBSprite[2] = spr_Entropy_Demon;
		recollectionHealth1[2] = 405;
	    recollectionHealth2[2] = 485;
	}

	if itemVal = "Boss 018" and global.recollectionBoss[18] >= 1 {
	    recollectionBString[0] = "Fire Starter";
	    recollectionBSprite[0] = reco_Fire_Starter;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 270;
	        recollectionHealth2[i] = 220;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 3;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 25;
	        recollectionMagicResist[i] = 50;
	        recollectionEnergyResist[i] = 25;
	    }
	
		recollectionDescription = "Powerful spirit, likes to start fires and shoot a lot of accelerating shots.";
	
		recollectionBString[1] = "Magic Starter";
		recollectionBSprite[1] = spr_Magic_Starter;
		recollectionHealth1[1] = 300;
	    recollectionHealth2[1] = 270;
		recollectionMagicResist[1] = 75;
		recollectionBString[2] = "Explosion Starter";
		recollectionBSprite[2] = spr_Explosive_Starter;
		recollectionHealth1[2] = 300;
	    recollectionHealth2[2] = 270;
		recollectionExplosiveResist[2] = 75;
		recollectionBString[3] = "Thunder Starter";
		recollectionBSprite[3] = spr_Energy_Starter;
		recollectionHealth1[3] = 300;
	    recollectionHealth2[3] = 270;
		recollectionEnergyResist[3] = 75;
	}

	if itemVal = "Boss 019" and global.recollectionBoss[19] >= 1 {
	    recollectionBString[0] = "The Ghoul of Gestures";
	    recollectionBSprite[0] = reco_Tri_Ghoul;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 210;
	        recollectionHealth2[i] = 105;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 2;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = -25;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Has three Guardian hands orbiting it and is capable of shooting from all three of them.";

		recollectionBString[1] = "Shooty Ghoul";
		recollectionBSprite[1] = spr_Shooty_Ghoul;
		recollectionHealth1[1] = 240;
	    recollectionHealth2[1] = 135;
		recollectionBString[8] = "Blast Ghoul";
		recollectionBSprite[8] = spr_Blast_Ghoul;
		recollectionHealth1[8] = 270;
	    recollectionHealth2[8] = 165;
	}

	if itemVal = "Boss 020" and global.recollectionBoss[20] >= 1 {
	    recollectionBString[0] = "Manifest Spire";
	    recollectionBSprite[0] = reco_Manifest_Core;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 400;
	        recollectionHealth2[i] = 250;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 4;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = "?";
	        recollectionExplosiveResist[i] = "?";
	        recollectionMagicResist[i] = "?";
	        recollectionEnergyResist[i] = "?";
	    }
	
	    recollectionDescription = "Strange construct that can manifest all kinds of other figures.";
	
		recollectionBString[1] = "Vortex Spire";
		recollectionBSprite[1] = spr_Vortex_Core;
		recollectionHealth1[1] = 400;
	    recollectionHealth2[1] = 300;
		recollectionBString[2] = "Queen Spire";
		recollectionBSprite[2] = spr_Queen_Core;
		recollectionHealth1[2] = 400;
	    recollectionHealth2[2] = 300;
	}

	if itemVal = "Boss 021" and global.recollectionBoss[21] >= 1 {
	    recollectionBString[0] = "Blind Hunger";
	    recollectionBSprite[0] = reco_Blind_Hunger;
	    recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 570;
	        recollectionHealth2[i] = 720;
	        recollectionDefense1[i] = 4;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 12;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 50;
	        recollectionExplosiveResist[i] = 25;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = -25;
	        recollectionDescription = "Can't see, but that doesn't stop this terrifying enemy from using dangerous attacks to damage your soul!";
	    }
	
		recollectionBString[1] = "Alcoholic Hunger";
		recollectionBSprite[1] = spr_Alcoholic_Hunger;
		recollectionHealth1[1] = 655;
	    recollectionHealth2[1] = 825;
		recollectionBString[2] = "Midnight Hunger";
		recollectionBSprite[2] = spr_Midnight_Hunger;
		recollectionHealth1[2] = 655;
	    recollectionHealth2[2] = 825;
	}

	if itemVal = "Boss 022" and global.recollectionBoss[22] >= 1 {
	    recollectionBString[0] = "Guardian";
	    recollectionBSprite[0] = reco_Guardian_of_Knowing;
	    recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 610;
	        recollectionHealth2[i] = 510;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 10;
	        recollectionImaginaryResist[i] = 15;
	        recollectionSharpResist[i] = -20;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 40;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "All Knowing boss uses orbs of pure recollection to attack the soul.";
	
	
	}

	if itemVal = "Boss 023" and global.recollectionBoss[23] >= 1 {
	    recollectionBString[0] = "Heart Ache";
	    recollectionBSprite[0] = reco_Heart_Ache;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 390;
	        recollectionHealth2[i] = 300;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 5;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = -20;
	        recollectionExplosiveResist[i] = -20;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 40;
	    }
	
		recollectionDescription = "This heart aches in pain and horror. Splits into smaller versions of itself.";
	
	
	}

	if itemVal = "Boss 024" and global.recollectionBoss[24] >= 1 {
	    recollectionBString[0] = "Ninja Spirit";
	    recollectionBSprite[0] = reco_Ninja_Spirit;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 240;
	        recollectionHealth2[i] = 180;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 2;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 25;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = -25;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Throws shurikens at the soul, which can home in and cause trouble.";
	
		recollectionBString[1] = "White Belt Ninja";
		recollectionBSprite[1] = spr_White_Belt_Ninja;
		recollectionHealth1[1] = 270;
	    recollectionHealth2[1] = 210;
		recollectionBString[2] = "Black Belt Ninja";
		recollectionBSprite[2] = spr_Black_Belt_Ninja;
		recollectionHealth1[2] = 270;
	    recollectionHealth2[2] = 210;
	}

	if itemVal = "Boss 025" and global.recollectionBoss[25] >= 1 {
	    recollectionBString[0] = "Wisper";
	    recollectionBSprite[0] = reco_Wisper;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 280;
	        recollectionHealth2[i] = 280;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 3;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = -20;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 25;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Silent Threat, can ditch its corporeal form and split into two equally dangerous spirits.";
	
		recollectionBString[1] = "Air Wisper";
		recollectionBSprite[1] = spr_Air_Wisper;
		recollectionHealth1[1] = 330;
	    recollectionHealth2[1] = 300;
		recollectionBString[2] = "Burst Wisper";
		recollectionBSprite[2] = spr_Burst_Wisper;
		recollectionHealth1[2] = 330;
	    recollectionHealth2[2] = 300;
	}

	if itemVal = "Boss 026" and global.recollectionBoss[26] >= 1 {
	    recollectionBString[0] = "Manic Wall Mage";
	    recollectionBSprite[0] = reco_Manic_Wall_Mage;
	    recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 535;
	        recollectionHealth2[i] = 435;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 8;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 90;
	        recollectionEnergyResist[i] = -30;
	    }
	
		recollectionDescription = "Armed in the magic craft of making walls of bullets!";
	
		recollectionBString[1] = "Bullet Wall Mage";
		recollectionBSprite[1] = spr_Projectile_Wall_Mage;
		recollectionHealth1[1] = 595;
	    recollectionHealth2[1] = 495;
	}

	if itemVal = "Boss 027" and global.recollectionBoss[27] >= 1 {
	    recollectionBString[0] = "Crazy Eyes";
	    recollectionBSprite[0] = reco_Crazy_Eye;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 190;
	        recollectionHealth2[i] = 100;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 5;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = -25;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
	    recollectionDescription = "Pair of Erratic and Unpredicatable Bosses that see all.";
	
		recollectionBString[1] = "Phaser Eye";
		recollectionBSprite[1] = spr_Phaser_Eye;
		recollectionHealth1[1] = 200;
	    recollectionHealth2[1] = 225;
	}
	
	if itemVal = "Boss 028" and global.recollectionBoss[28] >= 1 {
	    recollectionBString[0] = "Phase Crawler";
	    recollectionBSprite[0] = reco_Phase_Crawler;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 650;
	        recollectionHealth2[i] = 550;
	        recollectionDefense1[i] = 4;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 11;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = -30;
	        recollectionExplosiveResist[i] = -30;
	        recollectionMagicResist[i] = 50;
	        recollectionEnergyResist[i] = 50;
	    }
		
		recollectionBString[1] = "Dream Crawler";
		recollectionBSprite[1] = spr_Dream_Crawler;
		recollectionHealth1[1] = 745;
	    recollectionHealth2[1] = 635;
		
		recollectionBString[8] = "Widow Crawler";
		recollectionBSprite[8] = spr_Venomous_Crawler;
		recollectionHealth1[8] = 840;
	    recollectionHealth2[8] = 720;
	
		recollectionDescription = "Crawls through dimensions. Spawns portals that release intricate bullet patterns.";
		
	}

	if itemVal = "Boss 029" and global.recollectionBoss[29] >= 1 {
	    recollectionBString[0] = "Barrier Demon";
	    recollectionBSprite[0] = reco_Barrier_Demon;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 690;
	        recollectionHealth2[i] = 560;
	        recollectionDefense1[i] = 3;
	        recollectionDefense2[i] = 3;
	        recollectionDanger[i] = 12;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 30;
	        recollectionExplosiveResist[i] = 30;
	        recollectionMagicResist[i] = 30;
	        recollectionEnergyResist[i] = -30;
			
	    }
		
		recollectionBString[1] = "Spiral Demon";
		recollectionBSprite[1] = spr_Spiral_Demon;
		recollectionHealth1[1] = 790;
	    recollectionHealth2[1] = 640;
		
		recollectionBString[8] = "Super Shielded Demon";
		recollectionBSprite[8] = spr_Super_Shielded_Demon;
		recollectionHealth1[8] = 890;
	    recollectionHealth2[8] = 720;
	
		recollectionDescription = "Creates barriers between individuals. Has several attacks that render entire portions of the dreamscape inhospitable.";
		
	}
	
	if itemVal = "Boss 030" and global.recollectionBoss[30] >= 1 {
	    recollectionBString[0] = "Behemoth";
	    recollectionBSprite[0] = reco_Behemoth;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 750;
	        recollectionHealth2[i] = 660;
	        recollectionDefense1[i] = 3;
	        recollectionDefense2[i] = 2;
	        recollectionDanger[i] = 13;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = -30;
	        recollectionExplosiveResist[i] = 50;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
		
		recollectionBString[1] = "Barrage Behemoth";
		recollectionBSprite[1] = spr_Barrage_Behemoth;
		recollectionHealth1[1] = 870;
	    recollectionHealth2[1] = 760;
		
		recollectionBString[2] = "Beam Behemoth";
		recollectionBSprite[2] = spr_Beam_Behemoth;
		recollectionHealth1[2] = 870;
	    recollectionHealth2[2] = 760;
	
		recollectionDescription = "Massive beast found deep within dreams. Releases an onslaught of bullets from its limitless supply of heads.";
		
	}

	if itemVal = "Boss 031" and global.recollectionBoss[31] >= 1 {
	    recollectionBString[0] = "Sleeper x Manifestation";
	    recollectionBSprite[0] = reco_Sleeper;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 400;
	        recollectionHealth2[i] = 450;
	        recollectionDefense1[i] = 2;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 7;
	        recollectionImaginaryResist[i] = 10;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = -25;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Sleeper creates a dream that can manifest itself in a variety of ways.";
	
		recollectionBString[1] = "Sleeper x Wall Manifesto";
		recollectionBSprite[1] = reco_Sleeper;
		recollectionHealth1[1] = 460;
	    recollectionHealth2[1] = 440;
	
	
	}

	if itemVal = "Boss 032" and global.recollectionBoss[32] >= 1 {
	    recollectionBString[0] = "Animated Head";
	    recollectionBSprite[0] = reco_Animated_Head;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 360;
	        recollectionHealth2[i] = 330;
	        recollectionDefense1[i] = 4;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 5;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 30;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = -40;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Reanimated boss, uses the powers of pestilence to create trailing bullets.";
	
		recollectionBString[1] = "Maw Head";
		recollectionBSprite[1] = spr_Maw_Head;
		recollectionHealth1[1] = 410;
	    recollectionHealth2[1] = 370;
	}

	if itemVal = "Boss 033" and global.recollectionBoss[33] >= 1 {
	    recollectionBString[0] = "Chaotic Unrest";
	    recollectionBSprite[0] = reco_Chaotic_Unrest;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 570;
	        recollectionHealth2[i] = 440;
	        recollectionDefense1[i] = 3;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 8;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 30;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 30;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Deadly spirit unable to rest, its soul lingers in this skull. Shoots chaotic magic and can create additional chaos spirits.";

		recollectionBString[1] = "Angry Unrest";
		recollectionBSprite[1] = spr_Angry_Unrest;
		recollectionHealth1[1] = 630;
	    recollectionHealth2[1] = 500;
		recollectionBString[8] = "Demonic Unrest";
		recollectionBSprite[8] = spr_Demonic_Unrest;
		recollectionHealth1[8] = 696;
	    recollectionHealth2[8] = 566;
	}

	if itemVal = "Boss 034" and global.recollectionBoss[34] >= 1 {
	    recollectionBString[0] = "Locust";
	    recollectionBSprite[0] = reco_Locust;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 490;
	        recollectionHealth2[i] = 350;
	        recollectionDefense1[i] = 6;
	        recollectionDefense2[i] = 2;
	        recollectionDanger[i] = 7;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 40;
	        recollectionExplosiveResist[i] = 40;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = -20;
	    }
	
		recollectionDescription = "Bringer of plagues and famine. Creates several clones of itself that cause havoc all over the field.";

	

	}

	if itemVal = "Boss 035" and global.recollectionBoss[35] >= 1 {
	    recollectionBString[0] = "Grim Apparition";
	    recollectionBSprite[0] = reco_Grim_Apparition;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 330;
	        recollectionHealth2[i] = 250;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 2;
	        recollectionDanger[i] = 4;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 25;
	        recollectionMagicResist[i] = -20;
	        recollectionEnergyResist[i] = 25;
	    }
	
		recollectionDescription = "Instills you with a grim feeling. Malicous apparition that channels bursts of dark energy.";
	
		recollectionBString[1] = "Laser Beam Apparition";
		recollectionBSprite[1] = spr_Beam_Apparition;
		recollectionHealth1[1] = 380;
	    recollectionHealth2[1] = 280;
	}

	if itemVal = "Boss 036" and global.recollectionBoss[36] >= 1 {
	    recollectionBString[0] = "Dream Invader";
	    recollectionBSprite[0] = reco_Dream_Invader;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 400;
	        recollectionHealth2[i] = 375;
	        recollectionDefense1[i] = 2;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 6;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 25;
	        recollectionExplosiveResist[i] = 25;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 25;
	    }
	
		recollectionDescription = "Arbiter of invasive thoughts. Can produce tractor beams and stun the soul with advanced techniques. Also has the power to summon meteorites.";

		recollectionBString[1] = "Asteroid Belt Invader";
		recollectionBSprite[1] = spr_Asteroid_Belt_Invader;
		recollectionHealth1[1] = 450;
	    recollectionHealth2[1] = 425;
		recollectionBString[2] = "Laser Invader";
		recollectionBSprite[2] = spr_Laser_Invader;
		recollectionHealth1[2] = 450;
	    recollectionHealth2[2] = 425;
	}

	if itemVal = "Boss 037" and global.recollectionBoss[37] >= 1 {
	    recollectionBString[0] = "Jackhamster";
	    recollectionBSprite[0] = reco_Jackhamster;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 320;
	        recollectionHealth2[i] = 180;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 3;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = -20;
	        recollectionMagicResist[i] = -20;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Pogo stick master, can perform several maneuvers in the air to shower the field in bullets.";

		recollectionBString[1] = "Power Hamster";
		recollectionBSprite[1] = spr_Power_Jackhamster;
		recollectionHealth1[1] = 360;
	    recollectionHealth2[1] = 240;
	
		recollectionBString[2] = "Drill Hamster";
		recollectionBSprite[2] = spr_Asteroid_Belt_Invader;
		recollectionHealth1[2] = 360;
	    recollectionHealth2[2] = 240;
	}
	
	if itemVal = "Boss 038" and global.recollectionBoss[38] >= 1 {
	    recollectionBString[0] = "Crush";
	    recollectionBSprite[0] = reco_Crush;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 475;
	        recollectionHealth2[i] = 400;
	        recollectionDefense1[i] = 1;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 7;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = -20;
	        recollectionExplosiveResist[i] = 40;
	        recollectionMagicResist[i] = -20;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Love hurts, this foe is capable of swinging a large bullet flail that makes the entire field dangerous.";

	}
	
	if itemVal = "Boss 039" and global.recollectionBoss[39] >= 1 {
	    recollectionBString[0] = "Migraine";
	    recollectionBSprite[0] = reco_Migraine;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 550;
	        recollectionHealth2[i] = 550;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 9;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Headache inducing boss. Imagines complex bullet patterns and materializes them instantly.";

	}
	
	if itemVal = "Boss 040" and global.recollectionBoss[40] >= 1 {
	    recollectionBString[0] = "Demonic Villainy";
	    recollectionBSprite[0] = reco_Demonic_Villainy;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 960;
	        recollectionHealth2[i] = 700;
	        recollectionDefense1[i] = 2;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 15;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Evil doer that unleashes pain in a variety of ways.";

	}
	
	if itemVal = "Boss 041" and global.recollectionBoss[41] >= 1 {
	    recollectionBString[0] = "The Veil";
	    recollectionBSprite[0] = reco_The_Veil;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 425;
	        recollectionHealth2[i] = 550;
	        recollectionDefense1[i] = 1;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 11;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 40;
	        recollectionExplosiveResist[i] = 40;
	        recollectionMagicResist[i] = -30;
	    }
		
		recollectionBString[1] = "Chaotic Veil";
		recollectionBSprite[1] = spr_Chaotic_Veil;
		recollectionHealth1[1] = 550;
	    recollectionHealth2[1] = 550;
	
		recollectionDescription = "Evil lurking behind the masks.";
		
	}

	if itemVal = "Boss 042" and global.recollectionBoss[42] >= 1 {
	    recollectionBString[0] = "Pocket";
	    recollectionBSprite[0] = reco_Pocket;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 290;
	        recollectionHealth2[i] = 160;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 2;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = -25;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = -25;
	    }
	
		recollectionDescription = "Sentient pocket dimension, drops bullets across the dreamscape. Can possess inanimate objects and summon more opponents.";

		recollectionBString[1] = "Hot Pocket";
		recollectionBSprite[1] = spr_Hot_Pocket;
		recollectionHealth1[1] = 330;
	    recollectionHealth2[1] = 200;
	
		recollectionBString[2] = "Junk Pocket";
		recollectionBSprite[2] = spr_Junk_Pocket;
		recollectionHealth1[2] = 330;
	    recollectionHealth2[2] = 200;
	
	}

	if itemVal = "Boss 043" and global.recollectionBoss[43] >= 1 {
	    recollectionBString[0] = "Gutter Ball";
	    recollectionBSprite[0] = reco_Gutter_Ball;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 270;
	        recollectionHealth2[i] = 250;
	        recollectionDefense1[i] = 1;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 3;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 30;
	        recollectionExplosiveResist[i] = 20;
	        recollectionMagicResist[i] = -40;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Rolls around the field chasing after the soul. Can perform high scoring attacks.";

		recollectionBString[1] = "Alley Ball";
		recollectionBSprite[1] = spr_Alley_Gutterball;
		recollectionHealth1[1] = 320;
	    recollectionHealth2[1] = 300;
	}
	
	if itemVal = "Boss 045" and global.recollectionBoss[45] >= 1 {
	    recollectionBString[0] = "Tough Luck";
	    recollectionBSprite[0] = reco_Tough_Luck;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 450;
	        recollectionHealth2[i] = 500;
	        recollectionDefense1[i] = 2;
	        recollectionDefense2[i] = 2;
	        recollectionDanger[i] = 8;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 40;
	        recollectionExplosiveResist[i] = 40;
	        recollectionMagicResist[i] = -25;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "6-Sided Boss, each side has unique attack patterns. Rerolls itself every phase.";
		
	}
	
	if itemVal = "Boss 046" and global.recollectionBoss[46] >= 1 {
	    recollectionBString[0] = "Soul Collector";
	    recollectionBSprite[0] = reco_Soul_Collector;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 1070;
	        recollectionHealth2[i] = 850;
	        recollectionDefense1[i] = 3;
	        recollectionDefense2[i] = 3;
	        recollectionDanger[i] = 14;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
		
		recollectionBString[1] = "Spirit Collector";
		recollectionBSprite[1] = spr_Spirit_Collector;
		recollectionHealth1[1] = 1070;
	    recollectionHealth2[1] = 960;
	
		recollectionDescription = "Collection of lost souls trapped in the ooze. Stationary opponent that releases massive amounts of bullets.";

	}
	
	if itemVal = "Boss 047" and global.recollectionBoss[47] >= 1 {
	    recollectionBString[0] = "Twin Horrors";
	    recollectionBSprite[0] = reco_Twin_Horror;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 900;
	        recollectionHealth2[i] = 900;
	        recollectionDefense1[i] = 3;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 14;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "A pair of horrific bosses that get scarier when released.";

	}
	
	if itemVal = "Boss 048" and global.recollectionBoss[48] >= 1 {
	    recollectionBString[0] = "Danger Raiser";
	    recollectionBSprite[0] = reco_Danger_Picker;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 480;
	        recollectionHealth2[i] = 400;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 6;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = -20;
	        recollectionExplosiveResist[i] = 25;
	        recollectionMagicResist[i] = 50;
	        recollectionEnergyResist[i] = -20;
	    }
		
		recollectionBString[8] = "Explosive Danger";
		recollectionBSprite[8] = spr_Explosive_Danger;
		recollectionHealth1[8] = 600;
	    recollectionHealth2[8] = 540;
	
		recollectionDescription = "Sprouts various methods of harming the soul. Has masterful control of bullet movements.";
		
	}
	
	if itemVal = "Boss 049" and global.recollectionBoss[49] >= 1 {
	    recollectionBString[0] = "Mind Corruptor";
	    recollectionBSprite[0] = reco_Mind_Corruptor;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 1080;
	        recollectionHealth2[i] = 720;
	        recollectionDefense1[i] = 4;
	        recollectionDefense2[i] = 3;
	        recollectionDanger[i] = 16;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Immensely powerful boss that can render large portions of the field inhospitable.";

	}
	
	if itemVal = "Boss 050" and global.recollectionBoss[50] >= 1 {
	    recollectionBString[0] = "Wall of Thoughts";
	    recollectionBSprite[0] = reco_Wall_Of_Thoughts;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 650;
	        recollectionHealth2[i] = 650;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 8;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Huge formation of thoughts that attacks the soul with painful rain memories.";

	}

	if itemVal = "Boss 051" and global.recollectionBoss[51] >= 1 {
	    recollectionBString[0] = "Flash Knight";
	    recollectionBSprite[0] = reco_Flash_Knight;
	    recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 530;
	        recollectionHealth2[i] = 350;
	        recollectionHealth3[i] = 200;
	        recollectionDefense1[i] = 2;
	        recollectionDefense2[i] = 1;
	        recollectionDefense3[i] = 0;
	        recollectionDanger[i] = 5;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 10;
	        recollectionDescription = "????";
	    }
	}

	if itemVal = "Boss 052" and global.recollectionBoss[52] >= 1 {
	    recollectionBString[0] = "Sandman";
	    recollectionBSprite[0] = reco_Sandman;
	    recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 500;
	        recollectionHealth2[i] = 1080;
	        recollectionHealth3[i] = 650;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 3;
	        recollectionDefense3[i] = 1;
	        recollectionDanger[i] = 10;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 15;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 15;
	        recollectionEnergyResist[i] = 0;
	        recollectionDescription = "????";
	    }
	}
	
	if itemVal = "Boss 053" and global.recollectionBoss[53] >= 1 {
	    recollectionBString[0] = "Dreamer x Nightmare";
	    recollectionBSprite[0] = reco_Nightmare;
	    recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 990;
	        recollectionHealth2[i] = 2100;
	        recollectionHealth3[i] = 1300;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 3;
	        recollectionDefense3[i] = 3;
	        recollectionDanger[i] = 16;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	        recollectionDescription = "????";
	    }
	}
	
	if itemVal = "Boss 056" and global.recollectionBoss[56] >= 1 {
	    recollectionBString[0] = "Dream Crawler";
	    recollectionBSprite[0] = reco_Dream_Crawler;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 750;
	        recollectionHealth2[i] = 750;
	        recollectionDefense1[i] = 3;
	        recollectionDefense2[i] = 3;
	        recollectionDanger[i] = 9;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "These crawl around feeding off of dreams. Unleashes a barrage of bullets with its many eyes.";

	}

	if itemVal = "Boss 064" and global.recollectionBoss[64] >= 1 {
	    recollectionBString[0] = "Puck";
	    recollectionBSprite[0] = reco_Puck_Man;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 320;
	        recollectionHealth2[i] = 270;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 5;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Weird and unpredictable boss that can shoot looping projectiles.";
	
		recollectionBString[1] = "Dimensional Puck";
		recollectionBSprite[1] = spr_Distorted_Puck;
		recollectionHealth1[1] = 360;
	    recollectionHealth2[1] = 300;
		recollectionBString[8] = "Biter Puck";
		recollectionBSprite[8] = spr_Biter_Man;
		recollectionHealth1[8] = 400;
	    recollectionHealth2[8] = 330;
	}

	if itemVal = "Boss 065" and global.recollectionBoss[65] >= 1 {
	    recollectionBString[0] = "Mass Puck";
	    recollectionBSprite[0] = reco_Mass_Puck;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 450;
	        recollectionHealth2[i] = 250;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 7;
	        recollectionImaginaryResist[i] = 20;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Distorted Boss that shoots looping projectiles all over the place.";
	
		recollectionBString[1] = "Dimensional Mass";
		recollectionBSprite[1] = spr_Dimensional_Mass;
		recollectionHealth1[1] = 500;
	    recollectionHealth2[1] = 300;
		recollectionBString[8] = "Biter Mass";
		recollectionBSprite[8] = spr_Mass_Biter;
		recollectionHealth1[8] = 550;
	    recollectionHealth2[8] = 350;
	}
	
	if itemVal = "Boss 081" and global.recollectionBoss[81] >= 1 {
	    recollectionBString[0] = "Snake Eyes";
	    recollectionBSprite[0] = reco_Snake_Eyes;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 340;
	        recollectionHealth2[i] = 340;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 4;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Slithery Menace, attacks the soul with exotic bullet patterns.";
	
		recollectionBString[1] = "Snake Eyes (Tier 2)";
		recollectionBSprite[1] = spr_Snake_Eyes_Feel;
		recollectionHealth1[1] = 540;
	    recollectionHealth2[1] = 540;
		recollectionBString[2] = "Snake Eyes (Tier 3)";
		recollectionBSprite[2] = spr_Snake_Eyes_Dream;
		recollectionHealth1[2] = 810;
	    recollectionHealth2[2] = 810;
		recollectionDefense1[2] = 1;
		recollectionDefense2[2] = 1;
		recollectionBString[3] = "Snake Eyes (Tier 4)";
		recollectionBSprite[3] = spr_Snake_Eyes_Nightmare;
		recollectionHealth1[3] = 1140;
	    recollectionHealth2[3] = 1140;
		recollectionDefense1[3] = 2;
		recollectionDefense2[3] = 2;
	}
	
	if itemVal = "Boss 082" and global.recollectionBoss[82] >= 1 {
	    recollectionBString[0] = "King of Beasts";
	    recollectionBSprite[0] = reco_King_Of_Beasts;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 300;
	        recollectionHealth2[i] = 300;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 4;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Savage beast, viciously attacks the soul with bite styled moves.";
	
		recollectionBString[1] = "King of Beasts (Tier 2)";
		recollectionBSprite[1] = reco_King_Of_Beasts;
		recollectionHealth1[1] = 500;
	    recollectionHealth2[1] = 500;
		recollectionBString[2] = "King of Beasts (Tier 3)";
		recollectionBSprite[2] = spr_King_Of_Beasts_Dream;
		recollectionHealth1[2] = 760;
	    recollectionHealth2[2] = 760;
		recollectionDefense1[2] = 1;
		recollectionDefense2[2] = 1;
		recollectionBString[3] = "King of Beasts (Tier 4)";
		recollectionBSprite[3] = spr_King_Of_Beasts_Nightmare;
		recollectionHealth1[3] = 1080;
	    recollectionHealth2[3] = 1080;
		recollectionDefense1[3] = 2;
		recollectionDefense2[3] = 2;
	}
	
	if itemVal = "Boss 083" and global.recollectionBoss[83] >= 1 {
	    recollectionBString[0] = "The Construct";
	    recollectionBSprite[0] = reco_The_Construct;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 375;
	        recollectionHealth2[i] = 225;
	        recollectionDefense1[i] = 2;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 4;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Mechanical Construct, piloted by a wicked soul. Flies and attacks with precisely engineered attacks.";
	
		recollectionBString[1] = "The Construct (Tier 2)";
		recollectionBSprite[1] = reco_The_Construct;
		recollectionHealth1[1] = 625;
	    recollectionHealth2[1] = 375;
		recollectionDefense1[1] = 3;
		recollectionDefense2[1] = 2;
		recollectionBString[2] = "The Construct (Tier 3)";
		recollectionBSprite[2] = reco_The_Construct;
		recollectionHealth1[2] = 935;
	    recollectionHealth2[2] = 565;
		recollectionDefense1[2] = 4;
		recollectionDefense2[2] = 3;
		recollectionBString[3] = "The Construct (Tier 4)";
		recollectionBSprite[3] = reco_The_Construct;
		recollectionHealth1[3] = 1315;
	    recollectionHealth2[3] = 805;
		recollectionDefense1[3] = 5;
		recollectionDefense2[3] = 4;
	}
	
	if itemVal = "Boss 086" and global.recollectionBoss[86] >= 1 {
	    recollectionBString[0] = "Bed Bugs";
	    recollectionBSprite[0] = reco_Bed_Bug;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 200;
	        recollectionHealth2[i] = 200;
	        recollectionDefense1[i] = 5;
	        recollectionDefense2[i] = 5;
	        recollectionDanger[i] = 4;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Spikey Fiend, jumps around and spawns swarms of bed bugs to terrorize the soul.";
	
		recollectionBString[1] = "Bed Bugs (Tier 2)";
		recollectionBSprite[1] = spr_Bed_Bug_Feel;
		recollectionHealth1[1] = 325;
	    recollectionHealth2[1] = 325;
		recollectionDefense1[1] = 6;
		recollectionDefense2[1] = 6;
		recollectionBString[2] = "Bed Bugs (Tier 3)";
		recollectionBSprite[2] = spr_Bed_Bug_Dream;
		recollectionHealth1[2] = 485;
	    recollectionHealth2[2] = 485;
		recollectionDefense1[2] = 8;
		recollectionDefense2[2] = 8;
		recollectionBString[3] = "Bed Bugs (Tier 4)";
		recollectionBSprite[3] = spr_Bed_Bug_Nightmare;
		recollectionHealth1[3] = 705;
	    recollectionHealth2[3] = 705;
		recollectionDefense1[3] = 11;
		recollectionDefense2[3] = 11;
	}
	
	if itemVal = "Boss 087" and global.recollectionBoss[87] >= 1 {
	    recollectionBString[0] = "Dungeon Executioner";
	    recollectionBSprite[0] = reco_Dungeon_Master;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 300;
	        recollectionHealth2[i] = 270;
	        recollectionDefense1[i] = 1;
	        recollectionDefense2[i] = 1;
	        recollectionDanger[i] = 4;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Powerful knight. Uses it's axe to deal punishment with quick moves.";
	
		recollectionBString[1] = "Dungeon Executioner (Tier 2)";
		recollectionBSprite[1] = reco_Dungeon_Master;
		recollectionHealth1[1] = 500;
	    recollectionHealth2[1] = 460;
		recollectionDefense1[1] = 2;
		recollectionDefense2[1] = 2;
		recollectionBString[2] = "Dungeon Executioner (Tier 3)";
		recollectionBSprite[2] = reco_Dungeon_Master;
		recollectionHealth1[2] = 760;
	    recollectionHealth2[2] = 710;
		recollectionDefense1[2] = 3;
		recollectionDefense2[2] = 3;
		recollectionBString[3] = "Dungeon Executioner (Tier 4)";
		recollectionBSprite[3] = reco_Dungeon_Master;
		recollectionHealth1[3] = 1080;
	    recollectionHealth2[3] = 1010;
		recollectionDefense1[3] = 4;
		recollectionDefense2[3] = 4;
	}
	
	if itemVal = "Boss 089" and global.recollectionBoss[89] >= 1 {
	    recollectionBString[0] = "Sleep Caster";
	    recollectionBSprite[0] = reco_Sleep_Caster;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 330;
	        recollectionHealth2[i] = 330;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 4;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 0;
	        recollectionMagicResist[i] = 0;
	        recollectionEnergyResist[i] = 0;
	    }
	
		recollectionDescription = "Trickey Spellcaster. Uses spells to make the soul fall alseep, and create strange bullet patterns.";
	
		recollectionBString[1] = "Sleep Caster (Tier 2)";
		recollectionBSprite[1] = spr_Sleep_Caster_Feel;
		recollectionHealth1[1] = 540;
	    recollectionHealth2[1] = 540;
		recollectionBString[2] = "Sleep Caster (Tier 3)";
		recollectionBSprite[2] = spr_Sleep_Caster_Dream;
		recollectionHealth1[2] = 815;
	    recollectionHealth2[2] = 815;
		recollectionDefense1[2] = 1;
		recollectionDefense2[2] = 1;
		recollectionBString[3] = "Sleep Caster (Tier 4)";
		recollectionBSprite[3] = spr_Sleep_Caster_Nightmare;
		recollectionHealth1[3] = 1165;
	    recollectionHealth2[3] = 1165;
		recollectionDefense1[3] = 1;
		recollectionDefense2[3] = 1;
	}

	if itemVal = "Boss 098" and global.recollectionBoss[98] >= 1 {
	    recollectionBString[0] = "Spirit of Mischief";
	    recollectionBSprite[0] = reco_Spirit_of_Mischief;
		recollectionSize = 144 / sprite_get_width(recollectionBSprite[0]);
	    for(i = 0; i < 10; i++) {
	        recollectionHealth1[i] = 190;
	        recollectionHealth2[i] = 130;
	        recollectionDefense1[i] = 0;
	        recollectionDefense2[i] = 0;
	        recollectionDanger[i] = 2;
	        recollectionImaginaryResist[i] = 0;
	        recollectionSharpResist[i] = 0;
	        recollectionExplosiveResist[i] = 30;
	        recollectionMagicResist[i] = 30;
	        recollectionEnergyResist[i] = -10;
	    }
	
		recollectionDescription = "Covers the screen in mischief.";
	
		recollectionBString[1] = "Spirit of Maelstrom";
		recollectionBSprite[1] = spr_Maelstrom_Spirit;
		recollectionHealth1[1] = 220;
	    recollectionHealth2[1] = 160;
		recollectionBString[2] = "Spirit of Warping";
		recollectionBSprite[2] = spr_Warping_Spirit;
		recollectionHealth1[2] = 220;
	    recollectionHealth2[2] = 160;
		recollectionBString[8] = "Spirit of Chaos";
		recollectionBSprite[8] = spr_Chaos_Spirit;
		recollectionHealth1[8] = 250;
	    recollectionHealth2[8] = 190;
	}
	*/

	


}
