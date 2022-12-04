// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Stat_Item_Extra_Stats(){

	var rememberance = scr_Item_Memory_Count(itemVal)

	if rememberance >= 1 {
		var recoGroup = string_letters(itemVal);
	
	
		if recoGroup == "I" || itemVal == "A00" || itemVal == "B00" || itemVal == "C00" || itemVal == "D00" || itemVal == "E00" || itemVal == "F00" {
			recollectionExtraStats = "";
			var statUpString = "";
			var statStart = global.soulstrength;
			var valUp = 5;
			var fieldSpawnChar = "";
		
			if itemVal = "A00" {
				statStart = global.soulstrength;
				valUp = 5;
				statUpString = "Strength";
				if statStart + valUp >= global.strFieldSpawn {
					fieldSpawnChar = "!"	
				}
			}
			if itemVal = "B00" {
				statStart = global.soulvitality;
				valUp = 5;
				statUpString = "Vitality";
				if statStart + valUp >= global.vitFieldSpawn {
					fieldSpawnChar = "!"	
				}
			}
			if itemVal = "C00" {
				statStart = global.soulessence;
				valUp = 5;
				statUpString = "Essence";
				if statStart + valUp >= global.essFieldSpawn {
					fieldSpawnChar = "!"	
				}
			}
			if itemVal = "D00" {
				statStart = global.souldexterity;
				valUp = 5;
				statUpString = "Dexterity";
				if statStart + valUp >= global.dexFieldSpawn {
					fieldSpawnChar = "!"	
				}
			}
			if itemVal = "E00" {
				statStart = global.soulperception;
				valUp = 5;
				statUpString = "Perception";
				if statStart + valUp >= global.perFieldSpawn {
					fieldSpawnChar = "!"	
				}
			}
			if itemVal = "F00" {
				statStart = global.soulstate;
				valUp = 5;
				statUpString = "State";
				if statStart + valUp >= global.staFieldSpawn {
					fieldSpawnChar = "!"	
				}
			}
		
			if recoGroup = "I" {
		
				var emNum = string_digits(itemVal)
				var spirNum = 1 + ((emNum - 1) mod 6);
				var valUp = 2;
		
				if spirNum = 2 {
					valUp = 3
				}
				if spirNum = 3 {
					valUp = 4;	
				}
				if spirNum = 4 {
					valUp = 6;	
				}
				if spirNum = 5 {
					valUp = 7;	
				}
				if spirNum = 6 {
					valUp = 8;	
				}
		
				if emNum > 0 and emNum <= 6 {
					statUpString = "Strength";
					statStart = global.soulstrength;
					if statStart + valUp >= global.strFieldSpawn {
						fieldSpawnChar = "!"	
					}
				}
				if emNum > 6 and emNum <= 12 {
					statUpString = "Vitality";
					statStart = global.soulvitality;
					if statStart + valUp >= global.vitFieldSpawn {
						fieldSpawnChar = "!"	
					}
				}
				if emNum > 12 and emNum <= 18 {
					statUpString = "Essence";
					statStart = global.soulessence;
					if statStart + valUp >= global.essFieldSpawn {
						fieldSpawnChar = "!"	
					}
				}
				if emNum > 18 and emNum <= 24 {
					statUpString = "Dexterity";
					statStart = global.souldexterity;
					if statStart + valUp >= global.dexFieldSpawn {
						fieldSpawnChar = "!"	
					}
				}
				if emNum > 24 and emNum <= 30 {
					statUpString = "Perception";
					statStart = global.soulperception;
					if statStart + valUp >= global.perFieldSpawn {
						fieldSpawnChar = "!"	
					}
				}
				if emNum > 30 and emNum <= 36 {
					statUpString = "State";
					statStart = global.soulstate;
					if statStart + valUp >= global.staFieldSpawn {
						fieldSpawnChar = "!"	
					}
				}
				recollectionExtraStats += string(statUpString) + ": " + string(statStart) + "->" + string(statStart + valUp) + fieldSpawnChar + "\n";
				//recollectionExtraStats += string(statUpString) + ": " + string(statStart) + " + " + string(valUp) + " = " + string(statStart + valUp) + "\n";
				fieldSpawnChar = "";
		
				if spirNum = 1 {
					statStart = global.soulhope;
					valUp = 4;
					statUpString = "Hope";
					if statStart + valUp >= global.hopFieldSpawn {
						fieldSpawnChar = "!"	
					}
				}
				if spirNum = 2 {
					statStart = global.soulbliss;
					valUp = 4;
					statUpString = "Bliss";
					if statStart + valUp >= global.blsFieldSpawn {
						fieldSpawnChar = "!"	
					}
				}
				if spirNum = 3 {
					statStart = global.soulvanity;
					valUp = 4;
					statUpString = "Assurance";
					if statStart + valUp >= global.assFieldSpawn {
						fieldSpawnChar = "!"	
					}
				}
				if spirNum = 4 {
					statStart = global.soulloathing;
					valUp = 4;
					statUpString = "Loathing";
					if statStart + valUp >= global.loaFieldSpawn {
						fieldSpawnChar = "!"	
					}
				}
				if spirNum = 5 {
					statStart = global.soulparanoia;
					valUp = 4;
					statUpString = "Paranoia";
					if statStart + valUp >= global.parFieldSpawn {
						fieldSpawnChar = "!"	
					}
				}
				if spirNum = 6 {
					statStart = global.souldespair;
					valUp = 4;
					statUpString = "Despair";
					if statStart + valUp >= global.desFieldSpawn {
						fieldSpawnChar = "!"	
					}
				}
		
			}
	
			recollectionExtraStats += string(statUpString) + ": " + string(statStart) + "->" + string(statStart + valUp) + fieldSpawnChar;
			//recollectionExtraStats += string(statUpString) + ": " + string(statStart) + " + " + string(valUp) + " = " + string(statStart + valUp);
		}
	}

}