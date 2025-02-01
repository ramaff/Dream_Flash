var camX = camera_get_view_x(view) + (camera_get_view_width(view) / 2);
var camY = camera_get_view_y(view) + (camera_get_view_height(view) / 2);

for(i = 1; i <= 6; i++) {
    with instance_create(camX - 548 + 64 * i,camY - 96,obj_Soul_Stat_Meter) {
        stat = other.i;
    }
    with instance_create(camX - 548 + 64 * i,camY + 16,obj_Soul_Stat_Meter) {
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

for(i = 1; i <= ceil(numOfButts / 6); i++) {
	var jj = 6 + (i mod 2);
    for(j = 0; j < jj; j++) {
        buttNum++
        if buttNum <= numOfButts {
            with instance_create(camX + 80 * j,camY - 256 + 64 * i,obj_Item_Butt) {
				if jj = 6 {
					x += 40	
				}
                itemVal = other.soulItems[other.buttNum];
				recollectionUpgrade = other.soulItemCount[other.buttNum];
            }
        }
    }
}
    
    
with instance_create(camX - 432,camY - 224,obj_Soul_Stat_Calc_Icon) {
    statVal = "Health";
	depth = other.depth - 10;
}
with instance_create(camX - 304,camY - 224,obj_Soul_Stat_Calc_Icon) {
    statVal = "Power";
	depth = other.depth - 10;
}
with instance_create(camX - 176,camY - 224,obj_Soul_Stat_Calc_Icon) {
    statVal = "Essence";
	depth = other.depth - 10;
}
with instance_create(camX - 368,camY - 160,obj_Soul_Stat_Calc_Icon) {
    statVal = "Dexterity";
	depth = other.depth - 10;
}
with instance_create(camX - 240,camY - 160,obj_Soul_Stat_Calc_Icon) {
    statVal = "Perception";
	depth = other.depth - 10;
}

if scr_State_Recollection_Unlocked() {
	with instance_create(camX - 352,camY + 240,obj_Back_To_Soul_Menu_Button) {
	}
	with instance_create(camX - 256,camY + 240,obj_State_Menu_Button) {
	}		
} else {
	with instance_create(camX - 288,camY + 240,obj_Back_To_Soul_Menu_Button) {
	}
}
