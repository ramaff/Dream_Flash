var camX = camera_get_view_x(view) + (camera_get_view_width(view) / 2);
var camY = camera_get_view_y(view) + (camera_get_view_height(view) / 2);

for(i = 1; i <= 6; i++) {
    with instance_create(camX - 512 + 64 * i,camY - 240,obj_Soul_Stat_Meter) {
        stat = other.i;
    }
    with instance_create(camX - 512 + 64 * i,camY - 128,obj_Soul_Stat_Meter) {
        stat = other.i + 6;
    }
}

numOfButts = 0;
buttNum = 0;
soulItems[numOfButts] = 0;
soulItemCount[numOfButts] = 0;

scr_Soul_Item_Assign();

if numOfButts > 200 {
	numOfButts = 200;	
}

for(i = 1; i <= ceil(numOfButts / 12); i++) {
        for(j = 0; j < 12; j++) {
            buttNum++
            if buttNum <= numOfButts {
                with instance_create(camX - 460 + 80 * j,camY - 12 + 80 * i,obj_Item_Butt) {
                    itemVal = other.soulItems[other.buttNum];
					recollectionUpgrade = other.soulItemCount[other.buttNum];
                }
            }
        }
    }
    
    
with instance_create(camX + 88,camY - 120,obj_Soul_Stat_Calc_Icon) {
    statVal = "Health";
}
with instance_create(camX + 216,camY - 120,obj_Soul_Stat_Calc_Icon) {
    statVal = "Power";
}
with instance_create(camX + 344,camY - 120,obj_Soul_Stat_Calc_Icon) {
    statVal = "Essence";
}
with instance_create(camX + 152,camY - 56,obj_Soul_Stat_Calc_Icon) {
    statVal = "Dexterity";
}
with instance_create(camX + 280,camY - 56,obj_Soul_Stat_Calc_Icon) {
    statVal = "Perception";
}

if global.recollectionStateUnlocked = 1 {
	with instance_create(camX + 168,camY - 208,obj_Back_To_Soul_Menu_Button) {
	}
	with instance_create(camX + 264,camY - 208,obj_State_Menu_Button) {
	}		
} else {
	with instance_create(camX + 216,camY - 208,obj_Back_To_Soul_Menu_Button) {
	}
}
