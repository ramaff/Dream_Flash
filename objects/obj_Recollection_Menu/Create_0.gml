global.recollectCategory = 0;
global.recollectValue = 0;
global.recollectDisplayValue = 0;
var categoryNum = 4;

if global.recollectionStateUnlocked = 1 {
	categoryNum++;	
}

for(i = 1; i <= categoryNum; i++) {
    with instance_create(camera_get_view_x(view) - 48 + 132 * i,camera_get_view_y(view) + 24,obj_Recollection_Category_Butt) {
        cat = other.i;
    }
}

with instance_create(camera_get_view_x(view),camera_get_view_y(view), obj_Recollection_Full_Cloud) {
	depth = -1;	
}

