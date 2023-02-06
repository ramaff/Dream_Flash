instance_destroy(obj_Recollection_Butt);
instance_destroy(obj_Recollection_Info_Butt);

with(obj_Recollection_Butt) {
	instance_destroy();	
}
with(obj_Recollection_Info_Butt) {
	instance_destroy();	
}

with (obj_Recollection_Category_Butt) {
	selected = false;
}

numOfButts = 0;
if cat = 1 {
    global.recollectCategory = "Weapons";
    numOfButts = 93;
}
if cat = 2 {
    global.recollectCategory = "Items";
    numOfButts = 273;
}
if cat = 3 {
    global.recollectCategory = "Bosses";
    numOfButts = 100;
}
if global.recollectionStateUnlocked = 1 {
if cat = 4 {
    global.recollectCategory = "State";
    numOfButts = 10;
}
if cat = 5 {
    global.recollectCategory = "Information";
	numOfButts = 27;
}
} else {
	if cat = 4 {
		global.recollectionCategory = "Information";	
		numOfButts = 27;
	}
}

buttNum = 0;

if global.recollectCategory = "Weapons" {
    for(i = 1; i <= (numOfButts / 3); i++) {
        for(j = 0; j < 3; j++) {
            buttNum++
            with instance_create(camera_get_view_x(view) + 144 + 90 * j,camera_get_view_y(view) + 112 + 96 * i,obj_Recollection_Butt) {
                buttNum = other.buttNum;
                scr_Recollection_Panel_Assign();
				scr_Assign_Memory();
            }
        }
    }
	if cat = 1 {
		selected = true;	
	} 
}

if global.recollectCategory = "Items" {
    for(i = 1; i <= (numOfButts / 3); i++) {
        for(j = 0; j < 3; j++) {
            with instance_create(camera_get_view_x(view) + 144 + 90 * j,camera_get_view_y(view) + 112 + 96 * i,obj_Recollection_Butt) {
                buttNum = other.buttNum;
                scr_Recollection_Panel_Assign();
				scr_Assign_Memory();
            }
            buttNum++;
        }
    }
	if cat = 2 {
		selected = true;	
	} 
}

buttNum = 1;

if global.recollectCategory = "Bosses" {
    for(i = 1; i <= (numOfButts / 1); i++) {
        for(j = 0; j < 1; j++) {
            with instance_create(camera_get_view_x(view) + 176 + 160 * j,camera_get_view_y(view) + 168 + 80 * i,obj_Recollection_Butt) {
				if other.i mod 2 = 0 {
					x += 120;
				}
				sprite_index = spr_Boss_Border;
                buttNum = other.buttNum;
                scr_Recollection_Panel_Assign();
				scr_Assign_Memory();
            }
            buttNum++;
        }
    }
	if cat = 3 {
		selected = true;	
	} 
}

if global.recollectCategory = "State" {
    for(i = 1; i <= (numOfButts / 1); i++) {
        for(j = 0; j < 1; j++) {
            with instance_create(camera_get_view_x(view) + 176 + 160 * j,camera_get_view_y(view) + 168 + 80 * i,obj_Recollection_Butt) {
				if other.i mod 2 = 0 {
					x += 120;
				}
                sprite_index = spr_Boss_Border;
                buttNum = other.buttNum;
                scr_Recollection_Panel_Assign();
				scr_Assign_Memory();
            }
            buttNum++;
        }
    }
	if cat = 4 {
		selected = true;	
	} 
}

if global.recollectCategory = "Information" {
    for(i = 1; i <= (numOfButts / 1); i++) {
        for(j = 0; j < 1; j++) {
            with instance_create(camera_get_view_x(view) + 176 + 160 * j,camera_get_view_y(view) + 168 + 80 * i,obj_Recollection_Butt) {
				if other.i mod 2 = 0 {
					x += 120;
				}
                sprite_index = spr_Boss_Border;
                buttNum = other.buttNum;
                scr_Recollection_Panel_Assign();
				scr_Assign_Memory();
            }
            buttNum++;
        }
    }
	if cat = 5 {
		selected = true;	
	} 
}

if !instance_exists(obj_Recollection_Scroll_Bar) {
	instance_create(camera_get_view_x(view) + 80,camera_get_view_y(view) + 144,obj_Recollection_Scroll_Bar);
}