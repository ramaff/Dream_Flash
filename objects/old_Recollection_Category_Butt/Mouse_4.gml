instance_destroy(obj_Recollection_Butt);
instance_destroy(obj_Recollection_Info_Butt);

numOfButts = 0;
if cat = 1 {
    global.recollectCategory = "Weapons";
    numOfButts = 93;
}
if cat = 2 {
    global.recollectCategory = "Items";
    numOfButts = 261;
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
            with instance_create(camera_get_view_x(view) + 120 + 96 * j,camera_get_view_y(view) + 112 + 96 * i,obj_Recollection_Butt) {
                buttNum = other.buttNum;
                scr_Recollection_Panel_Assign();
            }
        }
    }
}

if global.recollectCategory = "Items" {
    for(i = 1; i <= (numOfButts / 3); i++) {
        for(j = 0; j < 3; j++) {
            with instance_create(camera_get_view_x(view) + 120 + 96 * j,camera_get_view_y(view) + 112 + 96 * i,obj_Recollection_Butt) {
                buttNum = other.buttNum;
                scr_Recollection_Panel_Assign();
            }
            buttNum++;
        }
    }
}

buttNum = 1;

if global.recollectCategory = "Bosses" {
    for(i = 1; i <= (numOfButts / 1); i++) {
        for(j = 0; j < 1; j++) {
            with instance_create(camera_get_view_x(view) + 176 + 160 * j,camera_get_view_y(view) + 88 + 160 * i,obj_Recollection_Butt) {
                sprite_index = spr_Menu_Boss_Cloud;
                buttNum = other.buttNum;
                scr_Recollection_Panel_Assign();
            }
            buttNum++;
        }
    }
}

if global.recollectCategory = "State" {
    for(i = 1; i <= (numOfButts / 1); i++) {
        for(j = 0; j < 1; j++) {
            with instance_create(camera_get_view_x(view) + 176 + 160 * j,camera_get_view_y(view) + 88 + 160 * i,obj_Recollection_Butt) {
                sprite_index = spr_Menu_Boss_Cloud;
                buttNum = other.buttNum;
                scr_Recollection_Panel_Assign();
            }
            buttNum++;
        }
    }
}

if global.recollectCategory = "Information" {
    for(i = 1; i <= (numOfButts / 1); i++) {
        for(j = 0; j < 1; j++) {
            with instance_create(camera_get_view_x(view) + 176 + 160 * j,camera_get_view_y(view) + 88 + 160 * i,obj_Recollection_Butt) {
                sprite_index = spr_Menu_Boss_Cloud;
                buttNum = other.buttNum;
                scr_Recollection_Panel_Assign();
            }
            buttNum++;
        }
    }
}

if !instance_exists(obj_Recollection_Scroll_Bar) {
	instance_create(camera_get_view_x(view) + 32,camera_get_view_y(view) + 144,obj_Recollection_Scroll_Bar);
}