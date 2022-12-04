global.itemFieldSpeed[0] = 0.9;
global.itemFieldSpeed[1] = 0.7;
global.itemFieldSpeed[2] = 0.7;
global.itemFieldSpeed[3] = 0.7;
global.itemFieldSpeed[999] = 0;

global.currentOrbit = 500;

with(obj_Item_Parent) {
    if distance_to_object(obj_Astral_Indicator) < 30 {
        global.currentOrbit = itemOrbit;
    }
}

global.itemFieldSpeed[global.currentOrbit] = 0.03;

scr_Item_Field_Push(5);

if instance_number(obj_Item_Parent) = 0 and fieldActive = 1 {
    alarm[0] = 60;
	fieldActive = 0;
}

if fieldActive = 0 {
	image_xscale -= 1 / 120;
	image_yscale -= 1 / 120;
}

y = starty - 20 + scr_Wave(-20, 20, 5, 0);