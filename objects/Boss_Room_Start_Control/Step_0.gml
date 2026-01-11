//scr_Room_Effect_Step();

//if ((global.bosscount <= 0) and (global.spiritRoom != global.currentroom) and (global.evilSpiritRoom != global.currentroom)) and instance_number(obj_Boss_Parent) = 0 {

if scr_Room_Leavable() {  
	scr_Room_End();
	var roomType = global.floor[global.currentroom,0];
	
	if fieldSpawn = 0 {
		
		scr_Boss_Beat();
		
		scr_Boss_Item_Field(roomType);
		
		//////////////////// For save files
		
		var initAmount = 0;
		var giveFac = 1;
		
		scr_Collect_Income()
		
	    scr_Save();
        
	} else {
		scr_Stat_Field_Chain_Check();
	}  
}

var MThealth = 0;
var chealth = 0;
with(obj_Main_Boss_Parent) {
    if currentphase = 2 {
        MThealth += bossmaxhealth;
        chealth += bosshealth;
    } else {
        MThealth += bossmaxhealth;
        MThealth += bossmaxhealth2;
        chealth += bosshealth;
        chealth += bossmaxhealth2;
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
