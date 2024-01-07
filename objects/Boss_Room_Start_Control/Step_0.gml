if ((global.bosscount <= 0) and (global.spiritRoom != global.currentroom) and (global.evilSpiritRoom != global.currentroom)) and instance_number(obj_Boss_Parent) = 0 {
    
    scr_Room_End();
    var roomType = global.floor[global.currentroom,0];
	
    if fieldSpawn = 0 {
		
		scr_Boss_Beat();
		
		scr_Boss_Item_Field(roomType);
		
		//////////////////// For save files
		
		var initAmount = 0;
		var giveFac = 1;

		initAmount = ((global.soulhope + global.soulhopeTemp) / 10) + 1 + (difficulty * giveFac);
		if global.currentchapter = 1 {
			initAmount = initAmount * giveFac * 2;
			global.soulflash += floor(initAmount);
		}
		
		if global.currentchapter = 2 {
			initAmount = initAmount * giveFac;
			global.soulfeel += floor(initAmount);
		}
		
		if global.currentchapter = 3 {
			initAmount = initAmount * giveFac * (2/3);
			global.souldream += floor(initAmount);
		}
		
		if instance_exists(obj_Soul_Spiritual) {
			with(obj_Soul_Spiritual) {
				if spirit = "Hope" {
				    global.soulhope++;
				}
				if spirit = "Bliss" {
				    global.soulbliss++;
				}
				if spirit = "Vanity" {
				    global.soulvanity++;
				}
				if spirit = "Loathing" {
				    global.soulloathing++;
				}
				if spirit = "Paranoia" {
				    global.soulparanoia++;
				}
				if spirit = "Despair" {
				    global.souldespair++;
				}
			}
		}
		
        scr_Save();
		
		if instance_exists(obj_Soul_Spiritual) {
			with(obj_Soul_Spiritual) {
				if spirit = "Hope" {
				    global.soulhope--;
				}
				if spirit = "Bliss" {
				    global.soulbliss--;
				}
				if spirit = "Vanity" {
				    global.soulvanity--;
				}
				if spirit = "Loathing" {
				    global.soulloathing--;
				}
				if spirit = "Paranoia" {
				    global.soulparanoia--;
				}
				if spirit = "Despair" {
				    global.souldespair--;
				}
			}
		}
		
		if global.currentchapter = 1 {
			global.soulflash -= floor(initAmount);
		}
		if global.currentchapter = 2 {
			global.soulfeel -= floor(initAmount);
		}
		if global.currentchapter = 3 {
			global.souldream -= floor(initAmount);
		}
        
    } else {
		scr_Stat_Field_Chain_Check();
	}   
} 

MThealth = 0;
chealth = 0;
with(obj_Main_Boss_Parent) {
    if currentphase = 2 {
        other.MThealth += bossmaxhealth;
        other.chealth += bosshealth;
    } else {
        other.MThealth += bossmaxhealth;
        other.MThealth += bossmaxhealth2;
        other.chealth += bosshealth;
        other.chealth += bossmaxhealth2;
    }
}
var spiritSend = 0 
if (chealth < MThealth / 4) {
    spiritSend = 1;
}


if instance_number(obj_Boss_Parent) = 0 and global.bosscount <= 0 {
	if global.spiritRoom = global.currentroom {
	    boss = global.floor[global.currentroom,25];
	    scr_Spirit_Summon(boss);
	    global.spiritRoom = 0;
	}
	if global.evilSpiritRoom = global.currentroom {
	    boss = global.floor[global.currentroom,26];
	    scr_Spirit_Summon(boss);
	    global.evilSpiritRoom = 0;
	}

	if global.spiritRoom = global.currentroom { 
	    global.spiritRoom = 0;
	}
}
