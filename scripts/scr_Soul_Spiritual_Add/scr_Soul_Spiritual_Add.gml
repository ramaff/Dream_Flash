function scr_Soul_Spiritual_Add() {
	var giveFac = 1;
	spirit = argument[0];

	if spirit = "Hope" || spirit = "Bliss" || spirit = "Vanity" {
	    repeat(5) {
	        with instance_create(x,y,obj_Soul_Spiritual) {
	            spirit = other.spirit;
	            direction = random(360);
	            speed = 1 + random(4);
	            friction = 0.1
	            alarm[0] = 45 + random(10);
	        }
	    }
	    global.goodSpirits++;
	    if global.goodSpirits = 1 and global.badSpirits = 0 {
	        badSpiritRoom = global.currentroom + 1;
	        for(i = badSpiritRoom; i <= global.maxRooms; i++) {
	            if Floor_Layout_Control.Flash[i,0] = "Boss" {
	                badSpiritRoom = i;
	                break;
	            }
	        }
	        Floor_Layout_Control.Flash[badSpiritRoom,26] = scr_Spirit_Choose("Bad");
	         Floor_Layout_Control.Flash[badSpiritRoom,3] += 128;
	        global.evilSpiritRoom = badSpiritRoom;
	    }
	}

	if spirit = "Despair" || spirit = "Paranoia" || spirit = "Loathing" {
	    repeat(3) {
	        with instance_create(x,y,obj_Soul_Spiritual) {
	            spirit = other.spirit;
	            direction = random(360);
	            speed = 1 + random(4);
	            friction = 0.1
	            alarm[0] = 45 + random(10);
	        }
	    }
	    global.badSpirits++;
	}
	
	if global.spiritTutorial = 0 {
		instance_create(x,y,obj_Spirit_Note);	
	}



}
