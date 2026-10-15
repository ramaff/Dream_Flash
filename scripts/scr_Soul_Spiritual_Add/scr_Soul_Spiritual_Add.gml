enum SPIRIT_TYPE {
    HOPE,
    BLISS,
    VANITY,
    DESPAIR,
    PARANOIA,
    LOATHING
}

function scr_Soul_Spiritual_Add(_spirit) {
	if _spirit = SPIRIT_TYPE.HOPE || _spirit = SPIRIT_TYPE.BLISS || _spirit = SPIRIT_TYPE.VANITY {
	    repeat(5) {
	        with instance_create_depth(x,y,0,obj_Soul_Spiritual) {
	            spirit = _spirit;
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
	            if global.floor[i,0] = "Boss" {
	                badSpiritRoom = i;
	                break;
	            }
	        }
	        global.floor[badSpiritRoom,26] = scr_Spirit_Choose(true);
	        global.evilSpiritRoom = badSpiritRoom;
	    }
	}

	if _spirit = SPIRIT_TYPE.DESPAIR || _spirit = SPIRIT_TYPE.PARANOIA || _spirit = SPIRIT_TYPE.LOATHING {
	    repeat(3) {
	        with instance_create_depth(x,y,0,obj_Soul_Spiritual) {
	            spirit = _spirit;
	            direction = random(360);
	            speed = 1 + random(4);
	            friction = 0.1
	            alarm[0] = 45 + random(10);
	        }
	    }
	    global.badSpirits++;
	}
	
	scr_Tutorial_Note_Spawn("spirit_tutorial")
}
